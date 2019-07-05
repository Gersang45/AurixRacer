#include "Q_CollisionAvoidance.h"
#include "Q_Control.h"
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
boolean flag_obs = FALSE;

/******************************************************************************/
/*-----------------------------Private variables------------------------------*/
/******************************************************************************/
enum{
	Avoid_Start,
	Avoid_Obstacle,
	Fixing_Line
}avoidingState;

uint16 RefCnt;
uint16 AvoidCnt;
float Obstacle_Distance;
float TargetPoint_Dsitacne;
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/


void InfineonRacer_DetectObstacle(void)
{
	int i = 0;

	for(i=0; i <24; i++)
	{
		if(IR_Radar[i] <= 1000)    // unit mm	// 물체가 1000 거리보다 가까이 있다면 단위mm , 물체를 보고있지 않을때의 값은 최댓값인 약 1300
		{
			if( i == 1 || i == 2  || i == 3){	// i ==1,2,3일때 -> 전면부
				Obstacle_Distance = (float)IR_Radar[i];	// 장애물과의 거리
				float pow_Obstacle_Distance = pow(Obstacle_Distance,2.0) ;
				TargetPoint_Dsitacne = sqrt(360000 + pow_Obstacle_Distance);	// 장애물로부터 600mm의 제곱과 장애물과의 제곱을 이용해 회피할 지점과의 위치를 구한다.
				RefCnt = (uint16)(TargetPoint_Dsitacne/(Speed*20));	// 회피할 목적지까지의 거리를 카운트를 이용하여 회피기동한다.
				State_Track = Lanechange;	// 차선변경
				avoidingState = Avoid_Start;	// 회피기동 시작
				break;
			}
		}
		else 		flag_obs = FALSE;
	}

}

void InfineonRacer_AvoidObstacle(void)
{
	switch(Pos_DL)
	{
		case Dash_right:

			switch(avoidingState)
			{
				case Avoid_Start :
					AvoidCnt = 0;
					avoidingState = Avoid_Obstacle;

				case Avoid_Obstacle :
					IR_setSrvAngle(-0.05);
					AvoidCnt++;
					if(RefCnt == AvoidCnt )
					{
						AvoidCnt = 0;
						avoidingState = Fixing_Line;
					}
					break;

				case Fixing_Line :
					IR_setSrvAngle(0.45);
					AvoidCnt++;
					init_dash = FALSE;
					if(RefCnt == AvoidCnt ) State_Track = Dashline;
					break;
			}

			break;

		case Dash_left:
			switch(avoidingState)
			{
				case Avoid_Start :
					AvoidCnt = 0;
					avoidingState = Avoid_Obstacle;

				case Avoid_Obstacle :
					IR_setSrvAngle(0.35);
					AvoidCnt++;
					if(RefCnt == AvoidCnt )
					{
						AvoidCnt = 0;
						avoidingState = Fixing_Line;
					}
					break;

				case Fixing_Line :
					IR_setSrvAngle(-0.15);
					AvoidCnt++;
					init_dash = FALSE;
					if(RefCnt == AvoidCnt ) State_Track = Dashline;
					break;
			}
			break;

		default:
			break;
	}
//	IR_setMotor0Vol(0);
}
