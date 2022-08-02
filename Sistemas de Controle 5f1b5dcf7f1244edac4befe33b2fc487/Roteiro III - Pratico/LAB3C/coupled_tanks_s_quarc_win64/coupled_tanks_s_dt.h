/*
 * coupled_tanks_s_dt.h
 *
 * Code generation for model "coupled_tanks_s".
 *
 * Model version              : 1.298
 * Simulink Coder version : 8.9 (R2015b) 13-Aug-2015
 * C source code generated on : Fri Jul 29 11:12:38 2022
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ext_types.h"

/* data type size table */
static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T),
  sizeof(uint8_T),
  sizeof(t_card)
};

/* data type name table */
static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T",
  "uint8_T",
  "t_card"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&coupled_tanks_s_B.VoltstocmTank1), 0, 0, 15 },

  { (char_T *)(&coupled_tanks_s_B.Compare), 8, 0, 2 }
  ,

  { (char_T *)(&coupled_tanks_s_DW.HILInitialize_AIMinimums[0]), 0, 0, 74 },

  { (char_T *)(&coupled_tanks_s_DW.HILInitialize_Card), 15, 0, 1 },

  { (char_T *)(&coupled_tanks_s_DW.HILReadAnalog_PWORK), 11, 0, 5 },

  { (char_T *)(&coupled_tanks_s_DW.HILInitialize_ClockModes[0]), 6, 0, 43 },

  { (char_T *)(&coupled_tanks_s_DW.HILInitialize_POSortedChans[0]), 7, 0, 8 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  7U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&coupled_tanks_s_P.HILInitialize_analog_input_maxi), 0, 0, 23 },

  { (char_T *)(&coupled_tanks_s_P.HILInitialize_hardware_clocks[0]), 6, 0, 9 },

  { (char_T *)(&coupled_tanks_s_P.HILInitialize_analog_input_chan[0]), 7, 0, 36
  },

  { (char_T *)(&coupled_tanks_s_P.HILInitialize_active), 8, 0, 35 },

  { (char_T *)(&coupled_tanks_s_P.VoltstocmTank1_Gain), 0, 0, 18 },

  { (char_T *)(&coupled_tanks_s_P.HILReadAnalog_Active), 8, 0, 2 },

  { (char_T *)(&coupled_tanks_s_P.K2_Gain), 14, 0, 1 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  7U,
  rtPTransitions
};

/* [EOF] coupled_tanks_s_dt.h */
