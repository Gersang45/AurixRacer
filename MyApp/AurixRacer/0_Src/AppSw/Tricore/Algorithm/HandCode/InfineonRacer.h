#ifndef INFINEONRACER_H_
#define INFINEONRACER_H_


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"
#include "I2cBasicDemo.h"
#include "Ccu6IcuDemo.h"
#include "AppTaskFu.h"

#include "Q_Linescan.h"
#include "Q_Control.h"
#include "Q_CollisionAvoidance.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IR_getLs0Margin()		IR_Ctrl.Ls0Margin
#define IR_getLs1Margin()		IR_Ctrl.Ls1Margin

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/



/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
	sint32 Ls0Margin;
	sint32 Ls1Margin;
	boolean basicTest;
}InfineonRacer_t;

typedef enum{
	Normal,
	Crossin,
	Dashline,
	Lanechange,
	Crossout,
	AEB
}Track_t;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN InfineonRacer_t IR_Ctrl;
IFX_EXTERN uint16 IR_Radar[24];
IFX_EXTERN uint16 IR_Radar_dist;
IFX_EXTERN uint16 IR_Radar_index;

IFX_EXTERN Track_t State_Track;

IFX_EXTERN float Duty_Motor;

IFX_EXTERN uint16 cnt_cross;

IFX_EXTERN uint16 test_val;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void InfineonRacer_init(void);
IFX_EXTERN void InfineonRacer_detectLane(void);
IFX_EXTERN void InfineonRacer_control(void);
IFX_EXTERN void InfineonRacer_runRadar(void);
IFX_EXTERN void InfineonRacer_checkEdge(void);

#endif
