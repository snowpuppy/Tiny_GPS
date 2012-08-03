################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/port/memmang/heap_2.c 

OBJS += \
./freertos/port/memmang/heap_2.o 

C_DEPS += \
./freertos/port/memmang/heap_2.d 


# Each subdirectory must supply rules for building sources it contributes
freertos/port/memmang/%.o: ../freertos/port/memmang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__USE_CMSIS -DDEBUG -D__CODE_RED -I"/home/thor/LPCXpresso_user_workspace/freertos/freertos/inc" -I"/home/thor/LPCXpresso_user_workspace/lib_small_printf_m0/inc" -I"/home/thor/LPCXpresso_user_workspace/freertos/cmsis" -I"/home/thor/LPCXpresso_user_workspace/freertos/freertos/port/lpcxpresso/m0" -I"/home/thor/LPCXpresso_user_workspace/freertos/config" -I"/home/thor/LPCXpresso_user_workspace/freertos/driver" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


