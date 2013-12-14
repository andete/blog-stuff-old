ifeq ($(PREFIX),)
  PREFIX=arm-none-eabi-
endif
ifeq ($(CCHOME),)
  CCHOME = /home/joost/prj/st_arm/gcc-arm-embedded/gcc-arm-none-eabi-4_7-2013q3
endif
ifeq ($(STMHOME),)
  STMHOME = /home/joost/prj/st_arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries
endif
ifeq ($(STM_FAMILY),)
  STM_FAMILY=STM32F10X_MD
endif
DEFS = -D $(STM_FAMILY)
ifeq ($(CFLAGS),)
  CFLAGS = -mcpu=cortex-m3 -march=armv7-m -mfloat-abi=soft -mthumb -ggdb
endif
# define IDE_INCDIRS via IDE or environment to avoid including these
ifeq ($(IDE_INCDIRS),)
  ID1 = $(CCHOME)/arm-none-eabi/include
  #ID2 = $(CCHOME)/lib/gcc/arm-none-eabi/4.6.1/include
  ID3 = $(STMHOME)/CMSIS/CM3/CoreSupport
  ID4 = $(STMHOME)/CMSIS/CM3/DeviceSupport/ST/STM32F10x
  INCDIRS = -I $(ID1) -I $(ID3) -I $(ID4) -I.
endif
# define IDE_LIBDIRS via IDE or environment to avoid including these
ifeq ($(IDE_LIBDIRS),)
  # CodeSourcery 4.6.1 lib directories
  LD1 = $(CCHOME)/arm-none-eabi/lib/thumb2
  LD2 = $(CCHOME)/lib/gcc/arm-none-eabi/4.6.1/thumb2
  # Linaro 4.6.2 lib directories
  # LD1 = $(CCHOME)/arm-none-eabi/lib/armv7-m
  # LD2 = $(CCHOME)/lib/gcc/arm-none-eabi/4.6.2/armv7-m
  LDFLAGS = -L $(LD1) -L $(LD2)
endif

CCFLAGS = $(CFLAGS) $(DEFS) $(INCDIRS)

as = $(CCHOME)/bin/$(PREFIX)as
ld = $(CCHOME)/bin/$(PREFIX)ld
cc = $(CCHOME)/bin/$(PREFIX)gcc
cp = $(CCHOME)/bin/$(PREFIX)objcopy
dump = $(CCHOME)/bin/$(PREFIX)objdump


all : stm.o
	$(cp) -O binary stm.o stm.bin
	$(cp) -O ihex stm.o stm.hex
	$(dump) -d stm.o > stm.txt

stm.o : main.o sysinit.o crt0.o stm.ld
	$(ld) $(LDFLAGS) -Map map.txt -T stm.ld -o stm.o crt0.o sysinit.o main.o

crt0.o : startup_stm32f10x_md.s
	$(as) -o crt0.o startup_stm32f10x_md.s

sysinit.o : sysinit.c
	$(cc) $(CCFLAGS) -c sysinit.c

main.o: main.c
	$(cc) $(CCFLAGS) -c main.c

clean : 
	rm crt0.o main.o stm.o sysinit.o stm.bin stm.hex stm.txt map.txt
