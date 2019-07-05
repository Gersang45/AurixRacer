
/*
* Copyright (c) 2017, STMicroelectronics - All Rights Reserved
*
* This file is part of VL53L1 Core and is dual licensed,
* either 'STMicroelectronics
* Proprietary license'
* or 'BSD 3-clause "New" or "Revised" License' , at your option.
*
********************************************************************************
*
* 'STMicroelectronics Proprietary license'
*
********************************************************************************
*
* License terms: STMicroelectronics Proprietary in accordance with licensing
* terms at www.st.com/sla0081
*
* STMicroelectronics confidential
* Reproduction and Communication of this document is strictly prohibited unless
* specifically authorized in writing by STMicroelectronics.
*
*
********************************************************************************
*
* Alternatively, VL53L1 Core may be distributed under the terms of
* 'BSD 3-clause "New" or "Revised" License', in which case the following
* provisions apply instead of the ones mentioned above :
*
********************************************************************************
*
* License terms: BSD 3-clause "New" or "Revised" License.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
* list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
* this list of conditions and the following disclaimer in the documentation
* and/or other materials provided with the distribution.
*
* 3. Neither the name of the copyright holder nor the names of its contributors
* may be used to endorse or promote products derived from this software
* without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
*
********************************************************************************
*
*/

#include "I2cBasicDemo.h"
#include "Bsp.h"

#include "vl53l1_platform.h"
// #include "vl53l1_platform_log.h"
#include "vl53l1_api.h"
#include "I2cBasicDemo.h"
// #include "stm32xxx_hal.h"

#include <string.h>

// #include <time.h>
// #include <math.h>


// #define I2C_TIME_OUT_BASE   10
// #define I2C_TIME_OUT_BYTE   1

// #ifdef VL53L1_LOG_ENABLE
// #define trace_print(level, ...) VL53L1_trace_print_module_function(VL53L1_TRACE_MODULE_PLATFORM, level, VL53L1_TRACE_FUNCTION_NONE, ##__VA_ARGS__)
// #define trace_i2c(...) VL53L1_trace_print_module_function(VL53L1_TRACE_MODULE_NONE, VL53L1_TRACE_LEVEL_NONE, VL53L1_TRACE_FUNCTION_I2C, ##__VA_ARGS__)
// #endif

// #ifndef HAL_I2C_MODULE_ENABLED
// #warning "HAL I2C module must be enable "
// #endif

//extern I2C_HandleTypeDef hi2c1;
//#define VL53L0X_pI2cHandle    (&hi2c1)

/* when not customized by application define dummy one */
// #ifndef VL53L1_GetI2cBus
/** This macro can be overloaded by user to enforce i2c sharing in RTOS context
 */
// #   define VL53L1_GetI2cBus(...) (void)0
// #endif

// #ifndef VL53L1_PutI2cBus
/** This macro can be overloaded by user to enforce i2c sharing in RTOS context
 */
// #   define VL53L1_PutI2cBus(...) (void)0
// #endif

// uint8_t _I2CBuffer[256];

// int _I2CWrite(VL53L1_DEV Dev, uint8_t *pdata, uint32_t count) {
//     int status = 0;
//     return status;
// }

// int _I2CRead(VL53L1_DEV Dev, uint8_t *pdata, uint32_t count) {
//    int status = 0;
//    return Status;
// }

#define min(a,b) (((a) < (b)) ? (a) : (b))


uint32_t millis(void);


VL53L1_Error VL53L1_WriteMulti(VL53L1_DEV Dev, uint16_t index, uint8_t *pdata, uint32_t count)
{
	Ifx_SizeT size = (Ifx_SizeT)(count + 2);
	uint8_t WrData[size];

	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index  & 0xff);

	for(uint32_t i = 0;i < count; i++){
		WrData[i+2] = pdata[i];
	}

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

  return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_ReadMulti(VL53L1_DEV Dev, uint16_t index, uint8_t *pdata, uint32_t count)
{
	uint8_t WrData[2];
	Ifx_SizeT size;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index  & 0xff);

	size = 2;
	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

	size = (Ifx_SizeT)count;
	while (IfxI2c_I2c_read(&g_I2cBasic.i2cDev,pdata,size) == IfxI2c_I2c_Status_nak)
	{}

  return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_WrByte(VL53L1_DEV Dev, uint16_t index, uint8_t data)
{
	uint8_t WrData[3];
	Ifx_SizeT size = 3;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index & 0xff);
	WrData[2] = (uint8_t)data;

	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

  return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_WrWord(VL53L1_DEV Dev, uint16_t index, uint16_t data)
{
	uint8_t WrData[4];
	Ifx_SizeT size = 4;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index & 0xff);
	WrData[2] = (uint8_t)((data >> 8) & 0xff);
	WrData[3] = (uint8_t)(data & 0xff);

	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

  return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_WrDWord(VL53L1_DEV Dev, uint16_t index, uint32_t data)
{
	uint8_t WrData[6];
	Ifx_SizeT size = 6;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index & 0xff);
	WrData[2] = (uint8_t)((data >> 24) & 0xff);
	WrData[3] = (uint8_t)((data >> 16) & 0xff);
	WrData[4] = (uint8_t)((data >> 8) & 0xff);
	WrData[5] = (uint8_t)(data & 0xff);

	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_UpdateByte(VL53L1_DEV Dev, uint16_t index, uint8_t AndData, uint8_t OrData)
{
  uint8_t data;
  VL53L1_Error status = VL53L1_RdByte(Dev, index, &data);
  if (status != VL53L1_ERROR_NONE) { return status; }
  data &= AndData;
  data |= OrData;
  return VL53L1_WrByte(Dev, index, data);
}

VL53L1_Error VL53L1_RdByte(VL53L1_DEV Dev, uint16_t index, uint8_t *data)
{
	uint8_t WrData[2];
	uint8_t RdData[1];
	Ifx_SizeT size;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index  & 0xff);

	size = 2;
	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

	size = 1;
	while (IfxI2c_I2c_read(&g_I2cBasic.i2cDev,RdData,size) == IfxI2c_I2c_Status_nak)
	{}

	*data = RdData[0];

	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_RdWord(VL53L1_DEV Dev, uint16_t index, uint16_t *data)
{
	uint8_t WrData[2];
	uint8_t RdData[2];
	uint16_t tmp_data = 0;
	Ifx_SizeT size;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = (uint8_t)((index >> 8) & 0xff);
	WrData[1] = (uint8_t)(index  & 0xff);

	size = 2;
	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

	size = 2;
	while (IfxI2c_I2c_read(&g_I2cBasic.i2cDev,RdData,size) == IfxI2c_I2c_Status_nak)
	{}

	tmp_data = (uint16_t)RdData[0] << 8;
	tmp_data |=  RdData[1];
	*data = tmp_data;

	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_RdDWord(VL53L1_DEV Dev, uint16_t index, uint32_t *data)
{
	uint8_t WrData[2];
	uint8_t RdData[4];
	uint32_t tmp_data = 0;
	Ifx_SizeT size;

	g_I2cBasic.i2cDev.deviceAddress = Dev->I2cDevAddr;
	WrData[0] = ((index >> 8) & 0xff);
	WrData[1] = (index  & 0xff);

	size = 2;
	while (IfxI2c_I2c_write(&g_I2cBasic.i2cDev,WrData,size) == IfxI2c_I2c_Status_nak)
	{}

	size = 4;
	while (IfxI2c_I2c_read(&g_I2cBasic.i2cDev,RdData,size) == IfxI2c_I2c_Status_nak)
	{}

	tmp_data = (uint32_t)RdData[0] << 24;
	tmp_data |= (uint32_t)RdData[1] << 16;
	tmp_data |= (uint16_t)RdData[2] << 8;
	tmp_data |=  RdData[3];

	*data = tmp_data;

	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_GetTickCount(
	uint32_t *ptick_count_ms)
{
  *ptick_count_ms = millis();
	return VL53L1_ERROR_NONE;
}


//#define trace_print(level, ...) \
//	_LOG_TRACE_PRINT(VL53L1_TRACE_MODULE_PLATFORM, \
//	level, VL53L1_TRACE_FUNCTION_NONE, ##__VA_ARGS__)

//#define trace_i2c(...) \
//	_LOG_TRACE_PRINT(VL53L1_TRACE_MODULE_NONE, \
//	VL53L1_TRACE_LEVEL_NONE, VL53L1_TRACE_FUNCTION_I2C, ##__VA_ARGS__)

VL53L1_Error VL53L1_GetTimerFrequency(int32_t *ptimer_freq_hz)
{
	return VL53L1_ERROR_NOT_IMPLEMENTED;
}

VL53L1_Error VL53L1_WaitMs(VL53L1_Dev_t *pdev, int32_t wait_ms)
{
	wait(TimeConst_1ms * (sint32)wait_ms);
	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_WaitUs(VL53L1_Dev_t *pdev, int32_t wait_us)
{

	wait(TimeConst_1us*(sint32)wait_us);
	return VL53L1_ERROR_NONE;
}

VL53L1_Error VL53L1_WaitValueMaskEx(
	VL53L1_Dev_t *pdev,
	uint32_t      timeout_ms,
	uint16_t      index,
	uint8_t       value,
	uint8_t       mask,
	uint32_t      poll_delay_ms)
{
  uint8_t data;
  VL53L1_Error status;

  while (timeout_ms > 0)
  {
    status = VL53L1_RdByte(pdev, index, &data);
    if (status != VL53L1_ERROR_NONE) { return status; }
    if ((data & mask) == value) { return VL53L1_ERROR_NONE; }

    wait(TimeConst_1ms * (sint32)poll_delay_ms);

    timeout_ms -= min(poll_delay_ms, timeout_ms);
  }

  return VL53L1_ERROR_TIME_OUT;
}


uint32_t millis(void){

	return VL53L1_TickCount;
}




