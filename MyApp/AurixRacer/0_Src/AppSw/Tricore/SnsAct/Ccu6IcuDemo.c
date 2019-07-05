/**
 * \file Ccu6IcuDemo.c
 * \brief Demo Ccu6IcuDemo
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
#include "Ccu6IcuDemo.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

App_Ccu6Icu g_Ccu6Icu; /**< \brief Demo information */
App_Ccu6Icu g_Ccu6Icu_Encoder; /**< \brief Demo information */

uint16 cnt_enc = 0;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

// name Interrupts for Capture
IFX_INTERRUPT(ccu6_ISR_Icu_r, 0, ISR_PRIORITY_CCU6_ICU);
IFX_INTERRUPT(ccu6_ISR_Icu_f, 0, ISR_PRIORITY_CCU6_ICU_F);
IFX_INTERRUPT(ccu6_ISR_Icu_Encoder, 0, ISR_PRIORITY_CCU6_ICU_ENC);

void ccu6_ISR_Icu_Encoder(void)
{
    IfxCpu_enableInterrupts();

    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU61, IfxCcu6_InterruptSource_cc60RisingEdge);

    cnt_enc++;
}

void ccu6_ISR_Icu_r(void)
{
    IfxCpu_enableInterrupts();

    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU60, IfxCcu6_InterruptSource_cc60RisingEdge);
}

void ccu6_ISR_Icu_f(void)
{
    IfxCpu_enableInterrupts();

    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU60, IfxCcu6_InterruptSource_cc60FallingEdge);

    IR_Radar_index++;
    I2cBasicDemo_run();
    InfineonRacer_runRadar();
}

void IR_Encoder_init(void)
{
    /* disable interrupts */
    boolean            interruptState = IfxCpu_disableInterrupts();

	/* Encoder setting  */
        /* create configuration */
		IfxCcu6_Icu_Config Enc_icuConfig;
		IfxCcu6_Icu_initModuleConfig(&Enc_icuConfig, &MODULE_CCU61);

		/* configure the frequency of the timer in case of internal start */
		Enc_icuConfig.frequency = 400000;

		/* configure the period of the timer */
		Enc_icuConfig.period = 100;

		/* configure the clock for internal mode */
		Enc_icuConfig.clock.extClockEnabled = FALSE;

		/* configure count operation */
		Enc_icuConfig.countMode    = IfxCcu6_T12CountMode_edgeAligned;
		Enc_icuConfig.counterValue = 0;

		/* initialize the module */
		IfxCcu6_Icu_initModule(&g_Ccu6Icu_Encoder.drivers.icu, &Enc_icuConfig);

		/* create Icu channel config */
		IfxCcu6_Icu_ChannelConfig icu_EncoderChannelConfig;
		IfxCcu6_Icu_initChannelConfig(&icu_EncoderChannelConfig, &MODULE_CCU61);

		/* configure the channel */
		icu_EncoderChannelConfig.channelId   = IfxCcu6_T12Channel_0;
		icu_EncoderChannelConfig.channelMode = IfxCcu6_T12ChannelMode_doubleRegisterCaptureRising;

		/* configure the interrupts */
		icu_EncoderChannelConfig.interrupt1.source         = IfxCcu6_InterruptSource_cc60RisingEdge;
		icu_EncoderChannelConfig.interrupt1.serviceRequest = IfxCcu6_ServiceRequest_2;
		icu_EncoderChannelConfig.interrupt1.priority       = ISR_PRIORITY_CCU6_ICU_ENC;
		icu_EncoderChannelConfig.interrupt1.typeOfService  = IfxSrc_Tos_cpu0;

		/* configure input and output triggers */
		icu_EncoderChannelConfig.trigger.extInputTrigger = NULL_PTR;

		/* pin configuration, in case of multi input capture mode select the respective CC6xIn and CCPOSxIn pins of the selected channel */
		const IfxCcu6_Icu_Pins Encoder_pins = {
			&IfxCcu61_CC60INA_P00_1_IN,
			NULL_PTR, /* CC60In pin */	//P00_1
			NULL_PTR,                   /* CC62In pin not used */
			NULL_PTR,                   /* CCPOS0In pin not used */
			NULL_PTR,                   /* CCPOS1In pin not used */
			NULL_PTR,                   /* CCPOS2In pin not used */
			IfxPort_InputMode_pullUp,
			IfxPort_InputMode_pullUp,
			NULL_PTR,
			NULL_PTR,
			IfxPort_InputMode_pullUp
		};
		icu_EncoderChannelConfig.pins = &Encoder_pins;

		/* configure multi input capture mode */
		icu_EncoderChannelConfig.multiInputCaptureEnabled = FALSE;

		/* initialize the channel */
		IfxCcu6_Icu_initChannel(&g_Ccu6Icu_Encoder.drivers.icuChannel, &icu_EncoderChannelConfig);

		/* enable interrupts again */
		IfxCpu_restoreInterrupts(interruptState);
	/* Encoder setting      End  */

	IfxCcu6_Icu_startCapture(&g_Ccu6Icu_Encoder.drivers.icuChannel);
	printf("Ccu6 Icu_Enc is initialised\n");
}

void Ccu6IcuDemo_init(void)
{
    /* disable interrupts */
    boolean            interruptState = IfxCpu_disableInterrupts();

    /* create configuration */
    IfxCcu6_Icu_Config icuConfig;
    IfxCcu6_Icu_initModuleConfig(&icuConfig, &MODULE_CCU60);

    /* configure the frequency of the timer in case of internal start */
    icuConfig.frequency = 400000;

    /* configure the period of the timer */
    icuConfig.period = 100;

    /* configure the clock for internal mode */
    icuConfig.clock.extClockEnabled = FALSE;

    /* configure count operation */
    icuConfig.countMode    = IfxCcu6_T12CountMode_edgeAligned;
    icuConfig.counterValue = 0;

    /* initialize the module */
    IfxCcu6_Icu_initModule(&g_Ccu6Icu.drivers.icu, &icuConfig);

    /* create Icu channel config */
    IfxCcu6_Icu_ChannelConfig icuChannelConfig;
    IfxCcu6_Icu_initChannelConfig(&icuChannelConfig, &MODULE_CCU60);

    /* configure the channel */
    icuChannelConfig.channelId   = IfxCcu6_T12Channel_0;
    icuChannelConfig.channelMode = IfxCcu6_T12ChannelMode_doubleRegisterCaptureRising;

    /* configure the interrupts */
    icuChannelConfig.interrupt1.source         = IfxCcu6_InterruptSource_cc60RisingEdge;
    icuChannelConfig.interrupt1.serviceRequest = IfxCcu6_ServiceRequest_2;
    icuChannelConfig.interrupt1.priority       = ISR_PRIORITY_CCU6_ICU;
    icuChannelConfig.interrupt1.typeOfService  = IfxSrc_Tos_cpu0;

    icuChannelConfig.interrupt2.source         = IfxCcu6_InterruptSource_cc60FallingEdge;
    icuChannelConfig.interrupt2.serviceRequest = IfxCcu6_ServiceRequest_1;
    icuChannelConfig.interrupt2.priority       = ISR_PRIORITY_CCU6_ICU_F;
    icuChannelConfig.interrupt2.typeOfService  = IfxSrc_Tos_cpu0;

    /* configure input and output triggers */
    icuChannelConfig.trigger.extInputTrigger = NULL_PTR;

    /* pin configuration, in case of multi input capture mode select the respective CC6xIn and CCPOSxIn pins of the selected channel */
    const IfxCcu6_Icu_Pins pins = {
        &IfxCcu60_CC60INA_P02_0_IN, /* CC60In pin */
		NULL_PTR,                   /* CC61In pin not used */
		NULL_PTR,                   /* CC62In pin not used */
        NULL_PTR,                   /* CCPOS0In pin not used */
        NULL_PTR,                   /* CCPOS1In pin not used */
        NULL_PTR,                   /* CCPOS2In pin not used */
        IfxPort_InputMode_pullUp,
        IfxPort_InputMode_pullUp,
        NULL_PTR,
        NULL_PTR,
        IfxPort_InputMode_pullUp
    };
    icuChannelConfig.pins = &pins;

    /* configure multi input capture mode */
    icuChannelConfig.multiInputCaptureEnabled = FALSE;

    /* initialize the channel */
    IfxCcu6_Icu_initChannel(&g_Ccu6Icu.drivers.icuChannel, &icuChannelConfig);

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    printf("Ccu6 Icu is initialised\n");

    IfxCcu6_Icu_startCapture(&g_Ccu6Icu.drivers.icuChannel);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void Ccu6IcuDemo_run(void)
{}
