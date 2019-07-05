#include "Q_Linescan.h"

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
uint16 Line_Left = L_0;
uint16 Line_Right = R_0;

uint16 Pre_Line_Left = L_0;
uint16 Pre_Line_Right = R_0;

uint16 Offset = 66;

uint16 State_Scan = 22;

PosDL_t Pos_DL = Dash_null;
boolean init_dash = FALSE;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
uint16 InfineonRacer_FindBlack(uint16 start, uint16 final, uint16 lr)
{
	uint16 k;
	uint16 left = 0, right = 1;
	uint32 var, line_k;

	if(lr == left)
	{
		line_k = S_START;
		for(k = start; k >= final+SKIP+1; k--)
		{
			var = IR_LineScan.adcResult[0][k]*PERCENT;
			if(IR_LineScan.adcResult[0][k-SKIP] < var
			   || IR_LineScan.adcResult[0][k-SKIP-1] < var)
			{
				line_k = k;
				break;
			}
		}
	}

	else
	{
		line_k = S_FINAL;
		for(k = start; k <= final-SKIP-1; k++)
		{
			var = IR_LineScan.adcResult[0][k]*PERCENT;
			if(IR_LineScan.adcResult[0][k+SKIP] < var
			   || IR_LineScan.adcResult[0][k+SKIP+1] < var)
			{
				line_k = k;
				break;
			}
		}
	}
	return line_k;
}

void InfineonRacer_detectLane(void)
{
	Pre_Line_Left = Line_Left;
	Pre_Line_Right = Line_Right;

	if(State_Track == Normal || State_Track == Dashline || State_Track == AEB)
	{
		switch(State_Scan)
		{
			case 11:
			case 12:
			case 21:
			case 22:
				Line_Left = InfineonRacer_FindBlack(Offset, S_START, LEFT);
				Line_Right = InfineonRacer_FindBlack(Offset, S_FINAL, RIGHT);

				if(Line_Left == S_START)
				{
					if(Line_Right == S_FINAL)
					{
						Offset = S_CENTER;
						State_Scan = 11;
					}
					else if(Line_Right > S_CENTER)
					{
						Offset = S_CENTER + Line_Right - R_0;
						State_Scan = 12;
					}
					else
					{
						Offset = S_CENTER + Line_Right - R_0;
						State_Scan = 13;
					}
				}
				else if(Line_Left < S_CENTER)
				{
					if(Line_Right == S_FINAL)
					{
						Offset = S_CENTER + Line_Left - L_0;
						State_Scan = 21;
					}
					else
					{
						Offset = (Line_Left + Line_Right) >> 1;
						State_Scan = 22;
					}
				}
				else
				{
					Offset = S_CENTER + Line_Left - L_0;
					State_Scan = 31;
				}
				break;

			case 13:
				Line_Left = InfineonRacer_FindBlack(Offset, S_START, LEFT);
				Line_Right = InfineonRacer_FindBlack(Offset, S_FINAL, RIGHT);

				if(Line_Right == S_FINAL)
				{
					Offset = S_START;
					State_Scan = 14;
				}
				else if(Line_Right > S_CENTER)
				{
					Offset = S_CENTER + Line_Right - R_0;
					State_Scan = 12;
				}
				else
				{
					Offset = S_CENTER + Line_Right - R_0;
					State_Scan = 13;
				}
				break;

			case 14:
				Line_Right = InfineonRacer_FindBlack(Offset, S_FINAL, RIGHT);

				if(Line_Right == S_FINAL)
				{
					Offset = S_START;
					State_Scan = 14;
				}
				else if(Line_Right < S_CENTER)
				{
					Offset = S_CENTER + Line_Right - R_0;
					State_Scan = 13;
				}
				break;

			case 31:
				Line_Left = InfineonRacer_FindBlack(Offset, S_START, LEFT);
				Line_Right = InfineonRacer_FindBlack(Offset, S_FINAL, RIGHT);

				if(Line_Left == S_START)
				{
					Offset = S_FINAL;
					State_Scan = 41;
				}
				else if(Line_Left > S_CENTER)
				{
					Offset = S_CENTER + Line_Left - L_0;
					State_Scan = 31;
				}
				else
				{
					Offset = S_CENTER + Line_Left - L_0;
					State_Scan = 21;
				}
				break;

			case 41:
				Line_Left = InfineonRacer_FindBlack(Offset, S_START, LEFT);

				if(Line_Left == S_START)
				{
					Offset = S_FINAL;
					State_Scan = 41;
				}
				else
				{
					Offset = S_CENTER + Line_Left - L_0;
					State_Scan = 31;
				}
				break;

			default: break;
		}
		if(Offset < S_START)		 Offset = S_START;
		else if(Offset > S_FINAL)	 Offset = S_FINAL;
	}
}

void InfineonRacer_DetectDashline(void)
{
	static int cnt_left = 0, cnt_right = 0;
	if( (Line_Left >= Pre_Line_Left - 2) && (Line_Left <= Pre_Line_Left + 2) )	cnt_left++;
	if( (Line_Right >= Pre_Line_Right - 2) && (Line_Right <= Pre_Line_Right + 2) )	cnt_right++;

	if(init_dash == TRUE)
	{
		if(cnt_left >= 5 || cnt_right >= 5)
		{
			if(cnt_left > cnt_right)
			{
				Pos_DL = Dash_left;
				cnt_left = 0;
				cnt_right = 0;
			}
			else if(cnt_left < cnt_right)
			{
				Pos_DL = Dash_right;
				cnt_left = 0;
				cnt_right = 0;
			}
		}
	}
	else if(init_dash == FALSE)
	{
		if(Pos_DL == Dash_left)		  Pos_DL = Dash_right;
		else if(Pos_DL == Dash_right) Pos_DL = Dash_left;
	}
}

void InfineonRacer_DetectCrosswalk(void)
{
//  complete
//
	int i;
	int cnt_black = 0;
	uint16 var;

	for(i = Pre_Line_Left; i <= Pre_Line_Right - SKIP; i++)
	{
		var = IR_LineScan.adcResult[0][i]*PERCENT;
		if(IR_LineScan.adcResult[0][i+SKIP] < var)	cnt_black++;
	}

	if(State_Track == Normal || State_Track == Dashline)
	{
		if(cnt_black >= 4)
		{
			if(State_Track == Normal)
			{
				State_Track = Crossin;
				init_dash = TRUE;
				Line_Left = L_0;
				Line_Right = R_0;
				Offset = 66;
				Duty_Motor = 0.2;
				cnt_black = 0;
			}
			else if(State_Track == Dashline && cnt_cross >= 63)
			{
				State_Track = Crossout;
				Line_Left = L_0;
				Line_Right = R_0;
				Offset = 66;
				Duty_Motor = 0.29;
				cnt_black = 0;
			}
		}
	}
}
