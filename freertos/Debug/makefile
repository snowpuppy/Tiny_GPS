################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src/subdir.mk
-include freertos/src/subdir.mk
-include freertos/port/memmang/subdir.mk
-include freertos/port/lpcxpresso/m0/subdir.mk
-include driver/subdir.mk
-include config/subdir.mk
-include cmsis/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: freertos.axf

# Tool invocations
freertos.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"/home/thor/LPCXpresso_user_workspace/lib_small_printf_m0/Lib" -Xlinker -Map=freertos.map -Xlinker --gc-sections -mcpu=cortex-m0 -mthumb -T "../linker/lpc1114_flash_crp.ld" -o"freertos.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) freertos.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size freertos.axf; arm-none-eabi-objcopy -O binary freertos.axf freertos.bin ; checksum -p LPC1114_301 -d freertos.bin;
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
