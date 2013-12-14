#include "stm32f10x.h"

// loosely based on
// http://www.overtracks.com/stm32/baby-steps.htm
// http://dics.voicecontrol.ro/dicsEE-IP/chapter/Setting%20GPIO%20manually
// http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0497a/BGBEEJHC.html
// https://forum.sparkfun.com/viewtopic.php?f=11&t=21107
// http://en.radzio.dxp.pl/stm32vldiscovery/

// LED is connected to PC0, so first bit on GPIOC
#define LED_BITMASK          1 << 0 // bit 0

#define USE_SYSTICK

#ifdef USE_SYSTICK
void SysTick_Handler(void) {
  GPIOC->ODR ^= LED_BITMASK; // toggle LED state
}
#else
void TIM3_IRQHandler(void) {
  // why the check for UIF ?
  if (TIM3->SR & TIM_SR_UIF) // if UIF flag is set
  {
    TIM3->SR &= ~TIM_SR_UIF; // clear UIF flag
    GPIOC->ODR ^= LED_BITMASK; // toggle LED state
  }
}
#endif

int main() {

  // enable GPIOC
  RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;
  // configure GPIOC port 0 as output; 4 bits per pin
  // 4+0 -> (0) input mode, (4) floating (reset state)
  // 0+2 -> (2) output mode, (0) generic push-pull
  GPIOC->CRL = 0x44444442;

#ifdef USE_SYSTICK
  // 1 second = 72000000 / 8000000 = 9000000
  SysTick->LOAD = 9000000;
  // start counting from zero
  SysTick->VAL = 0;
  // enable and enable interrupt
  SysTick->CTRL |= (SysTick_CTRL_ENABLE_Msk | SysTick_CTRL_TICKINT_Msk);
#else
  // enable clock for timer3
  RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
  // Set prescaler to 24 000 (PSC + 1) // why?
  TIM3->PSC = 23999;
  // // Auto reload value 1000
  TIM3->ARR = 1000;
  // Enable update interrupt (timer level)
  TIM3->DIER = TIM_DIER_UIE; // Enable update interrupt (timer level)
  TIM3->CR1 = TIM_CR1_CEN;   // Enable timer

  NVIC_EnableIRQ(TIM3_IRQn);
#endif

  // sleep till the end of time
  while (1) { __WFI(); }
  return 0;
}
