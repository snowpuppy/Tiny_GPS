################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/freertos_main.c 

OBJS += \
./src/freertos_main.o 

C_DEPS += \
./src/freertos_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__USE_CMSIS -DDEBUG -D__CODE_RED -I"/home/thor/LPCXpresso_user_workspace/freertos/freertos/inc" -I"/home/thor/LPCXpresso_user_workspace/lib_small_printf_m0/inc" -I"/home/thor/LPCXpresso_user_workspace/freertos/cmsis" -I"/home/thor/LPCXpresso_user_workspace/freertos/freertos/port/lpcxpresso/m0" -I"/home/thor/LPCXpresso_user_workspace/freertos/config" -I"/home/thor/LPCXpresso_user_workspace/freertos/driver" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


