/**
 * \file I2cBasicDemo.c
 * \brief Demo I2cBasicDemo
 *
 * \version iLLD_Demos_1_0_1_8_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "I2cBasicDemo.h"
#include <Cpu/Std/IfxCpu.h>
#include "BSP.h"
#include "vl53l1_api.h"
#include "Basic.h"
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/
typedef enum{
	START_PROCESS,
	CHECK_PIN_STATE,
	WAIT_TIME
}VL53L1_STATE;
/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
VL53L1_Dev_t                   dev;
VL53L1_DEV                     Dev = &dev;

VL53L1_DetectionConfig_t	   Detectionconfig;

typedef struct{
	VL53L1_STATE state;
	uint16_t tick;
	uint8_t pin_state;
}VL53L1_STATE_MACHINE;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_I2cBasic g_I2cBasic; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

void VL53L1_Setup(void);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
VL53L1_Error  com_status;
VL53L1_STATE_MACHINE  stateMachine;
VL53L1_DetectionConfig_t DetConfig;

uint8_t byteData;
uint16_t wordData;
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
uint8_t co_buffer[6];
void VL53L1_Setup(){




	Dev->I2cDevAddr = 0x52;

	VL53L1_software_reset(Dev);

	VL53L1_RdByte(Dev, 0x010F, &byteData);
	printf("VL53L1X Model_ID: %x\n",byteData);
	VL53L1_RdByte(Dev, 0x0110, &byteData);
	printf("VL53L1X Module_Type: %x\n",byteData);
	VL53L1_RdWord(Dev, 0x010F, &wordData);
	printf("VL53L1X: %x\n\n",wordData);


	com_status = VL53L1_WaitDeviceBooted(Dev);
	com_status = VL53L1_DataInit(Dev);
	com_status = VL53L1_StaticInit(Dev);

	com_status = VL53L1_SetDistanceMode(Dev, VL53L1_DISTANCEMODE_SHORT);
	com_status = VL53L1_SetMeasurementTimingBudgetMicroSeconds(Dev, 15000);
	com_status = VL53L1_SetInterMeasurementPeriodMilliSeconds(Dev,20);

	Detectionconfig.DetectionMode = 0;
	com_status = VL53L1_SetThresholdConfig(Dev, &Detectionconfig );
	com_status = VL53L1_StartMeasurement(Dev);


	if (com_status)
	{
		printf("VL53L1_StartMeasurement failed\n");
		while (1);
	}


}
/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void I2cBasicDemo_init(void)
{
    /* disable interrupts */
    boolean   interruptState = IfxCpu_disableInterrupts();

    //Ifx_SizeT size;
    g_I2cBasic.i2cAddr = 0x52;

    {   /* init Module */
        IfxI2c_I2c_Config config;

        IfxI2c_I2c_initConfig(&config, &MODULE_I2C0);
        const IfxI2c_Pins pins = {&IfxI2c0_SCL_P15_4_INOUT, &IfxI2c0_SDA_P15_5_INOUT, IfxPort_PadDriver_ttlSpeed2};
        config.pins     = &pins;
        config.baudrate = 800000;       /* 400 kHz */

        IfxI2c_I2c_initModule(&g_I2cBasic.i2c, &config);
    }

    {                                                                   /* init slave devices */
        IfxI2c_I2c_deviceConfig i2cDeviceConfig;
        IfxI2c_I2c_initDeviceConfig(&i2cDeviceConfig, &g_I2cBasic.i2c); /* Device config for Bus of i2c handle */

        i2cDeviceConfig.deviceAddress = g_I2cBasic.i2cAddr;
        IfxI2c_I2c_initDevice(&g_I2cBasic.i2cDev, &i2cDeviceConfig);

    }

    {
    	IfxI2c_enableBurstRequestInterruptSource(g_I2cBasic.i2c.i2c);
    	IfxI2c_enableBurstDataTransferInterrupt(g_I2cBasic.i2c.i2c, IfxSrc_Tos_cpu0, 8);

    	IfxI2c_enableLastBurstRequestInterruptSource(g_I2cBasic.i2c.i2c);
    	IfxI2c_enableLastBurstDataTransferInterrupt( g_I2cBasic.i2c.i2c, IfxSrc_Tos_cpu0, 9);

    	IfxI2c_enableSingleRequestInterruptSource(g_I2cBasic.i2c.i2c);
    	IfxI2c_enableSingleDataTransferInterrupt(g_I2cBasic.i2c.i2c, IfxSrc_Tos_cpu0, 10);

    	IfxI2c_enableLastSingleRequestInterruptSource(g_I2cBasic.i2c.i2c);
    	IfxI2c_enableLastSingleDataTransferInterrupt(g_I2cBasic.i2c.i2c, IfxSrc_Tos_cpu0, 11);

    }

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);


    VL53L1_Setup();
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
uint8_t read_data = 0;
uint32_t count = 3;
uint8_t p_data[3] = {1,2,3};
uint8_t data8_t = 10;
uint16_t data16_t = 0xbcab;
uint32_t data32_t = 0xdef5abbc;
uint16_t index = 0x2345;
uint8_t comms_buffer[6];
uint32_t Timing_Budget = 200000;
uint32_t Measurement_period = 500;

void I2cBasicDemo_run(void)
{
	  static VL53L1_RangingMeasurementData_t RangingData;
	  static uint8_t MeasurementDataReady = 0;

	  static int16_t fixedDistance = 0;

	  VL53L1_GetMeasurementDataReady(Dev,&MeasurementDataReady);

	  if(MeasurementDataReady)
	  {
		com_status = VL53L1_GetRangingMeasurementData(Dev, &RangingData);
	    if(com_status==0)
	    {
	    	if(RangingData.RangeMilliMeter > 1100
	    	   || (RangingData.SignalRateRtnMegaCps / 65536.0) < 7)
	    	{
	    		fixedDistance = 1300;
	    	}
	    	else
	    	{
	    		fixedDistance = RangingData.RangeMilliMeter + 150;
	    	}

	    	IR_Radar_dist = fixedDistance;
	    }
	    com_status = VL53L1_ClearInterruptAndStartMeasurement(Dev);
	    MeasurementDataReady = 0;
	  }
}
