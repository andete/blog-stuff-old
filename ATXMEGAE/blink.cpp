// (C) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL3

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

static void usart_write(uint8_t data)
{
    USARTD0.DATA = data;
    if(!(USARTD0.STATUS & USART_DREIF_bm)) {
        while(!(USARTD0.STATUS & USART_TXCIF_bm)); // wait for TX complete
    }
    USARTD0.STATUS |= USART_TXCIF_bm;  // clear TX interrupt flag
}


static inline void init_oscillator() {
  // enable 32Mhz internal oscillator
  OSC.CTRL |= OSC_RC32MEN_bm;
  // wait for it to be stable
  while (!(OSC.STATUS & OSC_RC32MRDY_bm)); 
  // tell the processor we want to change a protected register
  CCP=CCP_IOREG_gc;
  // and start using the 32Mhz oscillator
  CLK.CTRL=CLK_SCLKSEL_RC32M_gc; 
  // disable the default 2Mhz oscillator
  OSC.CTRL&=(~OSC_RC2MEN_bm);
  // enable 32kHz calibrated internal oscillator
  OSC.CTRL|= OSC_RC32KEN_bm;
  while (!(OSC.STATUS & OSC_RC32KRDY_bm)); 
  // set bit to 0 to indicate we use the internal 32kHz
  // callibrated oscillator as auto-calibration source
  // for our 32Mhz oscillator
  OSC.DFLLCTRL = OSC_RC32MCREF_RC32K_gc;
  // enable auto-calibration for the 32Mhz oscillator
  DFLLRC32M.CTRL |= DFLL_ENABLE_bm; 
}

static inline void init_usart() {
  // enable clock out on port PC7
  PORTCFG.CLKOUT = (PORTCFG.CLKOUT & ~PORTCFG_CLKOUTSEL_gm) | PORTCFG_CLKOUT_PC7_gc;
  // set PC7 as output
  PORTC.DIRSET = PIN7_bm;

  // set PD7 as output for TX0
  PORTD.DIRSET = PIN7_bm;
  PORTD.OUTSET = PIN7_bm;
  // remap USARTD0 to PD[7-4]
  PORTD.REMAP |= PORT_USART0_bm;
  // set baud rate 9600: BSEL=12, BSCALE=4
  // as found in table in 
  // Atmel-42005-8-and-16-bit-AVR-Microcontrollers-XMEGA-E_Manual.pdf
  USARTD0.BAUDCTRLA = 12; // BSEL
  USARTD0.BAUDCTRLB = 4 << USART_BSCALE_gp; // BSCALE
  // disable 2X
  USARTD0.CTRLB = USARTD0.CTRLB & ~USART_CLK2X_bm;
  // enable RX and TX
  USARTD0.CTRLB = USARTD0.CTRLB | USART_RXEN_bm | USART_TXEN_bm;
  // enable async UART 8N1
  USARTD0.CTRLC = USART_CMODE_ASYNCHRONOUS_gc | USART_PMODE_DISABLED_gc | USART_CHSIZE_8BIT_gc;
  USARTD0.CTRLC &= ~USART_SBMODE_bm;
  USARTD0.CTRLD = 0; // No LUT

  // set interrupt level for RX
  USARTD0.CTRLA = (USARTD0.CTRLA & ~USART_RXCINTLVL_gm) | USART_RXCINTLVL_LO_gc;
}

static inline void init_interrupts() {
  // Enable PMIC interrupt level low
  PMIC.CTRL |= PMIC_LOLVLEX_bm;
  // enable interrupts
  sei();
}

static volatile uint8_t echo_char = 42;

int main( void )
{
  init_oscillator();

  // enable clock out on port PC7
  PORTCFG.CLKOUT = (PORTCFG.CLKOUT & ~PORTCFG_CLKOUTSEL_gm) | PORTCFG_CLKOUT_PC7_gc;
  // set PC7 as output
  PORTC.DIRSET = PIN7_bm;

  init_usart();

  init_interrupts();

  // set PA0 as output
  PORTA.DIRSET = PIN0_bm;
  // blink LED on PA0 with 1 second on, 1 second off
  // write echo_char on USART on D7; defaults to 42(*)
  while (1) {
    usart_write(echo_char);
    PORTA.OUTSET = PIN0_bm;
    _delay_ms( 1000 );
    usart_write(echo_char);
    PORTA.OUTCLR = PIN0_bm;
    _delay_ms( 1000 );
  }
}

// USART RX receive interrupt handler
ISR(USARTD0_RXC_vect) {
  echo_char = USARTD0.DATA;
}
