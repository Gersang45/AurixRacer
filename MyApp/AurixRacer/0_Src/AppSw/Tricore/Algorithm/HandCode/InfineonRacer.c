/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "InfineonRacer.h"
#include "Basic.h"

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
InfineonRacer_t IR_Ctrl  /**< \brief  global data */
		={64, 64, FALSE  };

uint16 IR_Radar[24] = {1300};
uint16 IR_Radar_index = 0;
uint16 IR_Radar_dist = 0;

Track_t State_Track = Normal;

uint16 test_val = 0;

float Duty_Motor = 0.29;

uint16 cnt_cross = 0;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void InfineonRacer_init(void){
	Ccu6IcuDemo_init();
	IR_Encoder_init();
	I2cBasicDemo_init();
	IR_setSrvScanAngle(1);
//	IR_setMotor0En(1);
}

void InfineonRacer_control(void){
	switch(State_Track)
	{
		case Normal:
			IR_getSrvAngle() = InfineonRacer_PDControlSteer();

			MotorDutyRef = InfineonRacer_RefMotor(Duty_Motor);
			IR_Motor.Motor0Vol = MotorDutyRef;
			break;

		case Crossin:
			State_Track = Dashline;

			break;

		case Dashline:
			cnt_cross++;
			if(cnt_cross <= 10){
				Line_Left = L_0;
				Line_Right = R_0;
				Offset = 66;
			}
			InfineonRacer_DetectDashline();
			InfineonRacer_DetectObstacle();

			IR_getSrvAngle() = InfineonRacer_PDControlSteer();
			MotorDutyRef = InfineonRacer_RefMotor(Duty_Motor);
			IR_Motor.Motor0Vol = MotorDutyRef;
			break;

		case Lanechange:
			InfineonRacer_AvoidObstacle();
			break;

		case Crossout:
			State_Track = AEB;
			cnt_cross = 0;
			break;

		case AEB:
			cnt_cross++;
			if(cnt_cross <= 20)
			{
				Line_Left = L_0;
				Line_Right = R_0;
				Offset = 66;
			}
			else
			{
				State_Track = Normal;
				cnt_cross = 0;
			}
//			InfineonRacer_DetectObstacle();
			IR_getSrvAngle() = InfineonRacer_PDControlSteer();

			MotorDutyRef = InfineonRacer_RefMotor(Duty_Motor);
			IR_Motor.Motor0Vol = MotorDutyRef;
			break;

		default:
			break;
	}
}

void InfineonRacer_runRadar(void){
	IR_Radar[IR_Radar_index] = IR_Radar_dist;
	if(IR_Radar_index >= 24) IR_Radar_index = 24;
}

void InfineonRacer_checkEdge(void){
	if(IR_getPort00_0() == 1)
	{
		IR_Radar_index = 0;
		if(State_Track == AEB)
		{
			IR_setSrvScanAngle(-1);
			IR_setSrvScanAngle(0);
		}
		else
		{
			IR_setSrvScanAngle(1);
		}
	}

}
