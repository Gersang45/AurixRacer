#include "AppTaskFu.h"

static sint32 task_cnt_100u = 0;
static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_100u = FALSE;
boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;

void appTaskfu_init(void){

}

void appTaskfu_100us(void){
	task_cnt_100u++;
	if(task_cnt_100u == 1000){
		task_cnt_100u = 0;
	}
}

void appTaskfu_1ms(void)
{
	task_cnt_1m++;
	if(task_cnt_1m == 1000){
		task_cnt_1m = 0;
	}

}


void appTaskfu_10ms(void)
{
	task_cnt_10m++;
	if(task_cnt_10m == 100){
		task_cnt_10m = 0;
	}

}

void appTaskfu_100ms(void)
{
	task_cnt_100m++;
	if(task_cnt_100m == 100){
		task_cnt_100m = 0;
	}

}

void appTaskfu_1000ms(void)
{
	task_cnt_1000m++;
	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
	}

}

void appTaskfu_idle(void){


}

void appIsrCb_1ms(void){

}

