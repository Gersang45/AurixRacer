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
		if(IR_Radar[i] <= 1000)    // unit mm	// ��ü�� 1000 �Ÿ����� ������ �ִٸ� ����mm , ��ü�� �������� �������� ���� �ִ��� �� 1300
		{
			if( i == 1 || i == 2  || i == 3){	// i ==1,2,3�϶� -> �����
				Obstacle_Distance = (float)IR_Radar[i];	// ��ֹ����� �Ÿ�
				float pow_Obstacle_Distance = pow(Obstacle_Distance,2.0) ;
				TargetPoint_Dsitacne = sqrt(360000 + pow_Obstacle_Distance);	// ��ֹ��κ��� 600mm�� ������ ��ֹ����� ������ �̿��� ȸ���� �������� ��ġ�� ���Ѵ�.
				RefCnt = (uint16)(TargetPoint_Dsitacne/(Speed*20));	// ȸ���� ������������ �Ÿ��� ī��Ʈ�� �̿��Ͽ� ȸ�Ǳ⵿�Ѵ�.
				State_Track = Lanechange;	// ��������
				avoidingState = Avoid_Start;	// ȸ�Ǳ⵿ ����
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