
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.11.0.396.4

-- ldbanno -n VHDL -o Contador_Counter_mapvho.vho -w -neg -gui -msgset C:/Users/ASUS/Desktop/Contador/promote.xml Contador_Counter_map.ncd 
-- Netlist created on Fri Jul 30 23:49:46 2021
-- Netlist written on Fri Jul 30 23:49:48 2021
-- Design is for device LCMXO2-4000HC
-- Design is for package CSBGA132
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7777")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    i30_2_lut: lut4
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity xB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "xB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_xS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; xS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xB : ENTITY IS TRUE;

  end xB;

  architecture Structure of xB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal xS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    x_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>xS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, xS_out)
    VARIABLE xS_zd         	: std_logic := 'X';
    VARIABLE xS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    xS_zd 	:= xS_out;

    VitalPathDelay01 (
      OutSignal => xS, OutSignalName => "xS", OutTemp => xS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_xS,
                           PathCondition => TRUE)),
      GlitchData => xS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0001 : ENTITY IS TRUE;

  end xo2iobuf0001;

  architecture Structure of xo2iobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity aB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity aB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "aB";

      tipd_aS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_aS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_aS 	: VitalDelayType := 0 ns;
      tpw_aS_posedge	: VitalDelayType := 0 ns;
      tpw_aS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; aS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF aB : ENTITY IS TRUE;

  end aB;

  architecture Structure of aB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal aS_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>aS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(aS_ipd, aS, tipd_aS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, aS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_aS_aS          	: x01 := '0';
    VARIABLE periodcheckinfo_aS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => aS_ipd,
        TestSignalName => "aS",
        Period => tperiod_aS,
        PulseWidthHigh => tpw_aS_posedge,
        PulseWidthLow => tpw_aS_negedge,
        PeriodData => periodcheckinfo_aS,
        Violation => tviol_aS_aS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => aS_ipd'last_event,
                           PathDelay => tpd_aS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity bB0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity bB0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "bB0";

      tipd_bS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_bS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_bS 	: VitalDelayType := 0 ns;
      tpw_bS_posedge	: VitalDelayType := 0 ns;
      tpw_bS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; bS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF bB0 : ENTITY IS TRUE;

  end bB0;

  architecture Structure of bB0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal bS_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    b_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>bS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(bS_ipd, bS, tipd_bS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, bS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_bS_bS          	: x01 := '0';
    VARIABLE periodcheckinfo_bS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => bS_ipd,
        TestSignalName => "bS",
        Period => tperiod_bS,
        PulseWidthHigh => tpw_bS_posedge,
        PulseWidthLow => tpw_bS_negedge,
        PeriodData => periodcheckinfo_bS,
        Violation => tviol_bS_bS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => bS_ipd'last_event,
                           PathDelay => tpd_bS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity top is
    port (a: in Std_logic; b: in Std_logic; x: out Std_logic);



  end top;

  architecture Structure of top is
    signal b_c: Std_logic;
    signal a_c: Std_logic;
    signal x_c: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component xB
      port (PADDO: in Std_logic; xS: out Std_logic);
    end component;
    component aB
      port (PADDI: out Std_logic; aS: in Std_logic);
    end component;
    component bB0
      port (PADDI: out Std_logic; bS: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (B0=>b_c, A0=>a_c, F0=>x_c);
    xI: xB
      port map (PADDO=>x_c, xS=>x);
    aI: aB
      port map (PADDI=>a_c, aS=>a);
    bI: bB0
      port map (PADDI=>b_c, bS=>b);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of top is
    for Structure
    end for;
  end Structure_CON;


