#include "Q_Control.h"
#include "Q_Linescan.h"

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
float SteerDuty = 0;
float SteerDuty0 = 0.1;
sint16 Error_Steer = 0;
uint16 Error_Old_Steer = 0;

float P_Steer = 0.0055;
double D_Steer = 0;

float MotorDutyRef = 0;

float Speed = 0;
uint16 Stack_Pulse[10] = {0};
uint16 Pulse_index = 0;
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

float InfineonRacer_PDControlSteer(void)
{
	float Ts = 0.02;
	float SteerDuty_in = 0;
	float val = 0;

	Error_Steer = Offset - S_CENTER;
	val = ( (float)(Error_Steer - Error_Old_Steer) ) / Ts;
	SteerDuty = ( P_Steer*(float)Error_Steer) + D_Steer*val;

	if(SteerDuty > SteerDutyMax)		SteerDuty = SteerDutyMax;
	else if(SteerDuty < -SteerDutyMax)	SteerDuty = -SteerDutyMax;
	else								{;}

	SteerDuty_in = SteerDuty + SteerDuty0;
	Error_Old_Steer = Error_Steer;

	return SteerDuty_in;
}

float InfineonRacer_RefMotor(float MotorDutyMax)
{
	float SpeedSlope = 2;
	float MotorDutyRef;
	float MotorDutyMin = 0.2;

	if((State_Track == Dashline) || (State_Track == Lanechange)){

		if (SteerDuty > 0)	MotorDutyRef = MotorDutyMin - SpeedSlope*(SteerDuty + SteerDuty0 - 0.2);
		else				MotorDutyRef = MotorDutyMin + SpeedSlope*(SteerDuty + SteerDuty0 + 0.2);

		if (MotorDutyRef > MotorDutyMax)		MotorDutyRef = 0.17;
		else if (MotorDutyRef < MotorDutyMin)	MotorDutyRef = 0.17;

	}
	else{
		MotorDutyRef = InfineonRacer_SpeedCommand(SteerDuty + SteerDuty0);
	}

	return MotorDutyRef;
}

float InfineonRacer_SpeedCommand(float steer_duty)
{
	float a, b = 2, c, cmd_speed;

	c = pow(SteerDutyMax,2)*SpeedMin/(SpeedMax - SpeedMin);
	a = c*SpeedMax;
	cmd_speed = a/(pow(steer_duty,b) + c);

	return cmd_speed;
}

void InfineonRacer_CalSpeed(void)
{
	uint16 i = 0;
	uint16 Sum_Pulse = 0;
	for(i=0; i<10; i++){
		Sum_Pulse = Sum_Pulse + Stack_Pulse[i];
	}

	Speed = Sum_Pulse*0.0235;
	cnt_enc = 0;
	Pulse_index++;
	if(Pulse_index >= 10){
		Pulse_index = 0;
	}
}

void InfineonRacer_PIDConSpeed(float speed)
{
	;
}
