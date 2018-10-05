#ifndef _BLDCMN_H_
#define _BLDCMN_H_ 1

#ifndef BLDCMN_PORT_LETTER
	#define BLDCMN_PORT_LETTER B
#endif
#define BLDCMN_DDR         GET_DDR(BLDCMN_PORT_LETTER)
#define BLDCMN_PORT        GET_PORT(BLDCMN_PORT_LETTER)
#define BLDCMN_PIN         GET_PIN(BLDCMN_PORT_LETTER)

#ifndef BLDCMN_PHASE_A_BIT
	#define BLDCMN_PHASE_A_BIT 0
#endif
#ifndef BLDCMN_PHASE_B_BIT
	#define BLDCMN_PHASE_B_BIT 1
#endif
#ifndef BLDCMN_PHASE_C_BIT
	#define BLDCMN_PHASE_C_BIT 2
#endif

#ifndef BLDCMN_STEP_ms
	#define BLDCMN_STEP_ms 500
#endif

#ifndef BLDCMN_ON_SIGNAL
	#define BLDCMN_ON_SIGNAL 0
#endif
#define BLDCMN_OFF_SIGNAL = ~BLDCMN_ON_SIGNAL
#define BLDCMN_STEPS = 3



void Bldcmn_Init(void) {
	bit_set(BLDCMN_DDR, BLDCMN_PHASE_A_BIT);
	bit_set(BLDCMN_DDR, BLDCMN_PHASE_B_BIT);
	bit_set(BLDCMN_DDR, BLDCMN_PHASE_C_BIT);
}

/* 
extern const int DVDROM_DELAY_STEP_ms;
extern const int DVDROM_ON_SIGNAL;

const int DVDROM_OFF_SIGNAL = ~DVDROM_ON_SIGNAL;
const int DVDROM_STEPS = 3;

char DVDROM_curr_step = 0; 
char DVDROM_angle_10  = 0;

void DVDROM_Freewheel() {
  DVDROM_PHASE_A_bit = DVDROM_OFF_SIGNAL;
  DVDROM_PHASE_B_bit = DVDROM_OFF_SIGNAL;
  DVDROM_PHASE_C_bit = DVDROM_OFF_SIGNAL;
}

void DVDROM_Step(char num_steps) {
  while (num_steps) {
    if (num_steps > 0) {
      DVDROM_curr_step++;
      DVDROM_angle_10 += 2;
      num_steps--;
    }
    if (num_steps < 0) {
      DVDROM_curr_step--;
      DVDROM_angle_10 -= 2;
      num_steps++;
    }

    if (DVDROM_curr_step == DVDROM_STEPS)
      DVDROM_curr_step = 0;
    if (DVDROM_curr_step == -1)
      DVDROM_curr_step = DVDROM_STEPS - 1;

    if (DVDROM_angle_10 == 36)
      DVDROM_angle_10 = 0;
    if (DVDROM_angle_10 == -2)
      DVDROM_angle_10 = 34;
 
    if (DVDROM_curr_step == 0) {
      DVDROM_PHASE_B_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_C_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_A_bit = DVDROM_ON_SIGNAL;
    }
    if (DVDROM_curr_step == 1) {
      DVDROM_PHASE_A_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_C_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_B_bit = DVDROM_ON_SIGNAL;
    }
    if (DVDROM_curr_step == 2) {
      DVDROM_PHASE_A_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_B_bit = DVDROM_OFF_SIGNAL;
      DVDROM_PHASE_C_bit = DVDROM_ON_SIGNAL;
    }
    Delay_ms(DVDROM_DELAY_STEP_ms);
  }
}

void DVDROM_Set_Angle(char target_deg_10) {
  target_deg_10 %= 36;
  if (target_deg_10 < 0)
    target_deg_10 += 36;

  target_deg_10 -= DVDROM_angle_10; 
  if (target_deg_10 < -18) 
    target_deg_10 += 36
 
  if (target_deg_10 > 18) 
    target_deg_10 -= 36


  target_deg_10 /= 2;
  DVDROM_Step(target_deg_10);
} */

#endif // _BLDCMN_H_