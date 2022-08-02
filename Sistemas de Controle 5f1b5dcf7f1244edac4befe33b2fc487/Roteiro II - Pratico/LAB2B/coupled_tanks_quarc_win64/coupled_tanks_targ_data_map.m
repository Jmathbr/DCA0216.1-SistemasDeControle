  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 6;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (coupled_tanks_P)
    ;%
      section.nData     = 18;
      section.data(18)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.HILInitialize_analog_input_maxi
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.HILInitialize_analog_input_mini
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% coupled_tanks_P.HILInitialize_analog_output_max
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% coupled_tanks_P.HILInitialize_analog_output_min
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% coupled_tanks_P.CompareToConstant_const
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% coupled_tanks_P.HILInitialize_final_analog_outp
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% coupled_tanks_P.HILInitialize_final_pwm_outputs
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% coupled_tanks_P.HILInitialize_initial_analog_ou
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% coupled_tanks_P.HILInitialize_initial_pwm_outpu
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_frequency
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_leading_deadb
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_trailing_dead
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% coupled_tanks_P.HILInitialize_set_other_outputs
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% coupled_tanks_P.HILInitialize_set_other_outpu_d
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% coupled_tanks_P.HILInitialize_set_other_outpu_p
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% coupled_tanks_P.HILInitialize_set_other_outpu_f
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% coupled_tanks_P.HILInitialize_watchdog_analog_o
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% coupled_tanks_P.HILInitialize_watchdog_pwm_outp
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.HILInitialize_hardware_clocks
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.HILInitialize_initial_encoder_c
	  section.data(2).logicalSrcIdx = 19;
	  section.data(2).dtTransOffset = 3;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_alignment
	  section.data(3).logicalSrcIdx = 20;
	  section.data(3).dtTransOffset = 4;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_configuration
	  section.data(4).logicalSrcIdx = 21;
	  section.data(4).dtTransOffset = 5;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_modes
	  section.data(5).logicalSrcIdx = 22;
	  section.data(5).dtTransOffset = 6;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_polarity
	  section.data(6).logicalSrcIdx = 23;
	  section.data(6).dtTransOffset = 7;
	
	  ;% coupled_tanks_P.HILInitialize_watchdog_digital_
	  section.data(7).logicalSrcIdx = 24;
	  section.data(7).dtTransOffset = 8;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.HILInitialize_analog_input_chan
	  section.data(1).logicalSrcIdx = 25;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.HILInitialize_analog_output_cha
	  section.data(2).logicalSrcIdx = 26;
	  section.data(2).dtTransOffset = 8;
	
	  ;% coupled_tanks_P.HILReadAnalog_channels
	  section.data(3).logicalSrcIdx = 27;
	  section.data(3).dtTransOffset = 16;
	
	  ;% coupled_tanks_P.HILWriteAnalog_channels
	  section.data(4).logicalSrcIdx = 28;
	  section.data(4).dtTransOffset = 18;
	
	  ;% coupled_tanks_P.HILInitialize_encoder_channels
	  section.data(5).logicalSrcIdx = 29;
	  section.data(5).dtTransOffset = 19;
	
	  ;% coupled_tanks_P.HILInitialize_pwm_channels
	  section.data(6).logicalSrcIdx = 30;
	  section.data(6).dtTransOffset = 27;
	
	  ;% coupled_tanks_P.HILInitialize_quadrature
	  section.data(7).logicalSrcIdx = 31;
	  section.data(7).dtTransOffset = 35;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 35;
      section.data(35)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.HILInitialize_active
	  section.data(1).logicalSrcIdx = 32;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.HILInitialize_final_digital_out
	  section.data(2).logicalSrcIdx = 33;
	  section.data(2).dtTransOffset = 1;
	
	  ;% coupled_tanks_P.HILInitialize_initial_digital_o
	  section.data(3).logicalSrcIdx = 34;
	  section.data(3).dtTransOffset = 2;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_input_
	  section.data(4).logicalSrcIdx = 35;
	  section.data(4).dtTransOffset = 3;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_inpu_h
	  section.data(5).logicalSrcIdx = 36;
	  section.data(5).dtTransOffset = 4;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_output
	  section.data(6).logicalSrcIdx = 37;
	  section.data(6).dtTransOffset = 5;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_outp_c
	  section.data(7).logicalSrcIdx = 38;
	  section.data(7).dtTransOffset = 6;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_outp_o
	  section.data(8).logicalSrcIdx = 39;
	  section.data(8).dtTransOffset = 7;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_outp_e
	  section.data(9).logicalSrcIdx = 40;
	  section.data(9).dtTransOffset = 8;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_outp_b
	  section.data(10).logicalSrcIdx = 41;
	  section.data(10).dtTransOffset = 9;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_outp_h
	  section.data(11).logicalSrcIdx = 42;
	  section.data(11).dtTransOffset = 10;
	
	  ;% coupled_tanks_P.HILInitialize_set_analog_out_bm
	  section.data(12).logicalSrcIdx = 43;
	  section.data(12).dtTransOffset = 11;
	
	  ;% coupled_tanks_P.HILInitialize_set_clock_frequen
	  section.data(13).logicalSrcIdx = 44;
	  section.data(13).dtTransOffset = 12;
	
	  ;% coupled_tanks_P.HILInitialize_set_clock_frequ_i
	  section.data(14).logicalSrcIdx = 45;
	  section.data(14).dtTransOffset = 13;
	
	  ;% coupled_tanks_P.HILInitialize_set_clock_params_
	  section.data(15).logicalSrcIdx = 46;
	  section.data(15).dtTransOffset = 14;
	
	  ;% coupled_tanks_P.HILInitialize_set_clock_param_n
	  section.data(16).logicalSrcIdx = 47;
	  section.data(16).dtTransOffset = 15;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_outpu
	  section.data(17).logicalSrcIdx = 48;
	  section.data(17).dtTransOffset = 16;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_out_l
	  section.data(18).logicalSrcIdx = 49;
	  section.data(18).dtTransOffset = 17;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_out_k
	  section.data(19).logicalSrcIdx = 50;
	  section.data(19).dtTransOffset = 18;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_out_o
	  section.data(20).logicalSrcIdx = 51;
	  section.data(20).dtTransOffset = 19;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_out_j
	  section.data(21).logicalSrcIdx = 52;
	  section.data(21).dtTransOffset = 20;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_ou_ol
	  section.data(22).logicalSrcIdx = 53;
	  section.data(22).dtTransOffset = 21;
	
	  ;% coupled_tanks_P.HILInitialize_set_digital_out_i
	  section.data(23).logicalSrcIdx = 54;
	  section.data(23).dtTransOffset = 22;
	
	  ;% coupled_tanks_P.HILInitialize_set_encoder_count
	  section.data(24).logicalSrcIdx = 55;
	  section.data(24).dtTransOffset = 23;
	
	  ;% coupled_tanks_P.HILInitialize_set_encoder_cou_e
	  section.data(25).logicalSrcIdx = 56;
	  section.data(25).dtTransOffset = 24;
	
	  ;% coupled_tanks_P.HILInitialize_set_encoder_param
	  section.data(26).logicalSrcIdx = 57;
	  section.data(26).dtTransOffset = 25;
	
	  ;% coupled_tanks_P.HILInitialize_set_encoder_par_a
	  section.data(27).logicalSrcIdx = 58;
	  section.data(27).dtTransOffset = 26;
	
	  ;% coupled_tanks_P.HILInitialize_set_other_outpu_a
	  section.data(28).logicalSrcIdx = 59;
	  section.data(28).dtTransOffset = 27;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_outputs_a
	  section.data(29).logicalSrcIdx = 60;
	  section.data(29).dtTransOffset = 28;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_outputs_i
	  section.data(30).logicalSrcIdx = 61;
	  section.data(30).dtTransOffset = 29;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_outputs_j
	  section.data(31).logicalSrcIdx = 62;
	  section.data(31).dtTransOffset = 30;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_outputs_b
	  section.data(32).logicalSrcIdx = 63;
	  section.data(32).dtTransOffset = 31;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_outputs_o
	  section.data(33).logicalSrcIdx = 64;
	  section.data(33).dtTransOffset = 32;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_params_at
	  section.data(34).logicalSrcIdx = 65;
	  section.data(34).dtTransOffset = 33;
	
	  ;% coupled_tanks_P.HILInitialize_set_pwm_params__e
	  section.data(35).logicalSrcIdx = 66;
	  section.data(35).dtTransOffset = 34;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.VoltstocmTank1_Gain
	  section.data(1).logicalSrcIdx = 67;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.Constant_Value
	  section.data(2).logicalSrcIdx = 68;
	  section.data(2).dtTransOffset = 1;
	
	  ;% coupled_tanks_P.Saturation_UpperSat
	  section.data(3).logicalSrcIdx = 69;
	  section.data(3).dtTransOffset = 2;
	
	  ;% coupled_tanks_P.Saturation_LowerSat
	  section.data(4).logicalSrcIdx = 70;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% coupled_tanks_P.HILReadAnalog_Active
	  section.data(1).logicalSrcIdx = 71;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_P.HILWriteAnalog_Active
	  section.data(2).logicalSrcIdx = 72;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (coupled_tanks_B)
    ;%
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% coupled_tanks_B.Constant
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_B.Clock
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% coupled_tanks_B.TmpSignalConversionAtToWorkspac
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 5;
    sectIdxOffset = 1;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (coupled_tanks_DW)
    ;%
      section.nData     = 9;
      section.data(9)  = dumData; %prealloc
      
	  ;% coupled_tanks_DW.HILInitialize_AIMinimums
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_DW.HILInitialize_AIMaximums
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 8;
	
	  ;% coupled_tanks_DW.HILInitialize_AOMinimums
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 16;
	
	  ;% coupled_tanks_DW.HILInitialize_AOMaximums
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 24;
	
	  ;% coupled_tanks_DW.HILInitialize_AOVoltages
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 32;
	
	  ;% coupled_tanks_DW.HILInitialize_FilterFrequency
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 40;
	
	  ;% coupled_tanks_DW.HILInitialize_POSortedFreqs
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 48;
	
	  ;% coupled_tanks_DW.HILInitialize_POValues
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 56;
	
	  ;% coupled_tanks_DW.HILReadAnalog_Buffer
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 64;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% coupled_tanks_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% coupled_tanks_DW.HILReadAnalog_PWORK
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_DW.HILWriteAnalog_PWORK
	  section.data(2).logicalSrcIdx = 11;
	  section.data(2).dtTransOffset = 1;
	
	  ;% coupled_tanks_DW.ToWorkspace_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 12;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% coupled_tanks_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% coupled_tanks_DW.HILInitialize_QuadratureModes
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 3;
	
	  ;% coupled_tanks_DW.HILInitialize_InitialEICounts
	  section.data(3).logicalSrcIdx = 15;
	  section.data(3).dtTransOffset = 11;
	
	  ;% coupled_tanks_DW.HILInitialize_POModeValues
	  section.data(4).logicalSrcIdx = 16;
	  section.data(4).dtTransOffset = 19;
	
	  ;% coupled_tanks_DW.HILInitialize_POAlignValues
	  section.data(5).logicalSrcIdx = 17;
	  section.data(5).dtTransOffset = 27;
	
	  ;% coupled_tanks_DW.HILInitialize_POPolarityVals
	  section.data(6).logicalSrcIdx = 18;
	  section.data(6).dtTransOffset = 35;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% coupled_tanks_DW.HILInitialize_POSortedChans
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3082748089;
  targMap.checksum1 = 3775557808;
  targMap.checksum2 = 4289032521;
  targMap.checksum3 = 2611712617;

