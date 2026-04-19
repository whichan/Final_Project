-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 12:20:15 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project/PROJECT/4.Final_Project/Final_Project/z7-20/z720-Pcam/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.vhdl
-- Design      : system_MIPI_CSI_2_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_ECC is
  port (
    sValid_reg_0 : out STD_LOGIC;
    sError_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_sState_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sHeaderOut_reg[5]_0\ : out STD_LOGIC;
    mReg_Tuser0 : out STD_LOGIC;
    m_axis_tready : out STD_LOGIC;
    \goreg_dm.dout_i_reg[0]\ : out STD_LOGIC;
    mIsHeader0 : out STD_LOGIC;
    mKeep0_out : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sErrSyndrome_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[4]_0\ : out STD_LOGIC;
    sValid_reg_4 : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    sError_reg_1 : in STD_LOGIC;
    \mWordCount_reg[3]\ : in STD_LOGIC;
    \mWordCount_reg[3]_0\ : in STD_LOGIC;
    \mWordCount_reg[7]\ : in STD_LOGIC;
    \mWordCount_reg[7]_0\ : in STD_LOGIC;
    \mWordCount_reg[7]_1\ : in STD_LOGIC;
    \mWordCount_reg[7]_2\ : in STD_LOGIC;
    \mWordCount_reg[11]\ : in STD_LOGIC;
    \mWordCount_reg[11]_0\ : in STD_LOGIC;
    \mWordCount_reg[11]_1\ : in STD_LOGIC;
    \mWordCount_reg[11]_2\ : in STD_LOGIC;
    \mWordCount_reg[15]\ : in STD_LOGIC;
    \mWordCount_reg[15]_0\ : in STD_LOGIC;
    \mWordCount_reg[15]_1\ : in STD_LOGIC;
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : in STD_LOGIC;
    \sECCIn_reg[0]_0\ : in STD_LOGIC;
    \mWordCount_reg[0]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    mFlush_reg : in STD_LOGIC;
    mFlush_reg_0 : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mWordCount_reg[15]_2\ : in STD_LOGIC;
    \mWordCount_reg[3]_1\ : in STD_LOGIC;
    \mWordCount_reg[3]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_ECC : entity is "ECC";
end system_MIPI_CSI_2_RX_0_0_ECC;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_ECC is
  signal \FSM_onehot_sState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sState[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_sstate_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_sState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sState_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mFlush_i_2_n_0 : STD_LOGIC;
  signal \^misheader0\ : STD_LOGIC;
  signal mKeep_i_3_n_0 : STD_LOGIC;
  signal \mReg_Tuser[0]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_10_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_11_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \sDataIn[23]_i_1_n_0\ : STD_LOGIC;
  signal sErrSyndrome : STD_LOGIC;
  signal sErrSyndrome0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sErrSyndrome[0]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[1]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[1]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[2]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[2]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[3]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[3]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[4]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[4]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[5]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[5]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome_reg_n_0_[4]\ : STD_LOGIC;
  signal \sErrSyndrome_reg_n_0_[5]\ : STD_LOGIC;
  signal \^serror_reg_0\ : STD_LOGIC;
  signal \sHeaderOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[10]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[11]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[12]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[13]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[14]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[16]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[17]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[18]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[19]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[20]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[21]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[22]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_2_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_3_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_4_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_5_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_6_n_0\ : STD_LOGIC;
  signal \sHeaderOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[4]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[5]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[8]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_2_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_3_n_0\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[0]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[10]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[11]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[12]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[13]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[14]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[15]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[16]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[17]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[18]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[19]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[1]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[20]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[21]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[22]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[23]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[2]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[3]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[4]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[5]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[8]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[9]\ : STD_LOGIC;
  signal \^svalid_reg_0\ : STD_LOGIC;
  signal \NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[0]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[1]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[2]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[3]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mFlush_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of mKeep_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mReg_Tuser[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mWordCount[0]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mWordCount_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[8]_i_1\ : label is 11;
begin
  \FSM_onehot_sState_reg[3]_0\(0) <= \^fsm_onehot_sstate_reg[3]_0\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  mIsHeader0 <= \^misheader0\;
  sError_reg_0 <= \^serror_reg_0\;
  sValid_reg_0 <= \^svalid_reg_0\;
DataFIFO_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      I3 => s_axis_tready,
      I4 => mFlush_reg,
      I5 => mFlush_reg_0,
      O => m_axis_tready
    );
\FSM_onehot_sState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_sstate_reg[3]_0\(0),
      I1 => \FSM_onehot_sState_reg_n_0_[0]\,
      O => \FSM_onehot_sState[1]_i_1_n_0\
    );
\FSM_onehot_sState[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \sECCIn_reg[0]_0\,
      I2 => \FSM_onehot_sState_reg_n_0_[1]\,
      I3 => \^fsm_onehot_sstate_reg[3]_0\(0),
      I4 => \FSM_onehot_sState_reg_n_0_[0]\,
      I5 => sErrSyndrome,
      O => \FSM_onehot_sState[3]_i_1_n_0\
    );
\FSM_onehot_sState_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_sState_reg_n_0_[0]\,
      S => \out\(0)
    );
\FSM_onehot_sState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => \FSM_onehot_sState[1]_i_1_n_0\,
      Q => \FSM_onehot_sState_reg_n_0_[1]\,
      R => \out\(0)
    );
\FSM_onehot_sState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => \FSM_onehot_sState_reg_n_0_[1]\,
      Q => sErrSyndrome,
      R => \out\(0)
    );
\FSM_onehot_sState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => sErrSyndrome,
      Q => \^fsm_onehot_sstate_reg[3]_0\(0),
      R => \out\(0)
    );
mFlush_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077770007"
    )
        port map (
      I0 => \^misheader0\,
      I1 => m_axis_tlast,
      I2 => mFlush_i_2_n_0,
      I3 => \sECCIn_reg[0]_0\,
      I4 => mFlush_reg_0,
      I5 => \out\(0),
      O => \goreg_dm.dout_i_reg[0]\
    );
mFlush_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => \^serror_reg_0\,
      O => mFlush_i_2_n_0
    );
mIsHeader_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F0F0F0808080"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      I3 => s_axis_tready,
      I4 => mFlush_reg,
      I5 => mFlush_reg_0,
      O => \^misheader0\
    );
mKeep_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[4]\,
      I1 => \sHeaderOut_reg_n_0_[2]\,
      I2 => \sHeaderOut_reg_n_0_[0]\,
      I3 => mKeep_i_3_n_0,
      O => mKeep0_out
    );
mKeep_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \^svalid_reg_0\,
      I2 => \sHeaderOut_reg_n_0_[3]\,
      I3 => \sHeaderOut_reg_n_0_[1]\,
      O => mKeep_i_3_n_0
    );
\mReg_Tuser[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[2]\,
      I1 => \^svalid_reg_0\,
      I2 => \sHeaderOut_reg_n_0_[0]\,
      I3 => \sHeaderOut_reg_n_0_[1]\,
      I4 => \sHeaderOut_reg_n_0_[3]\,
      I5 => \mReg_Tuser[0]_i_3_n_0\,
      O => mReg_Tuser0
    );
\mReg_Tuser[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \sHeaderOut_reg_n_0_[4]\,
      O => \mReg_Tuser[0]_i_3_n_0\
    );
\mWordCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0EFE0"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \sHeaderOut_reg_n_0_[4]\,
      I2 => \^svalid_reg_0\,
      I3 => m_axis_tkeep(0),
      I4 => \mWordCount_reg[0]\,
      O => \sHeaderOut_reg[5]_0\
    );
\mWordCount[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF807F0000807F"
    )
        port map (
      I0 => m_axis_tkeep(2),
      I1 => m_axis_tkeep(1),
      I2 => m_axis_tkeep(0),
      I3 => \mWordCount_reg[3]_2\,
      I4 => \^svalid_reg_0\,
      I5 => \sHeaderOut_reg_n_0_[9]\,
      O => \mWordCount[0]_i_10_n_0\
    );
\mWordCount[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \mWordCount[0]_i_7_n_0\,
      I1 => \mWordCount_reg[3]_1\,
      I2 => \^svalid_reg_0\,
      I3 => \sHeaderOut_reg_n_0_[8]\,
      O => \mWordCount[0]_i_11_n_0\
    );
\mWordCount[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_4_n_0\
    );
\mWordCount[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_5_n_0\
    );
\mWordCount[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => m_axis_tkeep(0),
      I2 => m_axis_tkeep(1),
      I3 => m_axis_tkeep(2),
      O => \mWordCount[0]_i_6_n_0\
    );
\mWordCount[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04555555"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => m_axis_tkeep(2),
      I2 => m_axis_tkeep(3),
      I3 => m_axis_tkeep(0),
      I4 => m_axis_tkeep(1),
      O => \mWordCount[0]_i_7_n_0\
    );
\mWordCount[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[3]_0\,
      I1 => \sHeaderOut_reg_n_0_[11]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_8_n_0\
    );
\mWordCount[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[3]\,
      I1 => \sHeaderOut_reg_n_0_[10]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_9_n_0\
    );
\mWordCount[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_2_n_0\
    );
\mWordCount[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_3_n_0\
    );
\mWordCount[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_4_n_0\
    );
\mWordCount[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[23]\,
      I1 => \mWordCount_reg[15]_2\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_5_n_0\
    );
\mWordCount[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]_1\,
      I1 => \sHeaderOut_reg_n_0_[22]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_6_n_0\
    );
\mWordCount[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]_0\,
      I1 => \sHeaderOut_reg_n_0_[21]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_7_n_0\
    );
\mWordCount[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]\,
      I1 => \sHeaderOut_reg_n_0_[20]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_8_n_0\
    );
\mWordCount[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_2_n_0\
    );
\mWordCount[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_3_n_0\
    );
\mWordCount[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_4_n_0\
    );
\mWordCount[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_5_n_0\
    );
\mWordCount[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_2\,
      I1 => \sHeaderOut_reg_n_0_[15]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_6_n_0\
    );
\mWordCount[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_1\,
      I1 => \sHeaderOut_reg_n_0_[14]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_7_n_0\
    );
\mWordCount[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_0\,
      I1 => \sHeaderOut_reg_n_0_[13]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_8_n_0\
    );
\mWordCount[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]\,
      I1 => \sHeaderOut_reg_n_0_[12]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_9_n_0\
    );
\mWordCount[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_2_n_0\
    );
\mWordCount[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_3_n_0\
    );
\mWordCount[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_4_n_0\
    );
\mWordCount[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_5_n_0\
    );
\mWordCount[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_2\,
      I1 => \sHeaderOut_reg_n_0_[19]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_6_n_0\
    );
\mWordCount[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_1\,
      I1 => \sHeaderOut_reg_n_0_[18]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_7_n_0\
    );
\mWordCount[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_0\,
      I1 => \sHeaderOut_reg_n_0_[17]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_8_n_0\
    );
\mWordCount[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]\,
      I1 => \sHeaderOut_reg_n_0_[16]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_9_n_0\
    );
\mWordCount_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mWordCount_reg[0]_i_2_n_0\,
      CO(2) => \mWordCount_reg[0]_i_2_n_1\,
      CO(1) => \mWordCount_reg[0]_i_2_n_2\,
      CO(0) => \mWordCount_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[0]_i_4_n_0\,
      DI(2) => \mWordCount[0]_i_5_n_0\,
      DI(1) => \mWordCount[0]_i_6_n_0\,
      DI(0) => \mWordCount[0]_i_7_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \mWordCount[0]_i_8_n_0\,
      S(2) => \mWordCount[0]_i_9_n_0\,
      S(1) => \mWordCount[0]_i_10_n_0\,
      S(0) => \mWordCount[0]_i_11_n_0\
    );
\mWordCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[8]_i_1_n_0\,
      CO(3) => \NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mWordCount_reg[12]_i_1_n_1\,
      CO(1) => \mWordCount_reg[12]_i_1_n_2\,
      CO(0) => \mWordCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \mWordCount[12]_i_2_n_0\,
      DI(1) => \mWordCount[12]_i_3_n_0\,
      DI(0) => \mWordCount[12]_i_4_n_0\,
      O(3 downto 0) => sValid_reg_3(3 downto 0),
      S(3) => \mWordCount[12]_i_5_n_0\,
      S(2) => \mWordCount[12]_i_6_n_0\,
      S(1) => \mWordCount[12]_i_7_n_0\,
      S(0) => \mWordCount[12]_i_8_n_0\
    );
\mWordCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[0]_i_2_n_0\,
      CO(3) => \mWordCount_reg[4]_i_1_n_0\,
      CO(2) => \mWordCount_reg[4]_i_1_n_1\,
      CO(1) => \mWordCount_reg[4]_i_1_n_2\,
      CO(0) => \mWordCount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[4]_i_2_n_0\,
      DI(2) => \mWordCount[4]_i_3_n_0\,
      DI(1) => \mWordCount[4]_i_4_n_0\,
      DI(0) => \mWordCount[4]_i_5_n_0\,
      O(3 downto 0) => sValid_reg_1(3 downto 0),
      S(3) => \mWordCount[4]_i_6_n_0\,
      S(2) => \mWordCount[4]_i_7_n_0\,
      S(1) => \mWordCount[4]_i_8_n_0\,
      S(0) => \mWordCount[4]_i_9_n_0\
    );
\mWordCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[4]_i_1_n_0\,
      CO(3) => \mWordCount_reg[8]_i_1_n_0\,
      CO(2) => \mWordCount_reg[8]_i_1_n_1\,
      CO(1) => \mWordCount_reg[8]_i_1_n_2\,
      CO(0) => \mWordCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[8]_i_2_n_0\,
      DI(2) => \mWordCount[8]_i_3_n_0\,
      DI(1) => \mWordCount[8]_i_4_n_0\,
      DI(0) => \mWordCount[8]_i_5_n_0\,
      O(3 downto 0) => sValid_reg_2(3 downto 0),
      S(3) => \mWordCount[8]_i_6_n_0\,
      S(2) => \mWordCount[8]_i_7_n_0\,
      S(1) => \mWordCount[8]_i_8_n_0\,
      S(0) => \mWordCount[8]_i_9_n_0\
    );
\sDataIn[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      O => \sDataIn[23]_i_1_n_0\
    );
\sDataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(0),
      Q => p_1_in(0),
      R => '0'
    );
\sDataIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(10),
      Q => p_1_in(10),
      R => '0'
    );
\sDataIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(11),
      Q => p_1_in(11),
      R => '0'
    );
\sDataIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(12),
      Q => p_1_in(12),
      R => '0'
    );
\sDataIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(13),
      Q => p_1_in(13),
      R => '0'
    );
\sDataIn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(14),
      Q => p_1_in(14),
      R => '0'
    );
\sDataIn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(15),
      Q => p_1_in(15),
      R => '0'
    );
\sDataIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(16),
      Q => p_1_in(16),
      R => '0'
    );
\sDataIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(17),
      Q => p_1_in(17),
      R => '0'
    );
\sDataIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(18),
      Q => p_1_in(18),
      R => '0'
    );
\sDataIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(19),
      Q => p_1_in(19),
      R => '0'
    );
\sDataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(1),
      Q => p_1_in(1),
      R => '0'
    );
\sDataIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(20),
      Q => p_1_in(20),
      R => '0'
    );
\sDataIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(21),
      Q => p_1_in(21),
      R => '0'
    );
\sDataIn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(22),
      Q => p_1_in(22),
      R => '0'
    );
\sDataIn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(23),
      Q => p_1_in(23),
      R => '0'
    );
\sDataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(2),
      Q => p_1_in(2),
      R => '0'
    );
\sDataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(3),
      Q => p_1_in(3),
      R => '0'
    );
\sDataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(4),
      Q => p_1_in(4),
      R => '0'
    );
\sDataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(5),
      Q => p_1_in(5),
      R => '0'
    );
\sDataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(6),
      Q => p_1_in(6),
      R => '0'
    );
\sDataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(7),
      Q => p_1_in(7),
      R => '0'
    );
\sDataIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(8),
      Q => p_1_in(8),
      R => '0'
    );
\sDataIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(9),
      Q => p_1_in(9),
      R => '0'
    );
\sECCIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(24),
      Q => p_1_in(24),
      R => '0'
    );
\sECCIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(25),
      Q => p_1_in(25),
      R => '0'
    );
\sECCIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(26),
      Q => p_1_in(26),
      R => '0'
    );
\sECCIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(27),
      Q => p_1_in(27),
      R => '0'
    );
\sECCIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(28),
      Q => p_1_in(28),
      R => '0'
    );
\sECCIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(29),
      Q => p_1_in(29),
      R => '0'
    );
\sErrSyndrome[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \sErrSyndrome[1]_i_2_n_0\,
      I1 => \sErrSyndrome[0]_i_2_n_0\,
      I2 => p_1_in(11),
      I3 => p_1_in(24),
      I4 => p_1_in(2),
      O => sErrSyndrome0(0)
    );
\sErrSyndrome[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(13),
      I1 => p_1_in(7),
      I2 => p_1_in(21),
      I3 => p_1_in(22),
      I4 => p_1_in(16),
      I5 => p_1_in(5),
      O => \sErrSyndrome[0]_i_2_n_0\
    );
\sErrSyndrome[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \sErrSyndrome[1]_i_2_n_0\,
      I1 => \sErrSyndrome[1]_i_3_n_0\,
      I2 => p_1_in(14),
      I3 => p_1_in(25),
      I4 => p_1_in(12),
      O => sErrSyndrome0(1)
    );
\sErrSyndrome[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      I3 => p_1_in(10),
      I4 => p_1_in(23),
      I5 => p_1_in(4),
      O => \sErrSyndrome[1]_i_2_n_0\
    );
\sErrSyndrome[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(17),
      I1 => p_1_in(8),
      I2 => p_1_in(21),
      I3 => p_1_in(22),
      I4 => p_1_in(6),
      I5 => p_1_in(3),
      O => \sErrSyndrome[1]_i_3_n_0\
    );
\sErrSyndrome[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[2]_i_2_n_0\,
      I1 => \sErrSyndrome[2]_i_3_n_0\,
      I2 => p_1_in(26),
      I3 => p_1_in(21),
      O => sErrSyndrome0(2)
    );
\sErrSyndrome[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_1_in(15),
      I2 => p_1_in(0),
      I3 => p_1_in(2),
      I4 => p_1_in(22),
      I5 => p_1_in(20),
      O => \sErrSyndrome[2]_i_2_n_0\
    );
\sErrSyndrome[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(11),
      I1 => p_1_in(12),
      I2 => p_1_in(3),
      I3 => p_1_in(9),
      I4 => p_1_in(5),
      I5 => p_1_in(6),
      O => \sErrSyndrome[2]_i_3_n_0\
    );
\sErrSyndrome[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[3]_i_2_n_0\,
      I1 => \sErrSyndrome[3]_i_3_n_0\,
      I2 => p_1_in(27),
      I3 => p_1_in(19),
      O => sErrSyndrome0(3)
    );
\sErrSyndrome[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_1_in(1),
      I2 => p_1_in(7),
      I3 => p_1_in(14),
      I4 => p_1_in(23),
      I5 => p_1_in(2),
      O => \sErrSyndrome[3]_i_2_n_0\
    );
\sErrSyndrome[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(13),
      I1 => p_1_in(8),
      I2 => p_1_in(21),
      I3 => p_1_in(15),
      I4 => p_1_in(3),
      I5 => p_1_in(9),
      O => \sErrSyndrome[3]_i_3_n_0\
    );
\sErrSyndrome[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[4]_i_2_n_0\,
      I1 => \sErrSyndrome[4]_i_3_n_0\,
      I2 => p_1_in(28),
      I3 => p_1_in(20),
      O => sErrSyndrome0(4)
    );
\sErrSyndrome[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(23),
      I2 => p_1_in(16),
      I3 => p_1_in(5),
      I4 => p_1_in(7),
      I5 => p_1_in(8),
      O => \sErrSyndrome[4]_i_2_n_0\
    );
\sErrSyndrome[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(6),
      I1 => p_1_in(17),
      I2 => p_1_in(22),
      I3 => p_1_in(19),
      I4 => p_1_in(9),
      I5 => p_1_in(18),
      O => \sErrSyndrome[4]_i_3_n_0\
    );
\sErrSyndrome[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[5]_i_2_n_0\,
      I1 => \sErrSyndrome[5]_i_3_n_0\,
      I2 => p_1_in(29),
      I3 => p_1_in(23),
      O => sErrSyndrome0(5)
    );
\sErrSyndrome[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(12),
      I1 => p_1_in(10),
      I2 => p_1_in(13),
      I3 => p_1_in(16),
      I4 => p_1_in(11),
      I5 => p_1_in(14),
      O => \sErrSyndrome[5]_i_2_n_0\
    );
\sErrSyndrome[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(21),
      I1 => p_1_in(17),
      I2 => p_1_in(22),
      I3 => p_1_in(19),
      I4 => p_1_in(15),
      I5 => p_1_in(18),
      O => \sErrSyndrome[5]_i_3_n_0\
    );
\sErrSyndrome_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(0),
      Q => \^q\(0),
      R => '0'
    );
\sErrSyndrome_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(1),
      Q => \^q\(1),
      R => '0'
    );
\sErrSyndrome_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(2),
      Q => \^q\(2),
      R => '0'
    );
\sErrSyndrome_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(3),
      Q => \^q\(3),
      R => '0'
    );
\sErrSyndrome_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(4),
      Q => \sErrSyndrome_reg_n_0_[4]\,
      R => '0'
    );
\sErrSyndrome_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(5),
      Q => \sErrSyndrome_reg_n_0_[5]\,
      R => '0'
    );
sError_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sErrSyndrome_reg[4]_0\
    );
sError_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => sError_reg_1,
      Q => \^serror_reg_0\,
      R => '0'
    );
\sHeaderOut[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => \sHeaderOut[9]_i_2_n_0\,
      I5 => p_1_in(0),
      O => \sHeaderOut[0]_i_1_n_0\
    );
\sHeaderOut[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(10),
      O => \sHeaderOut[10]_i_1_n_0\
    );
\sHeaderOut[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(11),
      O => \sHeaderOut[11]_i_1_n_0\
    );
\sHeaderOut[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(12),
      O => \sHeaderOut[12]_i_1_n_0\
    );
\sHeaderOut[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00001000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(13),
      O => \sHeaderOut[13]_i_1_n_0\
    );
\sHeaderOut[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000800"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(14),
      O => \sHeaderOut[14]_i_1_n_0\
    );
\sHeaderOut[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000400"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(15),
      O => \sHeaderOut[15]_i_1_n_0\
    );
\sHeaderOut[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000400"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(16),
      O => \sHeaderOut[16]_i_1_n_0\
    );
\sHeaderOut[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000100"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(17),
      O => \sHeaderOut[17]_i_1_n_0\
    );
\sHeaderOut[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000080"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(18),
      O => \sHeaderOut[18]_i_1_n_0\
    );
\sHeaderOut[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000040"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(19),
      O => \sHeaderOut[19]_i_1_n_0\
    );
\sHeaderOut[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => \sHeaderOut[9]_i_2_n_0\,
      I5 => p_1_in(1),
      O => \sHeaderOut[1]_i_1_n_0\
    );
\sHeaderOut[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000040"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(20),
      O => \sHeaderOut[20]_i_1_n_0\
    );
\sHeaderOut[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000010"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(21),
      O => \sHeaderOut[21]_i_1_n_0\
    );
\sHeaderOut[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000008"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(22),
      O => \sHeaderOut[22]_i_1_n_0\
    );
\sHeaderOut[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000004"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(23),
      O => \sHeaderOut[23]_i_1_n_0\
    );
\sHeaderOut[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0092044984492196"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[4]\,
      I5 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sHeaderOut[23]_i_2_n_0\
    );
\sHeaderOut[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FEDEBD6FDBEDE68"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \sHeaderOut[23]_i_3_n_0\
    );
\sHeaderOut[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0810120886206080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \sErrSyndrome_reg_n_0_[5]\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \sErrSyndrome_reg_n_0_[4]\,
      O => \sHeaderOut[23]_i_4_n_0\
    );
\sHeaderOut[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977DFF96FF96D668"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \sErrSyndrome_reg_n_0_[5]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \sHeaderOut[23]_i_5_n_0\
    );
\sHeaderOut[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D77B7BB6FBB6B668"
    )
        port map (
      I0 => \^q\(0),
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      I2 => \^q\(3),
      I3 => \sErrSyndrome_reg_n_0_[4]\,
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \sHeaderOut[23]_i_6_n_0\
    );
\sHeaderOut[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(2),
      O => \sHeaderOut[2]_i_1_n_0\
    );
\sHeaderOut[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(3),
      O => \sHeaderOut[3]_i_1_n_0\
    );
\sHeaderOut[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_2_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(4),
      O => \sHeaderOut[4]_i_1_n_0\
    );
\sHeaderOut[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_2_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(5),
      O => \sHeaderOut[5]_i_1_n_0\
    );
\sHeaderOut[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[9]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => p_1_in(8),
      O => \sHeaderOut[8]_i_1_n_0\
    );
\sHeaderOut[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[9]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => p_1_in(9),
      O => \sHeaderOut[9]_i_1_n_0\
    );
\sHeaderOut[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEB9FFFFF977F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \sErrSyndrome_reg_n_0_[4]\,
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[5]\,
      I5 => \^q\(0),
      O => \sHeaderOut[9]_i_2_n_0\
    );
\sHeaderOut[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0890926996616197"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \sErrSyndrome_reg_n_0_[5]\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \sErrSyndrome_reg_n_0_[4]\,
      O => \sHeaderOut[9]_i_3_n_0\
    );
\sHeaderOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[0]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[0]\,
      R => '0'
    );
\sHeaderOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[10]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[10]\,
      R => '0'
    );
\sHeaderOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[11]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[11]\,
      R => '0'
    );
\sHeaderOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[12]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[12]\,
      R => '0'
    );
\sHeaderOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[13]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[13]\,
      R => '0'
    );
\sHeaderOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[14]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[14]\,
      R => '0'
    );
\sHeaderOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[15]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[15]\,
      R => '0'
    );
\sHeaderOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[16]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[16]\,
      R => '0'
    );
\sHeaderOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[17]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[17]\,
      R => '0'
    );
\sHeaderOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[18]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[18]\,
      R => '0'
    );
\sHeaderOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[19]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[19]\,
      R => '0'
    );
\sHeaderOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[1]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[1]\,
      R => '0'
    );
\sHeaderOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[20]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[20]\,
      R => '0'
    );
\sHeaderOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[21]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[21]\,
      R => '0'
    );
\sHeaderOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[22]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[22]\,
      R => '0'
    );
\sHeaderOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[23]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[23]\,
      R => '0'
    );
\sHeaderOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[2]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[2]\,
      R => '0'
    );
\sHeaderOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[3]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[3]\,
      R => '0'
    );
\sHeaderOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[4]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[4]\,
      R => '0'
    );
\sHeaderOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[5]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[5]\,
      R => '0'
    );
\sHeaderOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[8]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[8]\,
      R => '0'
    );
\sHeaderOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[9]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[9]\,
      R => '0'
    );
sValid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0996966996696997"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[4]\,
      I5 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sErrSyndrome_reg[0]_0\
    );
sValid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => sValid_reg_4,
      Q => \^svalid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE : entity is "MIPI_CSI_2_RX_S_AXI_LITE";
end system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \control_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \control_reg[31]_i_2\ : label is "soft_lutpair48";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(1),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s_axi_lite_bready,
      I5 => \^s_axi_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \control_reg_reg_n_0_[16]\,
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \^q\(1),
      I2 => axi_araddr(3),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[2]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[3]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[4]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[5]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[6]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[7]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_lite_rvalid\,
      I3 => s_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\control_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(1),
      O => \control_reg[15]_i_1_n_0\
    );
\control_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(2),
      O => \control_reg[23]_i_1_n_0\
    );
\control_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(3),
      O => \control_reg[31]_i_1_n_0\
    );
\control_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s_axi_lite_wvalid,
      I3 => s_axi_lite_awvalid,
      O => \slv_reg_wren__0\
    );
\control_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(0),
      O => \control_reg[7]_i_1_n_0\
    );
\control_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => \control_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => \control_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => \control_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => \control_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => \control_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => \control_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => \control_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => \control_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => \control_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => \control_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => \^q\(1),
      S => axi_awready_i_1_n_0
    );
\control_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => \control_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => \control_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => \control_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => \control_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => \control_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => \control_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => \control_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => \control_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => \control_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => \control_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => \control_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => \control_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => \control_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => \control_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => \control_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => \control_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => \control_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => \control_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => \control_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => \control_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SimpleFIFO is
  port (
    iEmptyInt_reg_0 : out STD_LOGIC;
    iFullInt_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rbByteCnt_reg[1]\ : out STD_LOGIC;
    rbNstate : out STD_LOGIC;
    iDataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \andv__0\ : out STD_LOGIC;
    \rbState_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rbRst : in STD_LOGIC;
    iRdA0 : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    rbEnInt : in STD_LOGIC;
    iEmptyInt_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbMAxisTvalidInt_reg : in STD_LOGIC;
    rbMAxisTvalidInt_reg_0 : in STD_LOGIC;
    \rbState_reg[0]_0\ : in STD_LOGIC;
    \rbState[2]_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rbMAxisTvalidInt_reg_1 : in STD_LOGIC;
    \rbState[2]_i_4_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbMAxisTvalidInt_reg_2 : in STD_LOGIC;
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SimpleFIFO : entity is "SimpleFIFO";
end system_MIPI_CSI_2_RX_0_0_SimpleFIFO;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SimpleFIFO is
  signal FIFO_reg_0_31_6_10_n_2 : STD_LOGIC;
  signal \^idataout\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \iEmptyInt1__8\ : STD_LOGIC;
  signal iEmptyInt_i_1_n_0 : STD_LOGIC;
  signal iEmptyInt_i_3_n_0 : STD_LOGIC;
  signal iEmptyInt_i_4_n_0 : STD_LOGIC;
  signal \^iemptyint_reg_0\ : STD_LOGIC;
  signal \iFullInt2__8\ : STD_LOGIC;
  signal iFullInt_i_1_n_0 : STD_LOGIC;
  signal iFullInt_i_3_n_0 : STD_LOGIC;
  signal iFullInt_i_4_n_0 : STD_LOGIC;
  signal \^ifullint_reg_0\ : STD_LOGIC;
  signal iRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iRdA[0]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[1]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[2]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[3]_i_2_n_0\ : STD_LOGIC;
  signal \iRdA[4]_i_1_n_0\ : STD_LOGIC;
  signal iWrA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iWrA[0]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[1]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[2]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[3]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_2_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_3_n_0\ : STD_LOGIC;
  signal \^rbbytecnt_reg[1]\ : STD_LOGIC;
  signal \rbState[2]_i_5_n_0\ : STD_LOGIC;
  signal \rbState[2]_i_6_n_0\ : STD_LOGIC;
  signal NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of FIFO_reg_0_31_0_5 : label is 352;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_0_5 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of FIFO_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of FIFO_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_6_10 : label is "";
  attribute RTL_RAM_BITS of FIFO_reg_0_31_6_10 : label is 352;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_6_10 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_6_10 : label is "RAM_SDP";
  attribute ram_addr_begin of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_addr_end of FIFO_reg_0_31_6_10 : label is 31;
  attribute ram_offset of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_slice_begin of FIFO_reg_0_31_6_10 : label is 6;
  attribute ram_slice_end of FIFO_reg_0_31_6_10 : label is 10;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of iEmptyInt_i_4 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of iFullInt_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \iRdA[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \iRdA[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \iRdA[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \iRdA[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iRdA[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iWrA[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \iWrA[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \iWrA[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \iWrA[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \iWrA[4]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rbTdataInt[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rbTdataInt[7]_i_1\ : label is "soft_lutpair31";
begin
  iDataOut(9 downto 0) <= \^idataout\(9 downto 0);
  iEmptyInt_reg_0 <= \^iemptyint_reg_0\;
  iFullInt_reg_0 <= \^ifullint_reg_0\;
  \rbByteCnt_reg[1]\ <= \^rbbytecnt_reg[1]\;
FIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => iDataIn(1 downto 0),
      DIB(1 downto 0) => iDataIn(3 downto 2),
      DIC(1 downto 0) => iDataIn(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(1 downto 0),
      DOB(1 downto 0) => \^idataout\(3 downto 2),
      DOC(1 downto 0) => \^idataout\(5 downto 4),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
FIFO_reg_0_31_6_10: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => iDataIn(7 downto 6),
      DIB(1 downto 0) => iDataIn(9 downto 8),
      DIC(1) => '0',
      DIC(0) => iDataIn(10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(7 downto 6),
      DOB(1) => FIFO_reg_0_31_6_10_n_2,
      DOB(0) => \^idataout\(8),
      DOC(1) => NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED(1),
      DOC(0) => \^idataout\(9),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
iEmptyInt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => rbEnInt,
      I1 => iEmptyInt_reg_1,
      I2 => \iEmptyInt1__8\,
      I3 => \^iemptyint_reg_0\,
      O => iEmptyInt_i_1_n_0
    );
iEmptyInt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iWrA(3),
      I1 => iEmptyInt_i_3_n_0,
      I2 => iWrA(4),
      I3 => iRdA(4),
      I4 => iRdA(3),
      I5 => iEmptyInt_i_4_n_0,
      O => \iEmptyInt1__8\
    );
iEmptyInt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082410014000082"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(2),
      I2 => iRdA(2),
      I3 => iRdA(0),
      I4 => iRdA(1),
      I5 => iWrA(1),
      O => iEmptyInt_i_3_n_0
    );
iEmptyInt_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => iEmptyInt_i_4_n_0
    );
iEmptyInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => iEmptyInt_i_1_n_0,
      Q => \^iemptyint_reg_0\,
      S => rbRst
    );
iFullInt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050400"
    )
        port map (
      I0 => \^iemptyint_reg_0\,
      I1 => \iFullInt2__8\,
      I2 => iEmptyInt_reg_1,
      I3 => rbEnInt,
      I4 => \^ifullint_reg_0\,
      O => iFullInt_i_1_n_0
    );
iFullInt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iRdA(3),
      I1 => iFullInt_i_3_n_0,
      I2 => iRdA(4),
      I3 => iWrA(4),
      I4 => iWrA(3),
      I5 => iFullInt_i_4_n_0,
      O => \iFullInt2__8\
    );
iFullInt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => iRdA(0),
      I1 => iRdA(2),
      I2 => iWrA(2),
      I3 => iWrA(1),
      I4 => iWrA(0),
      I5 => iRdA(1),
      O => iFullInt_i_3_n_0
    );
iFullInt_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => iFullInt_i_4_n_0
    );
iFullInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => iFullInt_i_1_n_0,
      Q => \^ifullint_reg_0\,
      S => rbRst
    );
\iRdA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iRdA(0),
      O => \iRdA[0]_i_1_n_0\
    );
\iRdA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iRdA(1),
      I1 => iRdA(0),
      O => \iRdA[1]_i_1_n_0\
    );
\iRdA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iRdA[2]_i_1_n_0\
    );
\iRdA[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iRdA(3),
      I1 => iRdA(2),
      I2 => iRdA(1),
      I3 => iRdA(0),
      O => \iRdA[3]_i_2_n_0\
    );
\iRdA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iRdA(4),
      I1 => iRdA(3),
      I2 => iRdA(2),
      I3 => iRdA(1),
      I4 => iRdA(0),
      O => \iRdA[4]_i_1_n_0\
    );
\iRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[0]_i_1_n_0\,
      Q => iRdA(0),
      R => rbRst
    );
\iRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[1]_i_1_n_0\,
      Q => iRdA(1),
      R => rbRst
    );
\iRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[2]_i_1_n_0\,
      Q => iRdA(2),
      R => rbRst
    );
\iRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[3]_i_2_n_0\,
      Q => iRdA(3),
      R => rbRst
    );
\iRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[4]_i_1_n_0\,
      Q => iRdA(4),
      R => rbRst
    );
\iWrA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iWrA(0),
      O => \iWrA[0]_i_1_n_0\
    );
\iWrA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(1),
      O => \iWrA[1]_i_1_n_0\
    );
\iWrA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iWrA[2]_i_1_n_0\
    );
\iWrA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iWrA(3),
      I1 => iWrA(2),
      I2 => iWrA(0),
      I3 => iWrA(1),
      O => \iWrA[3]_i_1_n_0\
    );
\iWrA[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^ifullint_reg_0\,
      O => \iWrA[4]_i_2_n_0\
    );
\iWrA[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iWrA(4),
      I1 => iWrA(3),
      I2 => iWrA(2),
      I3 => iWrA(0),
      I4 => iWrA(1),
      O => \iWrA[4]_i_3_n_0\
    );
\iWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[0]_i_1_n_0\,
      Q => iWrA(0),
      R => rbRst
    );
\iWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[1]_i_1_n_0\,
      Q => iWrA(1),
      R => rbRst
    );
\iWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[2]_i_1_n_0\,
      Q => iWrA(2),
      R => rbRst
    );
\iWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[3]_i_1_n_0\,
      Q => iWrA(3),
      R => rbRst
    );
\iWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[4]_i_3_n_0\,
      Q => iWrA(4),
      R => rbRst
    );
\rbMAxisTdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rbbytecnt_reg[1]\,
      I1 => \out\(0),
      O => E(0)
    );
rbMAxisTvalidInt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0000005700"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_2,
      I1 => \^idataout\(8),
      I2 => \rbState[2]_i_4_0\(0),
      I3 => rbMAxisTvalidInt_reg,
      I4 => rbMAxisTvalidInt_reg_0,
      I5 => rbMAxisTvalidInt_reg_1,
      O => \^rbbytecnt_reg[1]\
    );
\rbState[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \rbState[2]_i_4_0\(0),
      O => \andv__0\
    );
\rbState[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rbState[2]_i_5_n_0\,
      I1 => rbMAxisTvalidInt_reg,
      I2 => \rbState[2]_i_6_n_0\,
      I3 => rbMAxisTvalidInt_reg_0,
      I4 => \rbState_reg[0]_0\,
      O => rbNstate
    );
\rbState[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FF1FFF1FFF1F"
    )
        port map (
      I0 => \^idataout\(9),
      I1 => \rbState[2]_i_4_0\(1),
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => rbMAxisTvalidInt_reg_1,
      I4 => \^idataout\(8),
      I5 => \rbState[2]_i_4_0\(0),
      O => \rbState[2]_i_5_n_0\
    );
\rbState[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \rbState[2]_i_4_0\(0),
      I2 => rbMAxisTvalidInt_reg_1,
      I3 => \^ifullint_reg_0\,
      I4 => \rbState[2]_i_4_1\,
      I5 => D(0),
      O => \rbState[2]_i_6_n_0\
    );
\rbTdataInt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => \rbState[2]_i_4_0\(0),
      I5 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(1)
    );
\rbTdataInt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(2)
    );
\rbTdataInt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2400000000000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => \rbState[2]_i_4_0\(0),
      I5 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(3)
    );
\rbTdataInt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002400"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 is
  port (
    iFullInt_reg_0 : out STD_LOGIC;
    \rbState_reg[2]\ : out STD_LOGIC;
    iRdA0 : out STD_LOGIC;
    \rbState_reg[2]_0\ : out STD_LOGIC;
    iDataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \rbState_reg[0]\ : out STD_LOGIC;
    rbTlastInt : out STD_LOGIC;
    \rbByteCnt_reg[1]\ : out STD_LOGIC;
    orv2_out : out STD_LOGIC;
    orv4_out : out STD_LOGIC;
    rbRst : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    rbEnInt : in STD_LOGIC;
    \iRdA_reg[0]_0\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\ : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rbState_reg[0]_0\ : in STD_LOGIC;
    \rbByteCnt_reg[1]_0\ : in STD_LOGIC;
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 : entity is "SimpleFIFO";
end system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 is
  signal \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\ : STD_LOGIC;
  signal FIFO_reg_0_31_6_10_n_2 : STD_LOGIC;
  signal \^idataout\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \iEmptyInt1__8\ : STD_LOGIC;
  signal \iEmptyInt_i_1__0_n_0\ : STD_LOGIC;
  signal \iEmptyInt_i_3__0_n_0\ : STD_LOGIC;
  signal \iEmptyInt_i_4__0_n_0\ : STD_LOGIC;
  signal iEmptyInt_reg_n_0 : STD_LOGIC;
  signal \iFullInt2__8\ : STD_LOGIC;
  signal \iFullInt_i_1__0_n_0\ : STD_LOGIC;
  signal \iFullInt_i_3__0_n_0\ : STD_LOGIC;
  signal \iFullInt_i_4__0_n_0\ : STD_LOGIC;
  signal \^ifullint_reg_0\ : STD_LOGIC;
  signal iRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal iRdA0_0 : STD_LOGIC;
  signal \iRdA[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \iRdA[4]_i_1__0_n_0\ : STD_LOGIC;
  signal iWrA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iWrA[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \^rbstate_reg[2]\ : STD_LOGIC;
  signal \^rbstate_reg[2]_0\ : STD_LOGIC;
  signal NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of FIFO_reg_0_31_0_5 : label is 352;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_0_5 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of FIFO_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of FIFO_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_6_10 : label is "";
  attribute RTL_RAM_BITS of FIFO_reg_0_31_6_10 : label is 352;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_6_10 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_6_10 : label is "RAM_SDP";
  attribute ram_addr_begin of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_addr_end of FIFO_reg_0_31_6_10 : label is 31;
  attribute ram_offset of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_slice_begin of FIFO_reg_0_31_6_10 : label is 6;
  attribute ram_slice_end of FIFO_reg_0_31_6_10 : label is 10;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \iEmptyInt_i_4__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \iFullInt_i_4__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \iRdA[0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \iRdA[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \iRdA[2]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \iRdA[3]_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \iRdA[4]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \iWrA[0]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \iWrA[1]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \iWrA[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \iWrA[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \iWrA[4]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of rbMAxisTlast_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rbState[2]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rbState[2]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rbState[2]_i_7\ : label is "soft_lutpair38";
begin
  iDataOut(9 downto 0) <= \^idataout\(9 downto 0);
  iFullInt_reg_0 <= \^ifullint_reg_0\;
  \rbState_reg[2]\ <= \^rbstate_reg[2]\;
  \rbState_reg[2]_0\ <= \^rbstate_reg[2]_0\;
\DeskewFIFOs[0].rbActiveHS_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777773777777700"
    )
        port map (
      I0 => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\,
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I2 => \^idataout\(9),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      O => \^rbstate_reg[2]_0\
    );
\DeskewFIFOs[0].rbActiveHS_q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => p_0_in4_in(1),
      I1 => p_0_in4_in(0),
      I2 => \^idataout\(9),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      O => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\
    );
\DeskewFIFOs[1].rbActiveHS_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777773777777700"
    )
        port map (
      I0 => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\,
      I1 => \^idataout\(9),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      O => \^rbstate_reg[2]\
    );
FIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => I62(1 downto 0),
      DIB(1 downto 0) => I62(3 downto 2),
      DIC(1 downto 0) => I62(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(1 downto 0),
      DOB(1 downto 0) => \^idataout\(3 downto 2),
      DOC(1 downto 0) => \^idataout\(5 downto 4),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
FIFO_reg_0_31_6_10: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => I62(7 downto 6),
      DIB(1 downto 0) => I62(9 downto 8),
      DIC(1) => '0',
      DIC(0) => I62(10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(7 downto 6),
      DOB(1) => FIFO_reg_0_31_6_10_n_2,
      DOB(0) => \^idataout\(8),
      DOC(1) => NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED(1),
      DOC(0) => \^idataout\(9),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
\iEmptyInt_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^rbstate_reg[2]\,
      I2 => \iEmptyInt1__8\,
      I3 => iEmptyInt_reg_n_0,
      O => \iEmptyInt_i_1__0_n_0\
    );
\iEmptyInt_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iWrA(3),
      I1 => \iEmptyInt_i_3__0_n_0\,
      I2 => iWrA(4),
      I3 => iRdA(4),
      I4 => iRdA(3),
      I5 => \iEmptyInt_i_4__0_n_0\,
      O => \iEmptyInt1__8\
    );
\iEmptyInt_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082410014000082"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(2),
      I2 => iRdA(2),
      I3 => iRdA(0),
      I4 => iRdA(1),
      I5 => iWrA(1),
      O => \iEmptyInt_i_3__0_n_0\
    );
\iEmptyInt_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iEmptyInt_i_4__0_n_0\
    );
iEmptyInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \iEmptyInt_i_1__0_n_0\,
      Q => iEmptyInt_reg_n_0,
      S => rbRst
    );
\iFullInt_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050400"
    )
        port map (
      I0 => iEmptyInt_reg_n_0,
      I1 => \iFullInt2__8\,
      I2 => \^rbstate_reg[2]\,
      I3 => rbEnInt,
      I4 => \^ifullint_reg_0\,
      O => \iFullInt_i_1__0_n_0\
    );
\iFullInt_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iRdA(3),
      I1 => \iFullInt_i_3__0_n_0\,
      I2 => iRdA(4),
      I3 => iWrA(4),
      I4 => iWrA(3),
      I5 => \iFullInt_i_4__0_n_0\,
      O => \iFullInt2__8\
    );
\iFullInt_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => iRdA(0),
      I1 => iRdA(2),
      I2 => iWrA(2),
      I3 => iWrA(1),
      I4 => iWrA(0),
      I5 => iRdA(1),
      O => \iFullInt_i_3__0_n_0\
    );
\iFullInt_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iFullInt_i_4__0_n_0\
    );
iFullInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \iFullInt_i_1__0_n_0\,
      Q => \^ifullint_reg_0\,
      S => rbRst
    );
\iRdA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iRdA(0),
      O => \iRdA[0]_i_1__0_n_0\
    );
\iRdA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iRdA(1),
      I1 => iRdA(0),
      O => \iRdA[1]_i_1__0_n_0\
    );
\iRdA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iRdA[2]_i_1__0_n_0\
    );
\iRdA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rbstate_reg[2]_0\,
      I1 => \iRdA_reg[0]_0\,
      O => iRdA0
    );
\iRdA[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rbstate_reg[2]\,
      I1 => iEmptyInt_reg_n_0,
      O => iRdA0_0
    );
\iRdA[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iRdA(3),
      I1 => iRdA(2),
      I2 => iRdA(1),
      I3 => iRdA(0),
      O => \iRdA[3]_i_2__0_n_0\
    );
\iRdA[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iRdA(4),
      I1 => iRdA(3),
      I2 => iRdA(2),
      I3 => iRdA(1),
      I4 => iRdA(0),
      O => \iRdA[4]_i_1__0_n_0\
    );
\iRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[0]_i_1__0_n_0\,
      Q => iRdA(0),
      R => rbRst
    );
\iRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[1]_i_1__0_n_0\,
      Q => iRdA(1),
      R => rbRst
    );
\iRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[2]_i_1__0_n_0\,
      Q => iRdA(2),
      R => rbRst
    );
\iRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[3]_i_2__0_n_0\,
      Q => iRdA(3),
      R => rbRst
    );
\iRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[4]_i_1__0_n_0\,
      Q => iRdA(4),
      R => rbRst
    );
\iWrA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iWrA(0),
      O => \iWrA[0]_i_1__0_n_0\
    );
\iWrA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(1),
      O => \iWrA[1]_i_1__0_n_0\
    );
\iWrA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iWrA[2]_i_1__0_n_0\
    );
\iWrA[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iWrA(3),
      I1 => iWrA(2),
      I2 => iWrA(0),
      I3 => iWrA(1),
      O => \iWrA[3]_i_1__0_n_0\
    );
\iWrA[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^ifullint_reg_0\,
      O => \iWrA[4]_i_1_n_0\
    );
\iWrA[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iWrA(4),
      I1 => iWrA(3),
      I2 => iWrA(2),
      I3 => iWrA(0),
      I4 => iWrA(1),
      O => \iWrA[4]_i_2__0_n_0\
    );
\iWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[0]_i_1__0_n_0\,
      Q => iWrA(0),
      R => rbRst
    );
\iWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[1]_i_1__0_n_0\,
      Q => iWrA(1),
      R => rbRst
    );
\iWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[2]_i_1__0_n_0\,
      Q => iWrA(2),
      R => rbRst
    );
\iWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[3]_i_1__0_n_0\,
      Q => iWrA(3),
      R => rbRst
    );
\iWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[4]_i_2__0_n_0\,
      Q => iWrA(4),
      R => rbRst
    );
\rbByteCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA555600AAAA"
    )
        port map (
      I0 => \rbByteCnt_reg[1]_0\,
      I1 => \^idataout\(8),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      O => \rbByteCnt_reg[1]\
    );
rbMAxisTlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F00010"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      O => rbTlastInt
    );
\rbState[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ifullint_reg_0\,
      I1 => \rbState_reg[0]_0\,
      O => orv4_out
    );
\rbState[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      O => orv2_out
    );
\rbState[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F08F"
    )
        port map (
      I0 => \^idataout\(9),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I3 => \rbState_reg[0]_0\,
      I4 => \^ifullint_reg_0\,
      O => \rbState_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    rbRst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => rbRst,
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => rbRst,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync_0 is
  port (
    \YesAXILITE.vRst_n_reg\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    vRst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync_0 : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync_0;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync_0 is
  signal \^yesaxilite.vrst_n_reg\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \YesAXILITE.vRst_n_reg\ <= \^yesaxilite.vrst_n_reg\;
\oSyncStages[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vRst_n,
      O => \^yesaxilite.vrst_n_reg\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      CLR => \^yesaxilite.vrst_n_reg\,
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      CLR => \^yesaxilite.vrst_n_reg\,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rbRst : out STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    \oSyncStages_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync_1 : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync_1;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync_1 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\iWrA[4]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => rbRst
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\,
      D => '1',
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\YesAXILITE.vRst_n_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => \oSyncStages_reg[1]_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \oSyncStages_reg[1]_0\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mReg_Tvalid_reg : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]\ : out STD_LOGIC;
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : out STD_LOGIC;
    mFmt_Tvalid_reg : out STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    \mReg_Tdata_reg[31]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_1\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_2\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_1\ : in STD_LOGIC;
    cnt : in STD_LOGIC;
    \mFmt_Tuser_reg[0]\ : in STD_LOGIC;
    \mFmt_Tuser_reg[0]_0\ : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
LineBufferFIFO_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => s_axis_aresetn
    );
\RAW10Formatter.cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A2A2A6A"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[1]_1\,
      I1 => \RAW10Formatter.cnt_reg[2]_0\,
      I2 => s_axis_tready,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => \RAW10Formatter.cnt_reg[0]\
    );
\RAW10Formatter.cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0A0A6A"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[1]_0\,
      I1 => \RAW10Formatter.cnt_reg[1]_1\,
      I2 => cnt,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => \RAW10Formatter.cnt_reg[1]\
    );
\RAW10Formatter.cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F3F0080"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[2]\,
      I1 => \RAW10Formatter.cnt_reg[2]_0\,
      I2 => s_axis_tready,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => mReg_Tvalid_reg
    );
\RAW10Formatter.pix_mux[0][9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[2]_2\,
      O => \oSyncStages_reg[1]_1\(0)
    );
\RAW10Formatter.pix_mux[1][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_2\(0)
    );
\RAW10Formatter.pix_mux[2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_1\,
      I4 => \RAW10Formatter.cnt_reg[1]_0\,
      O => \oSyncStages_reg[1]_3\(0)
    );
\RAW10Formatter.pix_mux[3][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_4\(0)
    );
\mFmt_Tdata[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[2]_2\,
      I4 => \RAW10Formatter.cnt_reg[1]_0\,
      I5 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_0\(0)
    );
\mFmt_Tuser[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005F40"
    )
        port map (
      I0 => \mFmt_Tuser_reg[0]\,
      I1 => \mFmt_Tuser_reg[0]_0\,
      I2 => s_axis_tready,
      I3 => s_axis_tuser(0),
      I4 => oSyncStages(1),
      O => mFmt_Tvalid_reg
    );
\mReg_Tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => m_axis_tvalid,
      I2 => \mReg_Tdata_reg[31]\,
      I3 => s_axis_tready,
      O => E(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    vRst_n : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\aDEnableInt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => vRst_n,
      O => \oSyncStages_reg[1]_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "GRAY";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair3";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "SINGLE";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_single;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "SINGLE";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_counter_updn is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end system_MIPI_CSI_2_RX_0_0_xpm_counter_updn;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[1]_0\(0) <= \^count_value_i_reg[1]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[0]_1\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A8AA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[0]_1\(0),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\(0),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => count_value_i(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\(0),
      R => '0'
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      O => \^di\(0)
    );
\gwdc.wr_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => Q(1),
      I2 => \^count_value_i_reg[1]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[3]\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__0\ : label is 35;
begin
  CO(0) <= \^co\(0);
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_4\,
      Q => \count_value_i_reg_n_0_[11]\,
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__0_n_7\,
      S(3) => \count_value_i_reg_n_0_[11]\,
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[11]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_i,
      I1 => going_full1,
      I2 => \^co\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^co\(0),
      I4 => going_full1,
      I5 => ram_wr_en_i,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]\(9),
      I2 => \^q\(10),
      I3 => \grdc.rd_data_count_i_reg[11]\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]\(6),
      I2 => \grdc.rd_data_count_i_reg[11]\(8),
      I3 => \^q\(8),
      I4 => \grdc.rd_data_count_i_reg[11]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]\(3),
      I2 => \grdc.rd_data_count_i_reg[11]\(5),
      I3 => \^q\(5),
      I4 => \grdc.rd_data_count_i_reg[11]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[11]\(0),
      I2 => \grdc.rd_data_count_i_reg[11]\(2),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[11]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(9),
      I2 => \^q\(10),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_full1,
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\gwdc.wr_data_count_i[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \grdc.rd_data_count_i_reg[11]\(10),
      I2 => \count_value_i_reg_n_0_[11]\,
      I3 => \grdc.rd_data_count_i_reg[11]\(11),
      O => S(3)
    );
\gwdc.wr_data_count_i[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]\(9),
      I2 => \^q\(10),
      I3 => \grdc.rd_data_count_i_reg[11]\(10),
      O => S(2)
    );
\gwdc.wr_data_count_i[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[11]\(8),
      I2 => \^q\(9),
      I3 => \grdc.rd_data_count_i_reg[11]\(9),
      O => S(1)
    );
\gwdc.wr_data_count_i[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[11]\(7),
      I2 => \^q\(8),
      I3 => \grdc.rd_data_count_i_reg[11]\(8),
      O => S(0)
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\(0),
      I2 => \grdc.rd_data_count_i_reg[11]\(1),
      O => DI(0)
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[11]\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[11]\(3),
      O => \count_value_i_reg[2]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]\(6),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[11]\(7),
      O => \count_value_i_reg[6]_0\(3)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[11]\(5),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[11]\(6),
      O => \count_value_i_reg[6]_0\(2)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[11]\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[11]\(5),
      O => \count_value_i_reg[6]_0\(1)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[11]\(4),
      O => \count_value_i_reg[6]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[7]_i_1\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => S(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => CO(0),
      I3 => E(0),
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(9),
      I2 => \^q\(10),
      I3 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_empty1,
      CO(2) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\,
      CO(1) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      S(2) => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      S(1) => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      S(0) => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gwdc.wr_data_count_i[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(8),
      O => \gwdc.wr_data_count_i[11]_i_2_n_0\
    );
\gwdc.wr_data_count_i[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(7),
      O => \gwdc.wr_data_count_i[11]_i_3_n_0\
    );
\gwdc.wr_data_count_i[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(6),
      O => \gwdc.wr_data_count_i[11]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(1),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]_0\(0),
      I2 => \grdc.rd_data_count_i_reg[11]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[11]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[3]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3) => \NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gwdc.wr_data_count_i_reg[11]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[11]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gwdc.wr_data_count_i[11]_i_2_n_0\,
      DI(1) => \gwdc.wr_data_count_i[11]_i_3_n_0\,
      DI(0) => \gwdc.wr_data_count_i[11]_i_4_n_0\,
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[11]\(3 downto 0)
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \grdc.rd_data_count_i_reg[3]\(2),
      S(2) => \gwdc.wr_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => \grdc.rd_data_count_i_reg[3]\(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[10]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__1\ : label is 35;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[3]_0\(0),
      I3 => \count_value_i_reg[3]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1_n_5\,
      O(1) => \count_value_i_reg[10]_i_1_n_6\,
      O(0) => \count_value_i_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i_reg[10]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[10]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__2\ : label is 35;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[10]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[10]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__2_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \count_value_i_reg[3]\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_0\(0),
      O => S(0)
    );
\count_value_i[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \count_value_i_reg[3]\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_1\(0),
      O => d_out_reg_0(0)
    );
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[10]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[10]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\(0),
      I2 => \grdc.rd_data_count_i_reg[0]\(1),
      O => SR(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 53 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 53 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 110592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 56;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 56;
end system_MIPI_CSI_2_RX_0_0_xpm_memory_base;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \^doutb\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 110592;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 110592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d6";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d6";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 110592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(53 downto 52) <= \^doutb\(53 downto 52);
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39 downto 0) <= \^doutb\(39 downto 0);
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => dina(15 downto 0),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => dina(17 downto 16),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => \^doutb\(15 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1 downto 0) => \^doutb\(17 downto 16),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => dina(33 downto 18),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => dina(35 downto 34),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => \^doutb\(33 downto 18),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1 downto 0) => \^doutb\(35 downto 34),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_2\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => addrb(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 6) => B"0000000000",
      DIADI(5 downto 4) => dina(53 downto 52),
      DIADI(3 downto 0) => dina(39 downto 36),
      DIBDI(15 downto 0) => B"0000000000111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 6) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\(15 downto 6),
      DOBDO(5 downto 4) => \^doutb\(53 downto 52),
      DOBDO(3 downto 0) => \^doutb\(39 downto 36),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47360)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_LM is
  port (
    s_axis_tvalid : out STD_LOGIC;
    s_axis_tlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rbMAxisTkeep_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RxByteClkHS : in STD_LOGIC;
    rbRst : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbEnInt_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 );
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_LM : entity is "LM";
end system_MIPI_CSI_2_RX_0_0_LM;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_LM is
  signal \DeskewFIFOs[0].DeskewFIFOx_n_0\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_1\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_16\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_17\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_18\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_19\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_2\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_3\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_5\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_6\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_0\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_1\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_10\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_11\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_12\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_13\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_14\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_16\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_3\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_4\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_5\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_6\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_7\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_8\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_9\ : STD_LOGIC;
  signal \andv__0\ : STD_LOGIC;
  signal iRdA0 : STD_LOGIC;
  signal orv2_out : STD_LOGIC;
  signal orv4_out : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rbByteCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal rbEnInt : STD_LOGIC;
  signal rbEnInt_i_1_n_0 : STD_LOGIC;
  signal rbNstate : STD_LOGIC;
  signal \rbState[0]_i_1_n_0\ : STD_LOGIC;
  signal \rbState[1]_i_1_n_0\ : STD_LOGIC;
  signal \rbState[2]_i_1_n_0\ : STD_LOGIC;
  signal \rbState_reg_n_0_[0]\ : STD_LOGIC;
  signal \rbState_reg_n_0_[1]\ : STD_LOGIC;
  signal \rbState_reg_n_0_[2]\ : STD_LOGIC;
  signal rbTdataInt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rbTdataInt1__0\ : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \rbTkeepInt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[3]_i_2_n_0\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[3]\ : STD_LOGIC;
  signal rbTlastInt : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rbEnInt_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rbTkeepInt[3]_i_2\ : label is "soft_lutpair46";
begin
\DeskewFIFOs[0].DeskewFIFOx\: entity work.system_MIPI_CSI_2_RX_0_0_SimpleFIFO
     port map (
      D(0) => D(0),
      E(0) => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      RxByteClkHS => RxByteClkHS,
      \andv__0\ => \andv__0\,
      iDataIn(10 downto 0) => iDataIn(10 downto 0),
      iDataOut(9) => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      iDataOut(8) => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      iDataOut(7 downto 0) => \rbTdataInt1__0\(23 downto 16),
      iEmptyInt_reg_0 => \DeskewFIFOs[0].DeskewFIFOx_n_0\,
      iEmptyInt_reg_1 => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      iFullInt_reg_0 => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      iRdA0 => iRdA0,
      \out\(0) => \out\(0),
      \rbByteCnt_reg[1]\ => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      rbEnInt => rbEnInt,
      rbMAxisTvalidInt_reg => \rbState_reg_n_0_[2]\,
      rbMAxisTvalidInt_reg_0 => \rbState_reg_n_0_[1]\,
      rbMAxisTvalidInt_reg_1 => \rbState_reg_n_0_[0]\,
      rbMAxisTvalidInt_reg_2 => \rbByteCnt_reg_n_0_[1]\,
      rbNstate => rbNstate,
      rbRst => rbRst,
      \rbState[2]_i_4_0\(1) => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      \rbState[2]_i_4_0\(0) => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      \rbState[2]_i_4_1\ => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      \rbState_reg[0]\(3) => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      \rbState_reg[0]\(2) => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      \rbState_reg[0]\(1) => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      \rbState_reg[0]\(0) => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      \rbState_reg[0]_0\ => \DeskewFIFOs[1].DeskewFIFOx_n_14\
    );
\DeskewFIFOs[0].rbActiveHS_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      D => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      Q => p_0_in4_in(0),
      R => '0'
    );
\DeskewFIFOs[1].DeskewFIFOx\: entity work.system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2
     port map (
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1) => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0) => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\ => \rbState_reg_n_0_[2]\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\ => \rbState_reg_n_0_[0]\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\ => \rbState_reg_n_0_[1]\,
      I62(10 downto 0) => I62(10 downto 0),
      RxByteClkHS => RxByteClkHS,
      iDataOut(9) => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      iDataOut(8) => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      iDataOut(7) => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      iDataOut(6) => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      iDataOut(5) => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      iDataOut(4) => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      iDataOut(3) => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      iDataOut(2) => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      iDataOut(1) => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      iDataOut(0) => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      iFullInt_reg_0 => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      iRdA0 => iRdA0,
      \iRdA_reg[0]_0\ => \DeskewFIFOs[0].DeskewFIFOx_n_0\,
      orv2_out => orv2_out,
      orv4_out => orv4_out,
      p_0_in4_in(1 downto 0) => p_0_in4_in(1 downto 0),
      \rbByteCnt_reg[1]\ => \DeskewFIFOs[1].DeskewFIFOx_n_16\,
      \rbByteCnt_reg[1]_0\ => \rbByteCnt_reg_n_0_[1]\,
      rbEnInt => rbEnInt,
      rbRst => rbRst,
      \rbState_reg[0]\ => \DeskewFIFOs[1].DeskewFIFOx_n_14\,
      \rbState_reg[0]_0\ => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      \rbState_reg[2]\ => \DeskewFIFOs[1].DeskewFIFOx_n_1\,
      \rbState_reg[2]_0\ => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      rbTlastInt => rbTlastInt
    );
\DeskewFIFOs[1].rbActiveHS_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[1].DeskewFIFOx_n_1\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      Q => p_0_in4_in(1),
      R => '0'
    );
\rbByteCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \DeskewFIFOs[1].DeskewFIFOx_n_16\,
      Q => \rbByteCnt_reg_n_0_[1]\,
      R => '0'
    );
rbEnInt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \rbState_reg_n_0_[2]\,
      I1 => \rbState_reg_n_0_[0]\,
      I2 => \rbState_reg_n_0_[1]\,
      I3 => rbEnInt_reg_0(0),
      O => rbEnInt_i_1_n_0
    );
rbEnInt_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => rbEnInt_i_1_n_0,
      Q => rbEnInt,
      R => '0'
    );
\rbMAxisTdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(0),
      Q => Q(0),
      R => '0'
    );
\rbMAxisTdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(10),
      Q => Q(10),
      R => '0'
    );
\rbMAxisTdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(11),
      Q => Q(11),
      R => '0'
    );
\rbMAxisTdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(12),
      Q => Q(12),
      R => '0'
    );
\rbMAxisTdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(13),
      Q => Q(13),
      R => '0'
    );
\rbMAxisTdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(14),
      Q => Q(14),
      R => '0'
    );
\rbMAxisTdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(15),
      Q => Q(15),
      R => '0'
    );
\rbMAxisTdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(16),
      Q => Q(16),
      R => '0'
    );
\rbMAxisTdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(17),
      Q => Q(17),
      R => '0'
    );
\rbMAxisTdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(18),
      Q => Q(18),
      R => '0'
    );
\rbMAxisTdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(19),
      Q => Q(19),
      R => '0'
    );
\rbMAxisTdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(1),
      Q => Q(1),
      R => '0'
    );
\rbMAxisTdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(20),
      Q => Q(20),
      R => '0'
    );
\rbMAxisTdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(21),
      Q => Q(21),
      R => '0'
    );
\rbMAxisTdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(22),
      Q => Q(22),
      R => '0'
    );
\rbMAxisTdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(23),
      Q => Q(23),
      R => '0'
    );
\rbMAxisTdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(24),
      Q => Q(24),
      R => '0'
    );
\rbMAxisTdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(25),
      Q => Q(25),
      R => '0'
    );
\rbMAxisTdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(26),
      Q => Q(26),
      R => '0'
    );
\rbMAxisTdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(27),
      Q => Q(27),
      R => '0'
    );
\rbMAxisTdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(28),
      Q => Q(28),
      R => '0'
    );
\rbMAxisTdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(29),
      Q => Q(29),
      R => '0'
    );
\rbMAxisTdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(2),
      Q => Q(2),
      R => '0'
    );
\rbMAxisTdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(30),
      Q => Q(30),
      R => '0'
    );
\rbMAxisTdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(31),
      Q => Q(31),
      R => '0'
    );
\rbMAxisTdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(3),
      Q => Q(3),
      R => '0'
    );
\rbMAxisTdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(4),
      Q => Q(4),
      R => '0'
    );
\rbMAxisTdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(5),
      Q => Q(5),
      R => '0'
    );
\rbMAxisTdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(6),
      Q => Q(6),
      R => '0'
    );
\rbMAxisTdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(7),
      Q => Q(7),
      R => '0'
    );
\rbMAxisTdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(8),
      Q => Q(8),
      R => '0'
    );
\rbMAxisTdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(9),
      Q => Q(9),
      R => '0'
    );
\rbMAxisTkeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[0]\,
      Q => \rbMAxisTkeep_reg[3]_0\(0),
      R => '0'
    );
\rbMAxisTkeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[1]\,
      Q => \rbMAxisTkeep_reg[3]_0\(1),
      R => '0'
    );
\rbMAxisTkeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[2]\,
      Q => \rbMAxisTkeep_reg[3]_0\(2),
      R => '0'
    );
\rbMAxisTkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[3]\,
      Q => \rbMAxisTkeep_reg[3]_0\(3),
      R => '0'
    );
rbMAxisTlast_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTlastInt,
      Q => s_axis_tlast,
      R => '0'
    );
rbMAxisTvalidInt_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      Q => s_axis_tvalid,
      R => '0'
    );
\rbState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F3FFFFF3F00000"
    )
        port map (
      I0 => \andv__0\,
      I1 => orv4_out,
      I2 => \rbState_reg_n_0_[2]\,
      I3 => \rbState_reg_n_0_[1]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[0]\,
      O => \rbState[0]_i_1_n_0\
    );
\rbState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FFFF00FF0000"
    )
        port map (
      I0 => \rbState_reg_n_0_[0]\,
      I1 => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      I3 => \rbState_reg_n_0_[2]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[1]\,
      O => \rbState[1]_i_1_n_0\
    );
\rbState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030FFFFEE880000"
    )
        port map (
      I0 => orv4_out,
      I1 => \rbState_reg_n_0_[1]\,
      I2 => orv2_out,
      I3 => \rbState_reg_n_0_[0]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[2]\,
      O => \rbState[2]_i_1_n_0\
    );
\rbState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[0]_i_1_n_0\,
      Q => \rbState_reg_n_0_[0]\,
      R => rbRst
    );
\rbState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[1]_i_1_n_0\,
      Q => \rbState_reg_n_0_[1]\,
      R => rbRst
    );
\rbState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[2]_i_1_n_0\,
      Q => \rbState_reg_n_0_[2]\,
      R => rbRst
    );
\rbTdataInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(16),
      Q => rbTdataInt(0),
      R => rbRst
    );
\rbTdataInt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      Q => rbTdataInt(10),
      R => rbRst
    );
\rbTdataInt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      Q => rbTdataInt(11),
      R => rbRst
    );
\rbTdataInt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      Q => rbTdataInt(12),
      R => rbRst
    );
\rbTdataInt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      Q => rbTdataInt(13),
      R => rbRst
    );
\rbTdataInt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      Q => rbTdataInt(14),
      R => rbRst
    );
\rbTdataInt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      Q => rbTdataInt(15),
      R => rbRst
    );
\rbTdataInt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(16),
      Q => rbTdataInt(16),
      R => rbRst
    );
\rbTdataInt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(17),
      Q => rbTdataInt(17),
      R => rbRst
    );
\rbTdataInt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(18),
      Q => rbTdataInt(18),
      R => rbRst
    );
\rbTdataInt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(19),
      Q => rbTdataInt(19),
      R => rbRst
    );
\rbTdataInt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(17),
      Q => rbTdataInt(1),
      R => rbRst
    );
\rbTdataInt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(20),
      Q => rbTdataInt(20),
      R => rbRst
    );
\rbTdataInt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(21),
      Q => rbTdataInt(21),
      R => rbRst
    );
\rbTdataInt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(22),
      Q => rbTdataInt(22),
      R => rbRst
    );
\rbTdataInt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(23),
      Q => rbTdataInt(23),
      R => rbRst
    );
\rbTdataInt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      Q => rbTdataInt(24),
      R => rbRst
    );
\rbTdataInt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      Q => rbTdataInt(25),
      R => rbRst
    );
\rbTdataInt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      Q => rbTdataInt(26),
      R => rbRst
    );
\rbTdataInt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      Q => rbTdataInt(27),
      R => rbRst
    );
\rbTdataInt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      Q => rbTdataInt(28),
      R => rbRst
    );
\rbTdataInt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      Q => rbTdataInt(29),
      R => rbRst
    );
\rbTdataInt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(18),
      Q => rbTdataInt(2),
      R => rbRst
    );
\rbTdataInt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      Q => rbTdataInt(30),
      R => rbRst
    );
\rbTdataInt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      Q => rbTdataInt(31),
      R => rbRst
    );
\rbTdataInt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(19),
      Q => rbTdataInt(3),
      R => rbRst
    );
\rbTdataInt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(20),
      Q => rbTdataInt(4),
      R => rbRst
    );
\rbTdataInt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(21),
      Q => rbTdataInt(5),
      R => rbRst
    );
\rbTdataInt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(22),
      Q => rbTdataInt(6),
      R => rbRst
    );
\rbTdataInt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(23),
      Q => rbTdataInt(7),
      R => rbRst
    );
\rbTdataInt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      Q => rbTdataInt(8),
      R => rbRst
    );
\rbTdataInt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      Q => rbTdataInt(9),
      R => rbRst
    );
\rbTkeepInt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F700A0"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \rbByteCnt_reg_n_0_[1]\,
      I4 => \rbTkeepInt_reg_n_0_[0]\,
      O => \rbTkeepInt[0]_i_1_n_0\
    );
\rbTkeepInt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F7770000A000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      I4 => \rbByteCnt_reg_n_0_[1]\,
      I5 => \rbTkeepInt_reg_n_0_[1]\,
      O => \rbTkeepInt[1]_i_1_n_0\
    );
\rbTkeepInt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777A000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \rbByteCnt_reg_n_0_[1]\,
      I4 => \rbTkeepInt_reg_n_0_[2]\,
      O => \rbTkeepInt[2]_i_1_n_0\
    );
\rbTkeepInt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777A0000000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      I4 => \rbByteCnt_reg_n_0_[1]\,
      I5 => \rbTkeepInt_reg_n_0_[3]\,
      O => \rbTkeepInt[3]_i_1_n_0\
    );
\rbTkeepInt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \rbState_reg_n_0_[1]\,
      I1 => \rbState_reg_n_0_[2]\,
      I2 => \rbState_reg_n_0_[0]\,
      O => \rbTkeepInt[3]_i_2_n_0\
    );
\rbTkeepInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[0]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[0]\,
      R => rbRst
    );
\rbTkeepInt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[1]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[1]\,
      R => rbRst
    );
\rbTkeepInt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[2]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[2]\,
      R => rbRst
    );
\rbTkeepInt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[3]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[3]\,
      R => rbRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rbRst : out STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_ResetBridge : entity is "ResetBridge";
end system_MIPI_CSI_2_RX_0_0_ResetBridge;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_ResetBridge is
begin
SyncAsyncx: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync_1
     port map (
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]_0\ => \oSyncStages_reg[1]\,
      \out\(0) => \out\(0),
      rbRst => rbRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ is
  port (
    \oSyncStages_reg[1]\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\
     port map (
      AS(0) => AS(0),
      \oSyncStages_reg[1]_0\ => \oSyncStages_reg[1]\,
      video_aclk => video_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mReg_Tvalid_reg : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]\ : out STD_LOGIC;
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : out STD_LOGIC;
    mFmt_Tvalid_reg : out STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    \mReg_Tdata_reg[31]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_1\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_2\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_1\ : in STD_LOGIC;
    cnt : in STD_LOGIC;
    \mFmt_Tuser_reg[0]\ : in STD_LOGIC;
    \mFmt_Tuser_reg[0]_0\ : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\
     port map (
      AS(0) => AS(0),
      E(0) => E(0),
      \RAW10Formatter.cnt_reg[0]\ => \RAW10Formatter.cnt_reg[0]\,
      \RAW10Formatter.cnt_reg[1]\ => \RAW10Formatter.cnt_reg[1]\,
      \RAW10Formatter.cnt_reg[1]_0\ => \RAW10Formatter.cnt_reg[1]_0\,
      \RAW10Formatter.cnt_reg[1]_1\ => \RAW10Formatter.cnt_reg[1]_1\,
      \RAW10Formatter.cnt_reg[2]\ => \RAW10Formatter.cnt_reg[2]\,
      \RAW10Formatter.cnt_reg[2]_0\ => \RAW10Formatter.cnt_reg[2]_0\,
      \RAW10Formatter.cnt_reg[2]_1\ => \RAW10Formatter.cnt_reg[2]_1\,
      \RAW10Formatter.cnt_reg[2]_2\ => \RAW10Formatter.cnt_reg[2]_2\,
      cnt => cnt,
      \mFmt_Tuser_reg[0]\ => \mFmt_Tuser_reg[0]\,
      \mFmt_Tuser_reg[0]_0\ => \mFmt_Tuser_reg[0]_0\,
      mFmt_Tvalid_reg => mFmt_Tvalid_reg,
      \mReg_Tdata_reg[31]\ => \mReg_Tdata_reg[31]\,
      mReg_Tvalid_reg => mReg_Tvalid_reg,
      m_axis_tvalid => m_axis_tvalid,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \oSyncStages_reg[1]_1\(0) => \oSyncStages_reg[1]_0\(0),
      \oSyncStages_reg[1]_2\(0) => \oSyncStages_reg[1]_1\(0),
      \oSyncStages_reg[1]_3\(0) => \oSyncStages_reg[1]_2\(0),
      \oSyncStages_reg[1]_4\(0) => \oSyncStages_reg[1]_3\(0),
      \out\(0) => \out\(0),
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(0) => s_axis_tuser(0),
      video_aclk => video_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ is
  port (
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\
     port map (
      AS(0) => AS(0),
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 53 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 53 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "16'b0001010000000100";
  attribute EN_AE : string;
  attribute EN_AE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2048;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 110592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2048;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2043;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2043;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 54;
  attribute READ_MODE : integer;
  attribute READ_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 825503796;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 54;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_base;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 51 downto 40 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair9";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 41;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2047;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 42;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 110592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(53 downto 52) <= \^dout\(53 downto 52);
  dout(51) <= \<const0>\;
  dout(50) <= \<const0>\;
  dout(49) <= \<const0>\;
  dout(48) <= \<const0>\;
  dout(47) <= \<const0>\;
  dout(46) <= \<const0>\;
  dout(45) <= \<const0>\;
  dout(44) <= \<const0>\;
  dout(43) <= \<const0>\;
  dout(42) <= \<const0>\;
  dout(41) <= \<const0>\;
  dout(40) <= \<const0>\;
  dout(39 downto 0) <= \^dout\(39 downto 0);
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.rdpp1_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[3]\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_22,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_24,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_memory_base
     port map (
      addra(10 downto 0) => wr_pntr_ext(10 downto 0),
      addrb(10 downto 0) => rd_pntr_ext(10 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(53 downto 52) => din(53 downto 52),
      dina(51 downto 40) => B"000000000000",
      dina(39 downto 0) => din(39 downto 0),
      dinb(53 downto 0) => B"000000000000000000000000000000000000000000000000000000",
      douta(53 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(53 downto 0),
      doutb(53 downto 52) => \^dout\(53 downto 52),
      doutb(51 downto 40) => \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\(51 downto 40),
      doutb(39 downto 0) => \^dout\(39 downto 0),
      ena => '0',
      enb => rdp_inst_n_23,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => rd_data_count(10),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => rd_data_count(11),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
      R => \grdc.rd_data_count_i0\
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => wr_data_count(10),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => wr_data_count(11),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => xpm_fifo_rst_inst_n_1
    );
rdp_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\
     port map (
      CO(0) => leaving_empty0,
      DI(0) => rdp_inst_n_11,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_23,
      Q(10 downto 0) => rd_pntr_ext(10 downto 0),
      S(3) => rdp_inst_n_12,
      S(2) => rdp_inst_n_13,
      S(1) => rdp_inst_n_14,
      S(0) => rdp_inst_n_15,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[11]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[2]_0\(0) => rdp_inst_n_17,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_21,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_22,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_24,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(10) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(9) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(8) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(7) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(6) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(5) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(4) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(3) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(2) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(1) => wrpp1_inst_n_9,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(0) => wrpp1_inst_n_10,
      \grdc.rd_data_count_i_reg[11]\(11) => wrp_inst_n_1,
      \grdc.rd_data_count_i_reg[11]\(10 downto 0) => wr_pntr_ext(10 downto 0),
      \grdc.rd_data_count_i_reg[3]\(0) => count_value_i(1),
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_23,
      Q(10) => rdpp1_inst_n_0,
      Q(9) => rdpp1_inst_n_1,
      Q(8) => rdpp1_inst_n_2,
      Q(7) => rdpp1_inst_n_3,
      Q(6) => rdpp1_inst_n_4,
      Q(5) => rdpp1_inst_n_5,
      Q(4) => rdpp1_inst_n_6,
      Q(3) => rdpp1_inst_n_7,
      Q(2) => rdpp1_inst_n_8,
      Q(1) => rdpp1_inst_n_9,
      Q(0) => rdpp1_inst_n_10,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[3]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      S(0) => rst_d1_inst_n_2,
      clr_full => clr_full,
      \count_value_i_reg[3]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \count_value_i_reg[3]_0\(0) => wr_pntr_ext(0),
      \count_value_i_reg[3]_1\(0) => wrpp1_inst_n_10,
      d_out_reg_0(0) => rst_d1_inst_n_3,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrp_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\
     port map (
      CO(0) => leaving_empty0,
      D(11 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(11 downto 0),
      DI(1) => rdp_inst_n_11,
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      E(0) => ram_wr_en_i,
      Q(11) => wrp_inst_n_1,
      Q(10 downto 0) => wr_pntr_ext(10 downto 0),
      S(0) => rst_d1_inst_n_2,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_23,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(10) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(9) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(8) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(7) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(4) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(3) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(2) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(1) => rdpp1_inst_n_9,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(0) => rdpp1_inst_n_10,
      \grdc.rd_data_count_i_reg[11]\(3) => rdp_inst_n_12,
      \grdc.rd_data_count_i_reg[11]\(2) => rdp_inst_n_13,
      \grdc.rd_data_count_i_reg[11]\(1) => rdp_inst_n_14,
      \grdc.rd_data_count_i_reg[11]\(0) => rdp_inst_n_15,
      \grdc.rd_data_count_i_reg[11]_0\(8 downto 0) => rd_pntr_ext(9 downto 1),
      \grdc.rd_data_count_i_reg[3]\(2) => rdp_inst_n_17,
      \grdc.rd_data_count_i_reg[3]\(1) => \gen_fwft.rdpp1_inst_n_0\,
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[3]_0\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_18,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_19,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_20,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_21,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      wr_clk => wr_clk
    );
wrpp1_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\
     port map (
      E(0) => ram_wr_en_i,
      Q(10) => wrpp1_inst_n_0,
      Q(9) => wrpp1_inst_n_1,
      Q(8) => wrpp1_inst_n_2,
      Q(7) => wrpp1_inst_n_3,
      Q(6) => wrpp1_inst_n_4,
      Q(5) => wrpp1_inst_n_5,
      Q(4) => wrpp1_inst_n_6,
      Q(3) => wrpp1_inst_n_7,
      Q(2) => wrpp1_inst_n_8,
      Q(1) => wrpp1_inst_n_9,
      Q(0) => wrpp1_inst_n_10,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_3,
      wr_clk => wr_clk
    );
xpm_fifo_rst_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_i,
      Q(0) => xpm_fifo_rst_inst_n_1,
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[10]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \grdc.rd_data_count_i_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38448)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 54;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "16'b0001010000000100";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "16'b0001010000000100";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 2048;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "auto";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 11;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 12;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 40;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 40;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 52;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 51;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 50;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 45;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 4043;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 53;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 825503796;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 825503796;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "true";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 51 downto 40 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001010000000100";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 2048;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 110592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 2048;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 2043;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 2043;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 12;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 54;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is 825503796;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 54;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 12;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 11;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(4) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  sbiterr_axis <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(53) => s_axis_tlast,
      din(52) => s_axis_tuser(0),
      din(51 downto 40) => B"000000000000",
      din(39 downto 0) => s_axis_tdata(39 downto 0),
      dout(53) => m_axis_tlast,
      dout(52) => m_axis_tuser(0),
      dout(51 downto 40) => NLW_xpm_fifo_base_inst_dout_UNCONNECTED(51 downto 40),
      dout(39 downto 0) => m_axis_tdata(39 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(11 downto 0) => rd_data_count_axis(11 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(11 downto 0) => wr_data_count_axis(11 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4848)
`protect data_block
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
3PJy
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top : entity is "axis_data_fifo_v2_0_4_top";
end system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top is
  signal \gen_fifo.xpm_fifo_axis_inst_n_56\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_57\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_58\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_59\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_60\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_61\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_62\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_63\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_64\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_65\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_66\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_67\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_68\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_69\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_70\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_71\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_72\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_73\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_74\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_75\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_76\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_77\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_78\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_79\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_80\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_81\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_82\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_83\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_84\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_85\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 54;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \gen_fifo.xpm_fifo_axis_inst\ : label is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001010000000100";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001010000000100";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 2048;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is "auto";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \gen_fifo.xpm_fifo_axis_inst\ : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 40;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 40;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 52;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 51;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 50;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 45;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4043;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 53;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \gen_fifo.xpm_fifo_axis_inst\ : label is 825503796;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is 825503796;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_fifo.xpm_fifo_axis_inst\ : label is "TRUE";
begin
\gen_fifo.xpm_fifo_axis_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis
     port map (
      almost_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_83\,
      almost_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_69\,
      dbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_85\,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axis_aclk,
      m_axis_tdata(39 downto 0) => m_axis_tdata(39 downto 0),
      m_axis_tdest(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(4 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\(4 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(4 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\(4 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_70\,
      prog_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_56\,
      rd_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_71\,
      rd_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_72\,
      rd_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_73\,
      rd_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_74\,
      rd_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_75\,
      rd_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_76\,
      rd_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_77\,
      rd_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_78\,
      rd_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_79\,
      rd_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_80\,
      rd_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_81\,
      rd_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_82\,
      s_aclk => s_axis_aclk,
      s_aresetn => s_axis_aresetn,
      s_axis_tdata(39 downto 0) => s_axis_tdata(39 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(4 downto 0) => B"00000",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(4 downto 0) => B"00000",
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_84\,
      wr_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_57\,
      wr_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_58\,
      wr_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_59\,
      wr_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_60\,
      wr_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_61\,
      wr_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_62\,
      wr_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_63\,
      wr_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_64\,
      wr_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_65\,
      wr_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_66\,
      wr_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_67\,
      wr_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_68\
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1328)
`protect data_block
gusOymz6Z1hc7sPfRuJW4RAVrxCO7W/v7bMmp0ANy+GLNFQnCarJsoOyifK8OEx/1MIjzDk7ltTx
fvGmuBNYEC7d8kQwCwCxh0VW9ZI2OPkDPfcQVO3afsFc/3pWE/RfKzYLodGg/f2AoOuJpFg0u1dK
yk378+b9uKWN4m341L3nepZpSSgD4cyLDSHTBtgKduVi5YNqVsqCXuZ8Pd0c1X8UuvmtRPgdWxMv
pyU84avtVQqNsFH4VJuWf2GuoxwecVcoGjfSgYBl1iCZ99w5dXqim0AL+z9C3BnaSWEsf2cuGAYx
0kAeSdUXaAgpfiH+f3P/IVPGSL4Yz3o2Z8F4YNEqJhx4o9SqbuaxiHmQ+6/UFht3jJADuWZfPHHk
MyhjSk0LjeUI/TUE8oU+cSewr7xBjwYGDz9oKpB6dy+T93hLVU2OGkzMpRCu8RpYo+2C7yiseCxY
lzT4kubGCiR1dFn5Z+2sHShCQyUqspkWMocQvPqTxQmR/dx8WjK25WtYJ9cfAaMc1mxBELLd5EN5
3lW9M5gld3zZaIWhHHFvnY/pKkemhxbGfM1FjYkqArJ0s7Iv15anhkeBUH9524+oIEXsozPIn1Uq
WFXe8ZPO0G9ASWTCs+EX0HUVXTGYQAYWivvy7uMJPoK/+pI5irz2kFH8WsrzRupkg78rA7cL/Lrf
7ISYhoQE2CrxpJZP5EVJ3wuC7OFKThZPDKXBpGXfOgdfAm4sdQBJATAI33vGGYtYSeZMN/Fasfjy
Nyru5OmIMVI+lvw+KeUzoyM93+2Ar6+uEfHuNY8nfQNuu2nTYhazOM3Ke8kBXCjgsodP7pBAu/9c
UQ5IJM/vsn6KKTklA+jw/GARWuoX0AqJk0BFYsTimJ/+DbZ7uIzxOZsRRfSWtTXjKTUuoGKOJGsx
fdB3xiZSyFXBOhJXklAcWYaUo2Q+7qGW39EX2WT7lkXiur7BRPX6SvClWg1lEYfQfehac+uva0HK
vzkanSqi7GuYJVG6cLvQoy4y9Z6GUAh96SZjm8H83AgliR75Smr8jIW4ORpPjD7nLqCW1XUNrFuo
6nB+DmAZZw6JLv9hB4Kai0YWENDs9q9yU3dtjRR+IQT2/Ta+uVili5z/OXnxEH0H68lfsAmnTk0S
kVHBewenUl7Ql7ovudLzfS9XLMtBFtMBMr/G6QtkWP3ppP+CnnL/BX0TIiTYYzgrljFIuP6220+A
bXoiu7cO43uyC0oS1lU/vjtnSVp33NDhd2HuP0djkITUbh0MuJqoOZgsz/xFaIOMpgUQgGu93Jx+
IZaI2da5i27bGXywvf5qu7l63lHp0SP8P1mJKkuosR39OCyHTabsvhhdAY7KCWU0Il6az1REstDY
+QeHuSQOovEcMSsYibzty+iBUAzNcLOPWA9plDvifCK7NtY8m0Ql5Nt0axFy0NHu6yeQPwpvwkJl
RrZtlWhl34svWT10FyDLXUcpqqop1bZ+kvSuq3SkEd1sN+p57FrW2lGj9QQ2DQau2rVHG2ez5oZW
pgtT7fByyM2+v7wo1lIOLBsta2k6H2lG/ieK0R1++aa4Z2ADQzREKzclx+4UGPR6R4N0P/m2B6ep
WX8iWC8athTBUpe5xyb3IYlGpqd0UbAjBQjXMsu6CfVP7UCdDISPneliMajNZdtjR71Lu5tq2Bxb
uy2qwgi/Hnvu2QZZCrX+KpYU2srBEZvRXMHH6maNJKdS3jG1GAMVpEP+mhpftK0wv8/biMs1cXbn
BrqUlJxjCqdA41pP7YGPzhI=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_line_buffer is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "line_buffer,axis_data_fifo_v2_0_4_top,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "line_buffer";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "axis_data_fifo_v2_0_4_top,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0_line_buffer;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_line_buffer is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute x_interface_parameter of m_axis_tuser : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute x_interface_parameter of s_axis_tuser : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  axis_rd_data_count(31) <= \<const0>\;
  axis_rd_data_count(30) <= \<const0>\;
  axis_rd_data_count(29) <= \<const0>\;
  axis_rd_data_count(28) <= \<const0>\;
  axis_rd_data_count(27) <= \<const0>\;
  axis_rd_data_count(26) <= \<const0>\;
  axis_rd_data_count(25) <= \<const0>\;
  axis_rd_data_count(24) <= \<const0>\;
  axis_rd_data_count(23) <= \<const0>\;
  axis_rd_data_count(22) <= \<const0>\;
  axis_rd_data_count(21) <= \<const0>\;
  axis_rd_data_count(20) <= \<const0>\;
  axis_rd_data_count(19) <= \<const0>\;
  axis_rd_data_count(18) <= \<const0>\;
  axis_rd_data_count(17) <= \<const0>\;
  axis_rd_data_count(16) <= \<const0>\;
  axis_rd_data_count(15) <= \<const0>\;
  axis_rd_data_count(14) <= \<const0>\;
  axis_rd_data_count(13) <= \<const0>\;
  axis_rd_data_count(12) <= \<const0>\;
  axis_rd_data_count(11) <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_wr_data_count(31) <= \<const0>\;
  axis_wr_data_count(30) <= \<const0>\;
  axis_wr_data_count(29) <= \<const0>\;
  axis_wr_data_count(28) <= \<const0>\;
  axis_wr_data_count(27) <= \<const0>\;
  axis_wr_data_count(26) <= \<const0>\;
  axis_wr_data_count(25) <= \<const0>\;
  axis_wr_data_count(24) <= \<const0>\;
  axis_wr_data_count(23) <= \<const0>\;
  axis_wr_data_count(22) <= \<const0>\;
  axis_wr_data_count(21) <= \<const0>\;
  axis_wr_data_count(20) <= \<const0>\;
  axis_wr_data_count(19) <= \<const0>\;
  axis_wr_data_count(18) <= \<const0>\;
  axis_wr_data_count(17) <= \<const0>\;
  axis_wr_data_count(16) <= \<const0>\;
  axis_wr_data_count(15) <= \<const0>\;
  axis_wr_data_count(14) <= \<const0>\;
  axis_wr_data_count(13) <= \<const0>\;
  axis_wr_data_count(12) <= \<const0>\;
  axis_wr_data_count(11) <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top
     port map (
      m_axis_tdata(39 downto 0) => m_axis_tdata(39 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(39 downto 0) => s_axis_tdata(39 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59392)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_cdc_fifo is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "cdc_fifo,fifo_generator_v13_2_5,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "cdc_fifo";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "fifo_generator_v13_2_5,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0_cdc_fifo;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_cdc_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 1;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 37;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 1;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 1;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 1;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 29;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 32;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 5;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of m_aclk : signal is "xilinx.com:signal:clock:1.0 master_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_aclk : signal is "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_aclk : signal is "xilinx.com:signal:clock:1.0 slave_aclk CLK";
  attribute x_interface_parameter of s_aclk : signal is "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_aresetn : signal is "xilinx.com:signal:reset:1.0 slave_aresetn RST";
  attribute x_interface_parameter of s_aresetn : signal is "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
U0: entity work.system_MIPI_CSI_2_RX_0_0_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(5 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(5 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(4 downto 0) => B"00000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(4 downto 0) => B"00000",
      axis_rd_data_count(5 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(5 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(5 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(5 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => NLW_U0_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => NLW_U0_dout_UNCONNECTED(17 downto 0),
      empty => NLW_U0_empty_UNCONNECTED,
      full => NLW_U0_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => m_aclk,
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => NLW_U0_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(0) => NLW_U0_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => s_aclk,
      s_aclk_en => '0',
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_LLP is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    mFmt_Tvalid_reg_0 : out STD_LOGIC;
    mFmt_Tlast_reg_0 : out STD_LOGIC;
    mReg_Tlast_reg_0 : out STD_LOGIC;
    \goreg_dm.dout_i_reg[0]\ : out STD_LOGIC;
    sValid_reg : out STD_LOGIC;
    sError_reg : out STD_LOGIC;
    mKeep_reg_0 : out STD_LOGIC;
    mIsHeader_reg_0 : out STD_LOGIC;
    mReg_Tvalid_reg_0 : out STD_LOGIC;
    \mReg_Tuser_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_sState_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \delay_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RAW10Formatter.cnt_reg[2]_0\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[0]\ : out STD_LOGIC;
    \sErrSyndrome_reg[4]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    mReg_Tuser0 : out STD_LOGIC;
    mIsHeader0 : out STD_LOGIC;
    mKeep0_out : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    sValid_reg_0 : in STD_LOGIC;
    sError_reg_0 : in STD_LOGIC;
    mKeep_reg_1 : in STD_LOGIC;
    mIsHeader_reg_1 : in STD_LOGIC;
    mReg_Tvalid_reg_1 : in STD_LOGIC;
    \mReg_Tuser_reg[0]_1\ : in STD_LOGIC;
    mFmt_Tvalid_reg_1 : in STD_LOGIC;
    mFmt_Tlast_reg_1 : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_LLP : entity is "LLP";
end system_MIPI_CSI_2_RX_0_0_LLP;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_LLP is
  signal DataFIFO_n_10 : STD_LOGIC;
  signal DataFIFO_n_11 : STD_LOGIC;
  signal DataFIFO_n_12 : STD_LOGIC;
  signal DataFIFO_n_13 : STD_LOGIC;
  signal DataFIFO_n_14 : STD_LOGIC;
  signal DataFIFO_n_15 : STD_LOGIC;
  signal DataFIFO_n_16 : STD_LOGIC;
  signal DataFIFO_n_17 : STD_LOGIC;
  signal DataFIFO_n_18 : STD_LOGIC;
  signal DataFIFO_n_19 : STD_LOGIC;
  signal DataFIFO_n_2 : STD_LOGIC;
  signal DataFIFO_n_20 : STD_LOGIC;
  signal DataFIFO_n_21 : STD_LOGIC;
  signal DataFIFO_n_22 : STD_LOGIC;
  signal DataFIFO_n_23 : STD_LOGIC;
  signal DataFIFO_n_24 : STD_LOGIC;
  signal DataFIFO_n_25 : STD_LOGIC;
  signal DataFIFO_n_26 : STD_LOGIC;
  signal DataFIFO_n_27 : STD_LOGIC;
  signal DataFIFO_n_28 : STD_LOGIC;
  signal DataFIFO_n_29 : STD_LOGIC;
  signal DataFIFO_n_3 : STD_LOGIC;
  signal DataFIFO_n_30 : STD_LOGIC;
  signal DataFIFO_n_31 : STD_LOGIC;
  signal DataFIFO_n_32 : STD_LOGIC;
  signal DataFIFO_n_33 : STD_LOGIC;
  signal DataFIFO_n_34 : STD_LOGIC;
  signal DataFIFO_n_35 : STD_LOGIC;
  signal DataFIFO_n_36 : STD_LOGIC;
  signal DataFIFO_n_37 : STD_LOGIC;
  signal DataFIFO_n_4 : STD_LOGIC;
  signal DataFIFO_n_5 : STD_LOGIC;
  signal DataFIFO_n_6 : STD_LOGIC;
  signal DataFIFO_n_7 : STD_LOGIC;
  signal DataFIFO_n_8 : STD_LOGIC;
  signal DataFIFO_n_9 : STD_LOGIC;
  signal ECCx_n_10 : STD_LOGIC;
  signal ECCx_n_13 : STD_LOGIC;
  signal ECCx_n_14 : STD_LOGIC;
  signal ECCx_n_15 : STD_LOGIC;
  signal ECCx_n_16 : STD_LOGIC;
  signal ECCx_n_17 : STD_LOGIC;
  signal ECCx_n_18 : STD_LOGIC;
  signal ECCx_n_19 : STD_LOGIC;
  signal ECCx_n_20 : STD_LOGIC;
  signal ECCx_n_21 : STD_LOGIC;
  signal ECCx_n_22 : STD_LOGIC;
  signal ECCx_n_23 : STD_LOGIC;
  signal ECCx_n_24 : STD_LOGIC;
  signal ECCx_n_25 : STD_LOGIC;
  signal ECCx_n_26 : STD_LOGIC;
  signal ECCx_n_27 : STD_LOGIC;
  signal ECCx_n_28 : STD_LOGIC;
  signal ECCx_n_7 : STD_LOGIC;
  signal ECCx_n_9 : STD_LOGIC;
  signal \RAW10Formatter.cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[0]_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[1]_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[2]_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][9]\ : STD_LOGIC;
  signal SyncMReset_n_1 : STD_LOGIC;
  signal SyncMReset_n_11 : STD_LOGIC;
  signal SyncMReset_n_2 : STD_LOGIC;
  signal SyncMReset_n_3 : STD_LOGIC;
  signal SyncMReset_n_4 : STD_LOGIC;
  signal SyncMReset_n_5 : STD_LOGIC;
  signal SyncMReset_n_6 : STD_LOGIC;
  signal SyncMReset_n_7 : STD_LOGIC;
  signal SyncMReset_n_8 : STD_LOGIC;
  signal SyncMReset_n_9 : STD_LOGIC;
  signal cnt : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal delay : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : STD_LOGIC;
  signal \^goreg_dm.dout_i_reg[0]\ : STD_LOGIC;
  signal mFlush_reg_n_0 : STD_LOGIC;
  signal mFmt_Tdata : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \mFmt_Tdata[39]_i_3_n_0\ : STD_LOGIC;
  signal \mFmt_Tdata[39]_i_4_n_0\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[32]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[33]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[34]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[35]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[36]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[37]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[38]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[39]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[9]\ : STD_LOGIC;
  signal \^mfmt_tlast_reg_0\ : STD_LOGIC;
  signal \mFmt_Tuser_reg_n_0_[0]\ : STD_LOGIC;
  signal \^mfmt_tvalid_reg_0\ : STD_LOGIC;
  signal \^misheader_reg_0\ : STD_LOGIC;
  signal \^mkeep_reg_0\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[9]\ : STD_LOGIC;
  signal mReg_Tlast_i_2_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_3_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_4_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_5_n_0 : STD_LOGIC;
  signal \^mreg_tlast_reg_0\ : STD_LOGIC;
  signal \^mreg_tuser_reg[0]_0\ : STD_LOGIC;
  signal \^mreg_tvalid_reg_0\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[9]\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \^osyncstages_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pix_mux[0]_1\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[1]_0\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[2]_2\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[3]_3\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal sAxisTreadyInt : STD_LOGIC;
  signal s_axis_aresetn : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataFIFO : label is "cdc_fifo,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataFIFO : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DataFIFO : label is "fifo_generator_v13_2_5,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of LineBufferFIFO : label is "line_buffer,axis_data_fifo_v2_0_4_top,{}";
  attribute downgradeipidentifiedwarnings of LineBufferFIFO : label is "yes";
  attribute x_core_info of LineBufferFIFO : label is "axis_data_fifo_v2_0_4_top,Vivado 2020.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAW10Formatter.cnt[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \RAW10Formatter.cnt[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][5]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][9]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][5]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][9]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][9]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][5]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][6]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][8]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][9]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mFmt_Tdata[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mFmt_Tdata[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mFmt_Tdata[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mFmt_Tdata[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mFmt_Tdata[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mFmt_Tdata[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mFmt_Tdata[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mFmt_Tdata[39]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mFmt_Tdata[39]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mWordCount[0]_i_3\ : label is "soft_lutpair14";
begin
  \RAW10Formatter.cnt_reg[0]_0\ <= \^raw10formatter.cnt_reg[0]_0\;
  \RAW10Formatter.cnt_reg[1]_0\ <= \^raw10formatter.cnt_reg[1]_0\;
  \RAW10Formatter.cnt_reg[2]_0\ <= \^raw10formatter.cnt_reg[2]_0\;
  \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ <= \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\;
  \goreg_dm.dout_i_reg[0]\ <= \^goreg_dm.dout_i_reg[0]\;
  mFmt_Tlast_reg_0 <= \^mfmt_tlast_reg_0\;
  mFmt_Tvalid_reg_0 <= \^mfmt_tvalid_reg_0\;
  mIsHeader_reg_0 <= \^misheader_reg_0\;
  mKeep_reg_0 <= \^mkeep_reg_0\;
  mReg_Tlast_reg_0 <= \^mreg_tlast_reg_0\;
  \mReg_Tuser_reg[0]_0\ <= \^mreg_tuser_reg[0]_0\;
  mReg_Tvalid_reg_0 <= \^mreg_tvalid_reg_0\;
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  \oSyncStages_reg[1]\(0) <= \^osyncstages_reg[1]\(0);
  \out\(0) <= \^out\(0);
  s_axis_tready <= \^s_axis_tready\;
DataFIFO: entity work.system_MIPI_CSI_2_RX_0_0_cdc_fifo
     port map (
      m_aclk => video_aclk,
      m_axis_tdata(31) => DataFIFO_n_2,
      m_axis_tdata(30) => DataFIFO_n_3,
      m_axis_tdata(29) => DataFIFO_n_4,
      m_axis_tdata(28) => DataFIFO_n_5,
      m_axis_tdata(27) => DataFIFO_n_6,
      m_axis_tdata(26) => DataFIFO_n_7,
      m_axis_tdata(25) => DataFIFO_n_8,
      m_axis_tdata(24) => DataFIFO_n_9,
      m_axis_tdata(23) => DataFIFO_n_10,
      m_axis_tdata(22) => DataFIFO_n_11,
      m_axis_tdata(21) => DataFIFO_n_12,
      m_axis_tdata(20) => DataFIFO_n_13,
      m_axis_tdata(19) => DataFIFO_n_14,
      m_axis_tdata(18) => DataFIFO_n_15,
      m_axis_tdata(17) => DataFIFO_n_16,
      m_axis_tdata(16) => DataFIFO_n_17,
      m_axis_tdata(15) => DataFIFO_n_18,
      m_axis_tdata(14) => DataFIFO_n_19,
      m_axis_tdata(13) => DataFIFO_n_20,
      m_axis_tdata(12) => DataFIFO_n_21,
      m_axis_tdata(11) => DataFIFO_n_22,
      m_axis_tdata(10) => DataFIFO_n_23,
      m_axis_tdata(9) => DataFIFO_n_24,
      m_axis_tdata(8) => DataFIFO_n_25,
      m_axis_tdata(7) => DataFIFO_n_26,
      m_axis_tdata(6) => DataFIFO_n_27,
      m_axis_tdata(5) => DataFIFO_n_28,
      m_axis_tdata(4) => DataFIFO_n_29,
      m_axis_tdata(3) => DataFIFO_n_30,
      m_axis_tdata(2) => DataFIFO_n_31,
      m_axis_tdata(1) => DataFIFO_n_32,
      m_axis_tdata(0) => DataFIFO_n_33,
      m_axis_tkeep(3) => DataFIFO_n_34,
      m_axis_tkeep(2) => DataFIFO_n_35,
      m_axis_tkeep(1) => DataFIFO_n_36,
      m_axis_tkeep(0) => DataFIFO_n_37,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => ECCx_n_9,
      m_axis_tvalid => \^m_axis_tvalid\,
      s_aclk => RxByteClkHS,
      s_aresetn => s_aresetn,
      s_axis_tdata(31 downto 0) => Q(31 downto 0),
      s_axis_tkeep(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => sAxisTreadyInt,
      s_axis_tvalid => s_axis_tvalid
    );
ECCx: entity work.system_MIPI_CSI_2_RX_0_0_ECC
     port map (
      D(29) => DataFIFO_n_4,
      D(28) => DataFIFO_n_5,
      D(27) => DataFIFO_n_6,
      D(26) => DataFIFO_n_7,
      D(25) => DataFIFO_n_8,
      D(24) => DataFIFO_n_9,
      D(23) => DataFIFO_n_10,
      D(22) => DataFIFO_n_11,
      D(21) => DataFIFO_n_12,
      D(20) => DataFIFO_n_13,
      D(19) => DataFIFO_n_14,
      D(18) => DataFIFO_n_15,
      D(17) => DataFIFO_n_16,
      D(16) => DataFIFO_n_17,
      D(15) => DataFIFO_n_18,
      D(14) => DataFIFO_n_19,
      D(13) => DataFIFO_n_20,
      D(12) => DataFIFO_n_21,
      D(11) => DataFIFO_n_22,
      D(10) => DataFIFO_n_23,
      D(9) => DataFIFO_n_24,
      D(8) => DataFIFO_n_25,
      D(7) => DataFIFO_n_26,
      D(6) => DataFIFO_n_27,
      D(5) => DataFIFO_n_28,
      D(4) => DataFIFO_n_29,
      D(3) => DataFIFO_n_30,
      D(2) => DataFIFO_n_31,
      D(1) => DataFIFO_n_32,
      D(0) => DataFIFO_n_33,
      \FSM_onehot_sState_reg[3]_0\(0) => \FSM_onehot_sState_reg[3]\(0),
      O(3) => ECCx_n_13,
      O(2) => ECCx_n_14,
      O(1) => ECCx_n_15,
      O(0) => ECCx_n_16,
      Q(3 downto 0) => \sErrSyndrome_reg[3]\(3 downto 0),
      \goreg_dm.dout_i_reg[0]\ => ECCx_n_10,
      mFlush_reg => \^mkeep_reg_0\,
      mFlush_reg_0 => mFlush_reg_n_0,
      mIsHeader0 => mIsHeader0,
      mKeep0_out => mKeep0_out,
      mReg_Tuser0 => mReg_Tuser0,
      \mWordCount_reg[0]\ => \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      \mWordCount_reg[11]\ => \mWordCount_reg_n_0_[8]\,
      \mWordCount_reg[11]_0\ => \mWordCount_reg_n_0_[9]\,
      \mWordCount_reg[11]_1\ => \mWordCount_reg_n_0_[10]\,
      \mWordCount_reg[11]_2\ => \mWordCount_reg_n_0_[11]\,
      \mWordCount_reg[15]\ => \mWordCount_reg_n_0_[12]\,
      \mWordCount_reg[15]_0\ => \mWordCount_reg_n_0_[13]\,
      \mWordCount_reg[15]_1\ => \mWordCount_reg_n_0_[14]\,
      \mWordCount_reg[15]_2\ => \mWordCount_reg_n_0_[15]\,
      \mWordCount_reg[3]\ => \mWordCount_reg_n_0_[2]\,
      \mWordCount_reg[3]_0\ => \mWordCount_reg_n_0_[3]\,
      \mWordCount_reg[3]_1\ => \mWordCount_reg_n_0_[0]\,
      \mWordCount_reg[3]_2\ => \mWordCount_reg_n_0_[1]\,
      \mWordCount_reg[7]\ => \mWordCount_reg_n_0_[4]\,
      \mWordCount_reg[7]_0\ => \mWordCount_reg_n_0_[5]\,
      \mWordCount_reg[7]_1\ => \mWordCount_reg_n_0_[6]\,
      \mWordCount_reg[7]_2\ => \mWordCount_reg_n_0_[7]\,
      m_axis_tkeep(3) => DataFIFO_n_34,
      m_axis_tkeep(2) => DataFIFO_n_35,
      m_axis_tkeep(1) => DataFIFO_n_36,
      m_axis_tkeep(0) => DataFIFO_n_37,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => ECCx_n_9,
      m_axis_tvalid => \^m_axis_tvalid\,
      \out\(0) => \^out\(0),
      \sECCIn_reg[0]_0\ => \^misheader_reg_0\,
      \sErrSyndrome_reg[0]_0\ => \sErrSyndrome_reg[0]\,
      \sErrSyndrome_reg[4]_0\ => \sErrSyndrome_reg[4]\,
      sError_reg_0 => sError_reg,
      sError_reg_1 => sError_reg_0,
      \sHeaderOut_reg[5]_0\ => ECCx_n_7,
      sValid_reg_0 => sValid_reg,
      sValid_reg_1(3) => ECCx_n_17,
      sValid_reg_1(2) => ECCx_n_18,
      sValid_reg_1(1) => ECCx_n_19,
      sValid_reg_1(0) => ECCx_n_20,
      sValid_reg_2(3) => ECCx_n_21,
      sValid_reg_2(2) => ECCx_n_22,
      sValid_reg_2(1) => ECCx_n_23,
      sValid_reg_2(0) => ECCx_n_24,
      sValid_reg_3(3) => ECCx_n_25,
      sValid_reg_3(2) => ECCx_n_26,
      sValid_reg_3(1) => ECCx_n_27,
      sValid_reg_3(0) => ECCx_n_28,
      sValid_reg_4 => sValid_reg_0,
      s_axis_tready => \^s_axis_tready\,
      video_aclk => video_aclk
    );
LineBufferFIFO: entity work.system_MIPI_CSI_2_RX_0_0_line_buffer
     port map (
      axis_rd_data_count(31 downto 0) => NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_tlast => m_axis_video_tlast,
      m_axis_tready => m_axis_video_tready,
      m_axis_tuser(0) => m_axis_video_tuser(0),
      m_axis_tvalid => m_axis_video_tvalid,
      s_axis_aclk => video_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(39) => \mFmt_Tdata_reg_n_0_[39]\,
      s_axis_tdata(38) => \mFmt_Tdata_reg_n_0_[38]\,
      s_axis_tdata(37) => \mFmt_Tdata_reg_n_0_[37]\,
      s_axis_tdata(36) => \mFmt_Tdata_reg_n_0_[36]\,
      s_axis_tdata(35) => \mFmt_Tdata_reg_n_0_[35]\,
      s_axis_tdata(34) => \mFmt_Tdata_reg_n_0_[34]\,
      s_axis_tdata(33) => \mFmt_Tdata_reg_n_0_[33]\,
      s_axis_tdata(32) => \mFmt_Tdata_reg_n_0_[32]\,
      s_axis_tdata(31) => \mFmt_Tdata_reg_n_0_[31]\,
      s_axis_tdata(30) => \mFmt_Tdata_reg_n_0_[30]\,
      s_axis_tdata(29) => \mFmt_Tdata_reg_n_0_[29]\,
      s_axis_tdata(28) => \mFmt_Tdata_reg_n_0_[28]\,
      s_axis_tdata(27) => \mFmt_Tdata_reg_n_0_[27]\,
      s_axis_tdata(26) => \mFmt_Tdata_reg_n_0_[26]\,
      s_axis_tdata(25) => \mFmt_Tdata_reg_n_0_[25]\,
      s_axis_tdata(24) => \mFmt_Tdata_reg_n_0_[24]\,
      s_axis_tdata(23) => \mFmt_Tdata_reg_n_0_[23]\,
      s_axis_tdata(22) => \mFmt_Tdata_reg_n_0_[22]\,
      s_axis_tdata(21) => \mFmt_Tdata_reg_n_0_[21]\,
      s_axis_tdata(20) => \mFmt_Tdata_reg_n_0_[20]\,
      s_axis_tdata(19) => \mFmt_Tdata_reg_n_0_[19]\,
      s_axis_tdata(18) => \mFmt_Tdata_reg_n_0_[18]\,
      s_axis_tdata(17) => \mFmt_Tdata_reg_n_0_[17]\,
      s_axis_tdata(16) => \mFmt_Tdata_reg_n_0_[16]\,
      s_axis_tdata(15) => \mFmt_Tdata_reg_n_0_[15]\,
      s_axis_tdata(14) => \mFmt_Tdata_reg_n_0_[14]\,
      s_axis_tdata(13) => \mFmt_Tdata_reg_n_0_[13]\,
      s_axis_tdata(12) => \mFmt_Tdata_reg_n_0_[12]\,
      s_axis_tdata(11) => \mFmt_Tdata_reg_n_0_[11]\,
      s_axis_tdata(10) => \mFmt_Tdata_reg_n_0_[10]\,
      s_axis_tdata(9) => \mFmt_Tdata_reg_n_0_[9]\,
      s_axis_tdata(8) => \mFmt_Tdata_reg_n_0_[8]\,
      s_axis_tdata(7) => \mFmt_Tdata_reg_n_0_[7]\,
      s_axis_tdata(6) => \mFmt_Tdata_reg_n_0_[6]\,
      s_axis_tdata(5) => \mFmt_Tdata_reg_n_0_[5]\,
      s_axis_tdata(4) => \mFmt_Tdata_reg_n_0_[4]\,
      s_axis_tdata(3) => \mFmt_Tdata_reg_n_0_[3]\,
      s_axis_tdata(2) => \mFmt_Tdata_reg_n_0_[2]\,
      s_axis_tdata(1) => \mFmt_Tdata_reg_n_0_[1]\,
      s_axis_tdata(0) => \mFmt_Tdata_reg_n_0_[0]\,
      s_axis_tlast => \^mfmt_tlast_reg_0\,
      s_axis_tready => \^s_axis_tready\,
      s_axis_tuser(0) => \mFmt_Tuser_reg_n_0_[0]\,
      s_axis_tvalid => \^mfmt_tvalid_reg_0\
    );
\RAW10Formatter.cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \^mreg_tvalid_reg_0\,
      O => cnt
    );
\RAW10Formatter.cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[0]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      O => \RAW10Formatter.cnt[2]_i_2_n_0\
    );
\RAW10Formatter.cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_4,
      Q => \^raw10formatter.cnt_reg[0]_0\,
      R => '0'
    );
\RAW10Formatter.cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_3,
      Q => \^raw10formatter.cnt_reg[1]_0\,
      R => '0'
    );
\RAW10Formatter.cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_2,
      Q => \^raw10formatter.cnt_reg[2]_0\,
      R => '0'
    );
\RAW10Formatter.pix_mux[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[24]\,
      I1 => \mReg_Tdata_reg_n_0_[8]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[16]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[0]\,
      O => \pix_mux[0]_1\(2)
    );
\RAW10Formatter.pix_mux[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[25]\,
      I1 => \mReg_Tdata_reg_n_0_[9]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[17]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[1]\,
      O => \pix_mux[0]_1\(3)
    );
\RAW10Formatter.pix_mux[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[26]\,
      I1 => \mReg_Tdata_reg_n_0_[10]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[18]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[2]\,
      O => \pix_mux[0]_1\(4)
    );
\RAW10Formatter.pix_mux[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[27]\,
      I1 => \mReg_Tdata_reg_n_0_[11]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[19]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[3]\,
      O => \pix_mux[0]_1\(5)
    );
\RAW10Formatter.pix_mux[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[28]\,
      I1 => \mReg_Tdata_reg_n_0_[12]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[20]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[4]\,
      O => \pix_mux[0]_1\(6)
    );
\RAW10Formatter.pix_mux[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[29]\,
      I1 => \mReg_Tdata_reg_n_0_[13]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[21]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[5]\,
      O => \pix_mux[0]_1\(7)
    );
\RAW10Formatter.pix_mux[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[30]\,
      I1 => \mReg_Tdata_reg_n_0_[14]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[22]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[6]\,
      O => \pix_mux[0]_1\(8)
    );
\RAW10Formatter.pix_mux[0][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[31]\,
      I1 => \mReg_Tdata_reg_n_0_[15]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[23]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[7]\,
      O => \pix_mux[0]_1\(9)
    );
\RAW10Formatter.pix_mux[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[24]\,
      I1 => \mReg_Tdata_reg_n_0_[0]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\,
      O => \pix_mux[1]_0\(2)
    );
\RAW10Formatter.pix_mux[1][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[16]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[8]\,
      O => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[25]\,
      I1 => \mReg_Tdata_reg_n_0_[1]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\,
      O => \pix_mux[1]_0\(3)
    );
\RAW10Formatter.pix_mux[1][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[17]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[9]\,
      O => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[26]\,
      I1 => \mReg_Tdata_reg_n_0_[2]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\,
      O => \pix_mux[1]_0\(4)
    );
\RAW10Formatter.pix_mux[1][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[18]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[10]\,
      O => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[27]\,
      I1 => \mReg_Tdata_reg_n_0_[3]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\,
      O => \pix_mux[1]_0\(5)
    );
\RAW10Formatter.pix_mux[1][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[19]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[11]\,
      O => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[28]\,
      I1 => \mReg_Tdata_reg_n_0_[4]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][6]_i_2_n_0\,
      O => \pix_mux[1]_0\(6)
    );
\RAW10Formatter.pix_mux[1][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[20]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[12]\,
      O => \RAW10Formatter.pix_mux[1][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[29]\,
      I1 => \mReg_Tdata_reg_n_0_[5]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][7]_i_2_n_0\,
      O => \pix_mux[1]_0\(7)
    );
\RAW10Formatter.pix_mux[1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[21]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[13]\,
      O => \RAW10Formatter.pix_mux[1][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[30]\,
      I1 => \mReg_Tdata_reg_n_0_[6]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][8]_i_2_n_0\,
      O => \pix_mux[1]_0\(8)
    );
\RAW10Formatter.pix_mux[1][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[22]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[14]\,
      O => \RAW10Formatter.pix_mux[1][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[31]\,
      I1 => \mReg_Tdata_reg_n_0_[7]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][9]_i_3_n_0\,
      O => \pix_mux[1]_0\(9)
    );
\RAW10Formatter.pix_mux[1][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[23]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[15]\,
      O => \RAW10Formatter.pix_mux[1][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[24]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][2]_i_2_n_0\,
      O => \pix_mux[2]_2\(2)
    );
\RAW10Formatter.pix_mux[2][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[16]\,
      O => \RAW10Formatter.pix_mux[2][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[25]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][3]_i_2_n_0\,
      O => \pix_mux[2]_2\(3)
    );
\RAW10Formatter.pix_mux[2][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[17]\,
      O => \RAW10Formatter.pix_mux[2][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[26]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][4]_i_2_n_0\,
      O => \pix_mux[2]_2\(4)
    );
\RAW10Formatter.pix_mux[2][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[18]\,
      O => \RAW10Formatter.pix_mux[2][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[27]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][5]_i_2_n_0\,
      O => \pix_mux[2]_2\(5)
    );
\RAW10Formatter.pix_mux[2][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[19]\,
      O => \RAW10Formatter.pix_mux[2][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[28]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][6]_i_2_n_0\,
      O => \pix_mux[2]_2\(6)
    );
\RAW10Formatter.pix_mux[2][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[20]\,
      O => \RAW10Formatter.pix_mux[2][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[29]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][7]_i_2_n_0\,
      O => \pix_mux[2]_2\(7)
    );
\RAW10Formatter.pix_mux[2][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[21]\,
      O => \RAW10Formatter.pix_mux[2][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[30]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][8]_i_2_n_0\,
      O => \pix_mux[2]_2\(8)
    );
\RAW10Formatter.pix_mux[2][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[22]\,
      O => \RAW10Formatter.pix_mux[2][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[31]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][9]_i_3_n_0\,
      O => \pix_mux[2]_2\(9)
    );
\RAW10Formatter.pix_mux[2][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[23]\,
      O => \RAW10Formatter.pix_mux[2][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[0]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][2]_i_2_n_0\,
      O => \pix_mux[3]_3\(2)
    );
\RAW10Formatter.pix_mux[3][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[16]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[24]\,
      O => \RAW10Formatter.pix_mux[3][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[1]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][3]_i_2_n_0\,
      O => \pix_mux[3]_3\(3)
    );
\RAW10Formatter.pix_mux[3][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[17]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[25]\,
      O => \RAW10Formatter.pix_mux[3][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[2]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][4]_i_2_n_0\,
      O => \pix_mux[3]_3\(4)
    );
\RAW10Formatter.pix_mux[3][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[18]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[26]\,
      O => \RAW10Formatter.pix_mux[3][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[3]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][5]_i_2_n_0\,
      O => \pix_mux[3]_3\(5)
    );
\RAW10Formatter.pix_mux[3][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[19]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[27]\,
      O => \RAW10Formatter.pix_mux[3][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[4]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][6]_i_2_n_0\,
      O => \pix_mux[3]_3\(6)
    );
\RAW10Formatter.pix_mux[3][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[20]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[28]\,
      O => \RAW10Formatter.pix_mux[3][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[5]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][7]_i_2_n_0\,
      O => \pix_mux[3]_3\(7)
    );
\RAW10Formatter.pix_mux[3][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[21]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[29]\,
      O => \RAW10Formatter.pix_mux[3][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[6]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][8]_i_2_n_0\,
      O => \pix_mux[3]_3\(8)
    );
\RAW10Formatter.pix_mux[3][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[22]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[30]\,
      O => \RAW10Formatter.pix_mux[3][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[7]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][9]_i_3_n_0\,
      O => \pix_mux[3]_3\(9)
    );
\RAW10Formatter.pix_mux[3][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[23]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[31]\,
      O => \RAW10Formatter.pix_mux[3][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(2),
      Q => data1(2),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(3),
      Q => data1(3),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(4),
      Q => data1(4),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(5),
      Q => data1(5),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(6),
      Q => data1(6),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(7),
      Q => data1(7),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(8),
      Q => data1(8),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(9),
      Q => data1(9),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(2),
      Q => data1(12),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(3),
      Q => data1(13),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(4),
      Q => data1(14),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(5),
      Q => data1(15),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(6),
      Q => data1(16),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(7),
      Q => data1(17),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(8),
      Q => data1(18),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(9),
      Q => data1(19),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(2),
      Q => data1(22),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(3),
      Q => data1(23),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(4),
      Q => data1(24),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(5),
      Q => data1(25),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(6),
      Q => data1(26),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(7),
      Q => data1(27),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(8),
      Q => data1(28),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(9),
      Q => data1(29),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(2),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][2]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(3),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][3]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(4),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][4]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(5),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][5]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(6),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][6]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(7),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][7]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(8),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][8]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(9),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][9]\,
      R => '0'
    );
SyncMReset: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\
     port map (
      AS(0) => AS(0),
      E(0) => SyncMReset_n_1,
      \RAW10Formatter.cnt_reg[0]\ => SyncMReset_n_4,
      \RAW10Formatter.cnt_reg[1]\ => SyncMReset_n_3,
      \RAW10Formatter.cnt_reg[1]_0\ => \^raw10formatter.cnt_reg[1]_0\,
      \RAW10Formatter.cnt_reg[1]_1\ => \^raw10formatter.cnt_reg[0]_0\,
      \RAW10Formatter.cnt_reg[2]\ => \RAW10Formatter.cnt[2]_i_2_n_0\,
      \RAW10Formatter.cnt_reg[2]_0\ => \^mreg_tvalid_reg_0\,
      \RAW10Formatter.cnt_reg[2]_1\ => \^mreg_tlast_reg_0\,
      \RAW10Formatter.cnt_reg[2]_2\ => \^raw10formatter.cnt_reg[2]_0\,
      cnt => cnt,
      \mFmt_Tuser_reg[0]\ => \^mfmt_tvalid_reg_0\,
      \mFmt_Tuser_reg[0]_0\ => \^mreg_tuser_reg[0]_0\,
      mFmt_Tvalid_reg => SyncMReset_n_11,
      \mReg_Tdata_reg[31]\ => \^mkeep_reg_0\,
      mReg_Tvalid_reg => SyncMReset_n_2,
      m_axis_tvalid => \^m_axis_tvalid\,
      \oSyncStages_reg[1]\(0) => SyncMReset_n_5,
      \oSyncStages_reg[1]_0\(0) => SyncMReset_n_6,
      \oSyncStages_reg[1]_1\(0) => SyncMReset_n_7,
      \oSyncStages_reg[1]_2\(0) => SyncMReset_n_8,
      \oSyncStages_reg[1]_3\(0) => SyncMReset_n_9,
      \out\(0) => \^out\(0),
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => \^s_axis_tready\,
      s_axis_tuser(0) => \mFmt_Tuser_reg_n_0_[0]\,
      video_aclk => video_aclk
    );
SyncSReset: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\
     port map (
      AS(0) => AS(0),
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]\(0) => \^osyncstages_reg[1]\(0)
    );
\delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \^osyncstages_reg[1]\(0),
      D => sAxisTreadyInt,
      Q => delay(0)
    );
\delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \^osyncstages_reg[1]\(0),
      D => delay(0),
      Q => \delay_reg[1]_0\(0)
    );
mFlush_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => ECCx_n_10,
      Q => mFlush_reg_n_0,
      R => '0'
    );
\mFmt_Tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \mReg_Tdata_reg_n_0_[24]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\,
      O => mFmt_Tdata(0)
    );
\mFmt_Tdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \mReg_Tdata_reg_n_0_[26]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\,
      O => mFmt_Tdata(10)
    );
\mFmt_Tdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \mReg_Tdata_reg_n_0_[27]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\,
      O => mFmt_Tdata(11)
    );
\mFmt_Tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(12),
      O => mFmt_Tdata(12)
    );
\mFmt_Tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(13),
      O => mFmt_Tdata(13)
    );
\mFmt_Tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(14),
      O => mFmt_Tdata(14)
    );
\mFmt_Tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(15),
      O => mFmt_Tdata(15)
    );
\mFmt_Tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(16),
      O => mFmt_Tdata(16)
    );
\mFmt_Tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(17),
      O => mFmt_Tdata(17)
    );
\mFmt_Tdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(18),
      O => mFmt_Tdata(18)
    );
\mFmt_Tdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(19),
      O => mFmt_Tdata(19)
    );
\mFmt_Tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \mReg_Tdata_reg_n_0_[25]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\,
      O => mFmt_Tdata(1)
    );
\mFmt_Tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \mReg_Tdata_reg_n_0_[28]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[12]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[20]\,
      O => mFmt_Tdata(20)
    );
\mFmt_Tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \mReg_Tdata_reg_n_0_[29]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[13]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[21]\,
      O => mFmt_Tdata(21)
    );
\mFmt_Tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[0]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(22),
      O => mFmt_Tdata(22)
    );
\mFmt_Tdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[1]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(23),
      O => mFmt_Tdata(23)
    );
\mFmt_Tdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[2]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(24),
      O => mFmt_Tdata(24)
    );
\mFmt_Tdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[3]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(25),
      O => mFmt_Tdata(25)
    );
\mFmt_Tdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[4]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(26),
      O => mFmt_Tdata(26)
    );
\mFmt_Tdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[5]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(27),
      O => mFmt_Tdata(27)
    );
\mFmt_Tdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[6]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(28),
      O => mFmt_Tdata(28)
    );
\mFmt_Tdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[7]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(29),
      O => mFmt_Tdata(29)
    );
\mFmt_Tdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \mReg_Tdata_reg_n_0_[30]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[14]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[22]\,
      O => mFmt_Tdata(30)
    );
\mFmt_Tdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \mReg_Tdata_reg_n_0_[31]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[15]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[23]\,
      O => mFmt_Tdata(31)
    );
\mFmt_Tdata[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][2]\,
      I1 => \mReg_Tdata_reg_n_0_[16]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[0]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[8]\,
      O => mFmt_Tdata(32)
    );
\mFmt_Tdata[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][3]\,
      I1 => \mReg_Tdata_reg_n_0_[17]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[1]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[9]\,
      O => mFmt_Tdata(33)
    );
\mFmt_Tdata[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][4]\,
      I1 => \mReg_Tdata_reg_n_0_[18]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[2]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[10]\,
      O => mFmt_Tdata(34)
    );
\mFmt_Tdata[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][5]\,
      I1 => \mReg_Tdata_reg_n_0_[19]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[3]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[11]\,
      O => mFmt_Tdata(35)
    );
\mFmt_Tdata[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][6]\,
      I1 => \mReg_Tdata_reg_n_0_[20]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[4]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[12]\,
      O => mFmt_Tdata(36)
    );
\mFmt_Tdata[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][7]\,
      I1 => \mReg_Tdata_reg_n_0_[21]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[5]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[13]\,
      O => mFmt_Tdata(37)
    );
\mFmt_Tdata[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][8]\,
      I1 => \mReg_Tdata_reg_n_0_[22]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[6]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[14]\,
      O => mFmt_Tdata(38)
    );
\mFmt_Tdata[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][9]\,
      I1 => \mReg_Tdata_reg_n_0_[23]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[7]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[15]\,
      O => mFmt_Tdata(39)
    );
\mFmt_Tdata[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[2]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      O => \mFmt_Tdata[39]_i_3_n_0\
    );
\mFmt_Tdata[39]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[2]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      O => \mFmt_Tdata[39]_i_4_n_0\
    );
\mFmt_Tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(0),
      Q => \mFmt_Tdata_reg_n_0_[0]\,
      R => '0'
    );
\mFmt_Tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(10),
      Q => \mFmt_Tdata_reg_n_0_[10]\,
      R => '0'
    );
\mFmt_Tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(11),
      Q => \mFmt_Tdata_reg_n_0_[11]\,
      R => '0'
    );
\mFmt_Tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(12),
      Q => \mFmt_Tdata_reg_n_0_[12]\,
      R => '0'
    );
\mFmt_Tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(13),
      Q => \mFmt_Tdata_reg_n_0_[13]\,
      R => '0'
    );
\mFmt_Tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(14),
      Q => \mFmt_Tdata_reg_n_0_[14]\,
      R => '0'
    );
\mFmt_Tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(15),
      Q => \mFmt_Tdata_reg_n_0_[15]\,
      R => '0'
    );
\mFmt_Tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(16),
      Q => \mFmt_Tdata_reg_n_0_[16]\,
      R => '0'
    );
\mFmt_Tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(17),
      Q => \mFmt_Tdata_reg_n_0_[17]\,
      R => '0'
    );
\mFmt_Tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(18),
      Q => \mFmt_Tdata_reg_n_0_[18]\,
      R => '0'
    );
\mFmt_Tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(19),
      Q => \mFmt_Tdata_reg_n_0_[19]\,
      R => '0'
    );
\mFmt_Tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(1),
      Q => \mFmt_Tdata_reg_n_0_[1]\,
      R => '0'
    );
\mFmt_Tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(20),
      Q => \mFmt_Tdata_reg_n_0_[20]\,
      R => '0'
    );
\mFmt_Tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(21),
      Q => \mFmt_Tdata_reg_n_0_[21]\,
      R => '0'
    );
\mFmt_Tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(22),
      Q => \mFmt_Tdata_reg_n_0_[22]\,
      R => '0'
    );
\mFmt_Tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(23),
      Q => \mFmt_Tdata_reg_n_0_[23]\,
      R => '0'
    );
\mFmt_Tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(24),
      Q => \mFmt_Tdata_reg_n_0_[24]\,
      R => '0'
    );
\mFmt_Tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(25),
      Q => \mFmt_Tdata_reg_n_0_[25]\,
      R => '0'
    );
\mFmt_Tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(26),
      Q => \mFmt_Tdata_reg_n_0_[26]\,
      R => '0'
    );
\mFmt_Tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(27),
      Q => \mFmt_Tdata_reg_n_0_[27]\,
      R => '0'
    );
\mFmt_Tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(28),
      Q => \mFmt_Tdata_reg_n_0_[28]\,
      R => '0'
    );
\mFmt_Tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(29),
      Q => \mFmt_Tdata_reg_n_0_[29]\,
      R => '0'
    );
\mFmt_Tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(2),
      Q => \mFmt_Tdata_reg_n_0_[2]\,
      R => '0'
    );
\mFmt_Tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(30),
      Q => \mFmt_Tdata_reg_n_0_[30]\,
      R => '0'
    );
\mFmt_Tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(31),
      Q => \mFmt_Tdata_reg_n_0_[31]\,
      R => '0'
    );
\mFmt_Tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(32),
      Q => \mFmt_Tdata_reg_n_0_[32]\,
      R => '0'
    );
\mFmt_Tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(33),
      Q => \mFmt_Tdata_reg_n_0_[33]\,
      R => '0'
    );
\mFmt_Tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(34),
      Q => \mFmt_Tdata_reg_n_0_[34]\,
      R => '0'
    );
\mFmt_Tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(35),
      Q => \mFmt_Tdata_reg_n_0_[35]\,
      R => '0'
    );
\mFmt_Tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(36),
      Q => \mFmt_Tdata_reg_n_0_[36]\,
      R => '0'
    );
\mFmt_Tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(37),
      Q => \mFmt_Tdata_reg_n_0_[37]\,
      R => '0'
    );
\mFmt_Tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(38),
      Q => \mFmt_Tdata_reg_n_0_[38]\,
      R => '0'
    );
\mFmt_Tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(39),
      Q => \mFmt_Tdata_reg_n_0_[39]\,
      R => '0'
    );
\mFmt_Tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(3),
      Q => \mFmt_Tdata_reg_n_0_[3]\,
      R => '0'
    );
\mFmt_Tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(4),
      Q => \mFmt_Tdata_reg_n_0_[4]\,
      R => '0'
    );
\mFmt_Tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(5),
      Q => \mFmt_Tdata_reg_n_0_[5]\,
      R => '0'
    );
\mFmt_Tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(6),
      Q => \mFmt_Tdata_reg_n_0_[6]\,
      R => '0'
    );
\mFmt_Tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(7),
      Q => \mFmt_Tdata_reg_n_0_[7]\,
      R => '0'
    );
\mFmt_Tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(8),
      Q => \mFmt_Tdata_reg_n_0_[8]\,
      R => '0'
    );
\mFmt_Tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(9),
      Q => \mFmt_Tdata_reg_n_0_[9]\,
      R => '0'
    );
mFmt_Tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mFmt_Tlast_reg_1,
      Q => \^mfmt_tlast_reg_0\,
      R => '0'
    );
\mFmt_Tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_11,
      Q => \mFmt_Tuser_reg_n_0_[0]\,
      R => '0'
    );
mFmt_Tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mFmt_Tvalid_reg_1,
      Q => \^mfmt_tvalid_reg_0\,
      R => \^out\(0)
    );
mIsHeader_reg: unisim.vcomponents.FDSE
     port map (
      C => video_aclk,
      CE => '1',
      D => mIsHeader_reg_1,
      Q => \^misheader_reg_0\,
      S => \^out\(0)
    );
mKeep_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mKeep_reg_1,
      Q => \^mkeep_reg_0\,
      R => \^out\(0)
    );
\mReg_Tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_33,
      Q => \mReg_Tdata_reg_n_0_[0]\,
      R => '0'
    );
\mReg_Tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_23,
      Q => \mReg_Tdata_reg_n_0_[10]\,
      R => '0'
    );
\mReg_Tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_22,
      Q => \mReg_Tdata_reg_n_0_[11]\,
      R => '0'
    );
\mReg_Tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_21,
      Q => \mReg_Tdata_reg_n_0_[12]\,
      R => '0'
    );
\mReg_Tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_20,
      Q => \mReg_Tdata_reg_n_0_[13]\,
      R => '0'
    );
\mReg_Tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_19,
      Q => \mReg_Tdata_reg_n_0_[14]\,
      R => '0'
    );
\mReg_Tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_18,
      Q => \mReg_Tdata_reg_n_0_[15]\,
      R => '0'
    );
\mReg_Tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_17,
      Q => \mReg_Tdata_reg_n_0_[16]\,
      R => '0'
    );
\mReg_Tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_16,
      Q => \mReg_Tdata_reg_n_0_[17]\,
      R => '0'
    );
\mReg_Tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_15,
      Q => \mReg_Tdata_reg_n_0_[18]\,
      R => '0'
    );
\mReg_Tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_14,
      Q => \mReg_Tdata_reg_n_0_[19]\,
      R => '0'
    );
\mReg_Tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_32,
      Q => \mReg_Tdata_reg_n_0_[1]\,
      R => '0'
    );
\mReg_Tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_13,
      Q => \mReg_Tdata_reg_n_0_[20]\,
      R => '0'
    );
\mReg_Tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_12,
      Q => \mReg_Tdata_reg_n_0_[21]\,
      R => '0'
    );
\mReg_Tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_11,
      Q => \mReg_Tdata_reg_n_0_[22]\,
      R => '0'
    );
\mReg_Tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_10,
      Q => \mReg_Tdata_reg_n_0_[23]\,
      R => '0'
    );
\mReg_Tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_9,
      Q => \mReg_Tdata_reg_n_0_[24]\,
      R => '0'
    );
\mReg_Tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_8,
      Q => \mReg_Tdata_reg_n_0_[25]\,
      R => '0'
    );
\mReg_Tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_7,
      Q => \mReg_Tdata_reg_n_0_[26]\,
      R => '0'
    );
\mReg_Tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_6,
      Q => \mReg_Tdata_reg_n_0_[27]\,
      R => '0'
    );
\mReg_Tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_5,
      Q => \mReg_Tdata_reg_n_0_[28]\,
      R => '0'
    );
\mReg_Tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_4,
      Q => \mReg_Tdata_reg_n_0_[29]\,
      R => '0'
    );
\mReg_Tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_31,
      Q => \mReg_Tdata_reg_n_0_[2]\,
      R => '0'
    );
\mReg_Tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_3,
      Q => \mReg_Tdata_reg_n_0_[30]\,
      R => '0'
    );
\mReg_Tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_2,
      Q => \mReg_Tdata_reg_n_0_[31]\,
      R => '0'
    );
\mReg_Tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_30,
      Q => \mReg_Tdata_reg_n_0_[3]\,
      R => '0'
    );
\mReg_Tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_29,
      Q => \mReg_Tdata_reg_n_0_[4]\,
      R => '0'
    );
\mReg_Tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_28,
      Q => \mReg_Tdata_reg_n_0_[5]\,
      R => '0'
    );
\mReg_Tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_27,
      Q => \mReg_Tdata_reg_n_0_[6]\,
      R => '0'
    );
\mReg_Tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_26,
      Q => \mReg_Tdata_reg_n_0_[7]\,
      R => '0'
    );
\mReg_Tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_25,
      Q => \mReg_Tdata_reg_n_0_[8]\,
      R => '0'
    );
\mReg_Tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_24,
      Q => \mReg_Tdata_reg_n_0_[9]\,
      R => '0'
    );
mReg_Tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \^m_axis_tlast\,
      I1 => mReg_Tlast_i_2_n_0,
      I2 => mReg_Tlast_i_3_n_0,
      I3 => mReg_Tlast_i_4_n_0,
      I4 => mReg_Tlast_i_5_n_0,
      O => \^goreg_dm.dout_i_reg[0]\
    );
mReg_Tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[15]\,
      I1 => \mWordCount_reg_n_0_[11]\,
      I2 => \mWordCount_reg_n_0_[7]\,
      I3 => \mWordCount_reg_n_0_[9]\,
      I4 => \mWordCount_reg_n_0_[8]\,
      I5 => \mWordCount_reg_n_0_[10]\,
      O => mReg_Tlast_i_2_n_0
    );
mReg_Tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[5]\,
      I1 => \mWordCount_reg_n_0_[3]\,
      I2 => \mWordCount_reg_n_0_[13]\,
      I3 => \mWordCount_reg_n_0_[4]\,
      O => mReg_Tlast_i_3_n_0
    );
mReg_Tlast_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[12]\,
      I1 => \mWordCount_reg_n_0_[14]\,
      I2 => \mWordCount_reg_n_0_[6]\,
      O => mReg_Tlast_i_4_n_0
    );
mReg_Tlast_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[2]\,
      I1 => \mWordCount_reg_n_0_[1]\,
      I2 => \mWordCount_reg_n_0_[0]\,
      O => mReg_Tlast_i_5_n_0
    );
mReg_Tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => \^goreg_dm.dout_i_reg[0]\,
      Q => \^mreg_tlast_reg_0\,
      R => '0'
    );
\mReg_Tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \mReg_Tuser_reg[0]_1\,
      Q => \^mreg_tuser_reg[0]_0\,
      R => \^out\(0)
    );
mReg_Tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mReg_Tvalid_reg_1,
      Q => \^mreg_tvalid_reg_0\,
      R => \^out\(0)
    );
\mWordCount[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \^mkeep_reg_0\,
      I2 => \^m_axis_tvalid\,
      O => \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\
    );
\mWordCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_16,
      Q => \mWordCount_reg_n_0_[0]\,
      R => \^out\(0)
    );
\mWordCount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_22,
      Q => \mWordCount_reg_n_0_[10]\,
      R => \^out\(0)
    );
\mWordCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_21,
      Q => \mWordCount_reg_n_0_[11]\,
      R => \^out\(0)
    );
\mWordCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_28,
      Q => \mWordCount_reg_n_0_[12]\,
      R => \^out\(0)
    );
\mWordCount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_27,
      Q => \mWordCount_reg_n_0_[13]\,
      R => \^out\(0)
    );
\mWordCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_26,
      Q => \mWordCount_reg_n_0_[14]\,
      R => \^out\(0)
    );
\mWordCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_25,
      Q => \mWordCount_reg_n_0_[15]\,
      R => \^out\(0)
    );
\mWordCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_15,
      Q => \mWordCount_reg_n_0_[1]\,
      R => \^out\(0)
    );
\mWordCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_14,
      Q => \mWordCount_reg_n_0_[2]\,
      R => \^out\(0)
    );
\mWordCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_13,
      Q => \mWordCount_reg_n_0_[3]\,
      R => \^out\(0)
    );
\mWordCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_20,
      Q => \mWordCount_reg_n_0_[4]\,
      R => \^out\(0)
    );
\mWordCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_19,
      Q => \mWordCount_reg_n_0_[5]\,
      R => \^out\(0)
    );
\mWordCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_18,
      Q => \mWordCount_reg_n_0_[6]\,
      R => \^out\(0)
    );
\mWordCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_17,
      Q => \mWordCount_reg_n_0_[7]\,
      R => \^out\(0)
    );
\mWordCount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_24,
      Q => \mWordCount_reg_n_0_[8]\,
      R => \^out\(0)
    );
\mWordCount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_23,
      Q => \mWordCount_reg_n_0_[9]\,
      R => \^out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx is
  port (
    aD1Enable : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    \aDEnableInt_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    vRst_n : in STD_LOGIC;
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 );
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axis_video_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx : entity is "MIPI_CSI2_Rx";
end system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx is
  signal DataFIFO_i_1_n_0 : STD_LOGIC;
  signal LLP_inst_n_0 : STD_LOGIC;
  signal LLP_inst_n_1 : STD_LOGIC;
  signal LLP_inst_n_2 : STD_LOGIC;
  signal LLP_inst_n_3 : STD_LOGIC;
  signal LLP_inst_n_4 : STD_LOGIC;
  signal LLP_inst_n_48 : STD_LOGIC;
  signal LLP_inst_n_49 : STD_LOGIC;
  signal LLP_inst_n_50 : STD_LOGIC;
  signal LLP_inst_n_51 : STD_LOGIC;
  signal LLP_inst_n_52 : STD_LOGIC;
  signal LLP_inst_n_53 : STD_LOGIC;
  signal LLP_inst_n_54 : STD_LOGIC;
  signal LLP_inst_n_55 : STD_LOGIC;
  signal LLP_inst_n_56 : STD_LOGIC;
  signal LLP_inst_n_57 : STD_LOGIC;
  signal LLP_inst_n_58 : STD_LOGIC;
  signal LLP_inst_n_59 : STD_LOGIC;
  signal LLP_inst_n_60 : STD_LOGIC;
  signal LLP_inst_n_61 : STD_LOGIC;
  signal LLP_inst_n_62 : STD_LOGIC;
  signal LLP_inst_n_64 : STD_LOGIC;
  signal LLP_inst_n_65 : STD_LOGIC;
  signal LLP_inst_n_66 : STD_LOGIC;
  signal LLP_inst_n_67 : STD_LOGIC;
  signal LLP_inst_n_68 : STD_LOGIC;
  signal LLP_inst_n_69 : STD_LOGIC;
  signal SyncAsyncTready_n_0 : STD_LOGIC;
  signal mFmt_Tlast_i_1_n_0 : STD_LOGIC;
  signal mFmt_Tvalid_i_1_n_0 : STD_LOGIC;
  signal mIsHeader0 : STD_LOGIC;
  signal mIsHeader_i_1_n_0 : STD_LOGIC;
  signal mKeep0_out : STD_LOGIC;
  signal mKeep_i_1_n_0 : STD_LOGIC;
  signal mReg_Tuser0 : STD_LOGIC;
  signal \mReg_Tuser[0]_i_1_n_0\ : STD_LOGIC;
  signal mReg_Tvalid_i_1_n_0 : STD_LOGIC;
  signal rbEn : STD_LOGIC;
  signal rbLLPAxisTready : STD_LOGIC;
  signal rbLMAxisTdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rbLMAxisTkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rbLMAxisTlast : STD_LOGIC;
  signal rbLMAxisTvalid : STD_LOGIC;
  signal rbRst : STD_LOGIC;
  signal rbRst_n : STD_LOGIC;
  signal sError_i_1_n_0 : STD_LOGIC;
  signal sValid_i_1_n_0 : STD_LOGIC;
  signal vRst : STD_LOGIC;
begin
DataFIFO_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LLP_inst_n_1,
      O => DataFIFO_i_1_n_0
    );
LLP_inst: entity work.system_MIPI_CSI_2_RX_0_0_LLP
     port map (
      AS(0) => vRst,
      \FSM_onehot_sState_reg[3]\(0) => LLP_inst_n_62,
      Q(31 downto 0) => rbLMAxisTdata(31 downto 0),
      \RAW10Formatter.cnt_reg[0]_0\ => LLP_inst_n_66,
      \RAW10Formatter.cnt_reg[1]_0\ => LLP_inst_n_65,
      \RAW10Formatter.cnt_reg[2]_0\ => LLP_inst_n_64,
      RxByteClkHS => RxByteClkHS,
      \delay_reg[1]_0\(0) => rbLLPAxisTready,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => LLP_inst_n_69,
      \goreg_dm.dout_i_reg[0]\ => LLP_inst_n_51,
      \gpr1.dout_i_reg[1]\(3 downto 0) => rbLMAxisTkeep(3 downto 0),
      mFmt_Tlast_reg_0 => LLP_inst_n_49,
      mFmt_Tlast_reg_1 => mFmt_Tlast_i_1_n_0,
      mFmt_Tvalid_reg_0 => LLP_inst_n_48,
      mFmt_Tvalid_reg_1 => mFmt_Tvalid_i_1_n_0,
      mIsHeader0 => mIsHeader0,
      mIsHeader_reg_0 => LLP_inst_n_55,
      mIsHeader_reg_1 => mIsHeader_i_1_n_0,
      mKeep0_out => mKeep0_out,
      mKeep_reg_0 => LLP_inst_n_54,
      mKeep_reg_1 => mKeep_i_1_n_0,
      mReg_Tlast_reg_0 => LLP_inst_n_50,
      mReg_Tuser0 => mReg_Tuser0,
      \mReg_Tuser_reg[0]_0\ => LLP_inst_n_57,
      \mReg_Tuser_reg[0]_1\ => \mReg_Tuser[0]_i_1_n_0\,
      mReg_Tvalid_reg_0 => LLP_inst_n_56,
      mReg_Tvalid_reg_1 => mReg_Tvalid_i_1_n_0,
      m_axis_tlast => LLP_inst_n_3,
      m_axis_tvalid => LLP_inst_n_2,
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      \oSyncStages_reg[1]\(0) => LLP_inst_n_1,
      \out\(0) => LLP_inst_n_0,
      \sErrSyndrome_reg[0]\ => LLP_inst_n_67,
      \sErrSyndrome_reg[3]\(3) => LLP_inst_n_58,
      \sErrSyndrome_reg[3]\(2) => LLP_inst_n_59,
      \sErrSyndrome_reg[3]\(1) => LLP_inst_n_60,
      \sErrSyndrome_reg[3]\(0) => LLP_inst_n_61,
      \sErrSyndrome_reg[4]\ => LLP_inst_n_68,
      sError_reg => LLP_inst_n_53,
      sError_reg_0 => sError_i_1_n_0,
      sValid_reg => LLP_inst_n_52,
      sValid_reg_0 => sValid_i_1_n_0,
      s_aresetn => DataFIFO_i_1_n_0,
      s_axis_tlast => rbLMAxisTlast,
      s_axis_tready => LLP_inst_n_4,
      s_axis_tvalid => rbLMAxisTvalid,
      video_aclk => video_aclk
    );
LM_inst: entity work.system_MIPI_CSI_2_RX_0_0_LM
     port map (
      D(0) => rbLLPAxisTready,
      I62(10 downto 0) => I62(10 downto 0),
      Q(31 downto 0) => rbLMAxisTdata(31 downto 0),
      RxByteClkHS => RxByteClkHS,
      iDataIn(10 downto 0) => iDataIn(10 downto 0),
      \out\(0) => rbRst_n,
      rbEnInt_reg_0(0) => rbEn,
      \rbMAxisTkeep_reg[3]_0\(3 downto 0) => rbLMAxisTkeep(3 downto 0),
      rbRst => rbRst,
      s_axis_tlast => rbLMAxisTlast,
      s_axis_tvalid => rbLMAxisTvalid
    );
SyncAsyncEnable: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync
     port map (
      D(0) => D(0),
      RxByteClkHS => RxByteClkHS,
      \out\(0) => rbEn,
      rbRst => rbRst
    );
SyncAsyncTready: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync_0
     port map (
      D(0) => rbLLPAxisTready,
      \YesAXILITE.vRst_n_reg\ => SyncAsyncTready_n_0,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
SyncReset: entity work.system_MIPI_CSI_2_RX_0_0_ResetBridge
     port map (
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]\ => SyncAsyncTready_n_0,
      \out\(0) => rbRst_n,
      rbRst => rbRst
    );
\aDEnableInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \aDEnableInt_reg[0]_0\,
      Q => aD1Enable,
      R => '0'
    );
mFmt_Tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => LLP_inst_n_50,
      I1 => LLP_inst_n_56,
      I2 => LLP_inst_n_4,
      I3 => LLP_inst_n_0,
      I4 => LLP_inst_n_49,
      O => mFmt_Tlast_i_1_n_0
    );
mFmt_Tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => LLP_inst_n_56,
      I1 => LLP_inst_n_64,
      I2 => LLP_inst_n_65,
      I3 => LLP_inst_n_66,
      I4 => LLP_inst_n_4,
      I5 => LLP_inst_n_48,
      O => mFmt_Tvalid_i_1_n_0
    );
mIsHeader_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => LLP_inst_n_3,
      I1 => mIsHeader0,
      I2 => LLP_inst_n_55,
      O => mIsHeader_i_1_n_0
    );
mKeep_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
        port map (
      I0 => mKeep0_out,
      I1 => LLP_inst_n_69,
      I2 => LLP_inst_n_51,
      I3 => LLP_inst_n_53,
      I4 => LLP_inst_n_52,
      I5 => LLP_inst_n_54,
      O => mKeep_i_1_n_0
    );
\mReg_Tuser[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => LLP_inst_n_56,
      I1 => LLP_inst_n_4,
      I2 => mReg_Tuser0,
      I3 => LLP_inst_n_57,
      O => \mReg_Tuser[0]_i_1_n_0\
    );
mReg_Tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => LLP_inst_n_54,
      I1 => LLP_inst_n_2,
      I2 => LLP_inst_n_4,
      I3 => LLP_inst_n_56,
      O => mReg_Tvalid_i_1_n_0
    );
sError_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => LLP_inst_n_68,
      I1 => LLP_inst_n_59,
      I2 => LLP_inst_n_58,
      I3 => LLP_inst_n_61,
      I4 => LLP_inst_n_60,
      I5 => LLP_inst_n_62,
      O => sError_i_1_n_0
    );
sValid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LLP_inst_n_67,
      I1 => LLP_inst_n_62,
      O => sValid_i_1_n_0
    );
vRst_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => SyncAsyncTready_n_0,
      Q => vRst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top is
  port (
    RxByteClkHS : in STD_LOGIC;
    aClkStopstate : in STD_LOGIC;
    aRxClkActiveHS : in STD_LOGIC;
    RxDataHSD0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD0 : in STD_LOGIC;
    RxValidHSD0 : in STD_LOGIC;
    RxActiveHSD0 : in STD_LOGIC;
    aD0Enable : out STD_LOGIC;
    RxDataHSD1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD1 : in STD_LOGIC;
    RxValidHSD1 : in STD_LOGIC;
    RxActiveHSD1 : in STD_LOGIC;
    aD1Enable : out STD_LOGIC;
    RxDataHSD2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD2 : in STD_LOGIC;
    RxValidHSD2 : in STD_LOGIC;
    RxActiveHSD2 : in STD_LOGIC;
    aD2Enable : out STD_LOGIC;
    RxDataHSD3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD3 : in STD_LOGIC;
    RxValidHSD3 : in STD_LOGIC;
    RxActiveHSD3 : in STD_LOGIC;
    aD3Enable : out STD_LOGIC;
    aClkEnable : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_aresetn : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 10;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 40;
  attribute C_M_MAX_SAMPLES_PER_CLOCK : integer;
  attribute C_M_MAX_SAMPLES_PER_CLOCK of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 4;
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "mipi_csi2_rx_top";
  attribute kDebug : string;
  attribute kDebug of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "TRUE";
  attribute kLaneCount : integer;
  attribute kLaneCount of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 2;
  attribute kTargetDT : string;
  attribute kTargetDT of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "RAW10";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 2;
end system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top is
  signal \<const0>\ : STD_LOGIC;
  signal \YesAXILITE.AXI_Lite_Control_n_5\ : STD_LOGIC;
  signal \YesAXILITE.CoreSoftReset_n_0\ : STD_LOGIC;
  signal \YesAXILITE.SyncAsyncClkEnable_n_1\ : STD_LOGIC;
  signal \^ad1enable\ : STD_LOGIC;
  signal aReset : STD_LOGIC;
  signal vRst_n : STD_LOGIC;
  signal vSoftEnable : STD_LOGIC;
begin
  aClkEnable <= \^ad1enable\;
  aD0Enable <= \^ad1enable\;
  aD1Enable <= \^ad1enable\;
  aD2Enable <= \<const0>\;
  aD3Enable <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MIPI_CSI2_Rx_inst: entity work.system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx
     port map (
      D(0) => vSoftEnable,
      I62(10) => RxActiveHSD1,
      I62(9) => RxSyncHSD1,
      I62(8) => RxValidHSD1,
      I62(7 downto 0) => RxDataHSD1(7 downto 0),
      RxByteClkHS => RxByteClkHS,
      aD1Enable => \^ad1enable\,
      \aDEnableInt_reg[0]_0\ => \YesAXILITE.SyncAsyncClkEnable_n_1\,
      iDataIn(10) => RxActiveHSD0,
      iDataIn(9) => RxSyncHSD0,
      iDataIn(8) => RxValidHSD0,
      iDataIn(7 downto 0) => RxDataHSD0(7 downto 0),
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
\YesAXILITE.AXI_Lite_Control\: entity work.system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE
     port map (
      Q(1) => \YesAXILITE.AXI_Lite_Control_n_5\,
      Q(0) => aReset,
      axi_arready_reg_0 => s_axi_lite_arready,
      axi_awready_reg_0 => s_axi_lite_awready,
      axi_wready_reg_0 => s_axi_lite_wready,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(1 downto 0) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(1 downto 0) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
\YesAXILITE.CoreSoftReset\: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\
     port map (
      AS(0) => aReset,
      \oSyncStages_reg[1]\ => \YesAXILITE.CoreSoftReset_n_0\,
      video_aclk => video_aclk
    );
\YesAXILITE.SyncAsyncClkEnable\: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\
     port map (
      D(0) => \YesAXILITE.AXI_Lite_Control_n_5\,
      \oSyncStages_reg[1]_0\ => \YesAXILITE.SyncAsyncClkEnable_n_1\,
      \out\(0) => vSoftEnable,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
\YesAXILITE.vRst_n_reg\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \YesAXILITE.CoreSoftReset_n_0\,
      Q => vRst_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0 is
  port (
    RxByteClkHS : in STD_LOGIC;
    aClkStopstate : in STD_LOGIC;
    aRxClkActiveHS : in STD_LOGIC;
    RxDataHSD0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD0 : in STD_LOGIC;
    RxValidHSD0 : in STD_LOGIC;
    RxActiveHSD0 : in STD_LOGIC;
    aD0Enable : out STD_LOGIC;
    RxDataHSD1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD1 : in STD_LOGIC;
    RxValidHSD1 : in STD_LOGIC;
    RxActiveHSD1 : in STD_LOGIC;
    aD1Enable : out STD_LOGIC;
    RxDataHSD2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD2 : in STD_LOGIC;
    RxValidHSD2 : in STD_LOGIC;
    RxActiveHSD2 : in STD_LOGIC;
    aD2Enable : out STD_LOGIC;
    RxDataHSD3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD3 : in STD_LOGIC;
    RxValidHSD3 : in STD_LOGIC;
    RxActiveHSD3 : in STD_LOGIC;
    aD3Enable : out STD_LOGIC;
    aClkEnable : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_MIPI_CSI_2_RX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0 : entity is "system_MIPI_CSI_2_RX_0_0,mipi_csi2_rx_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0 : entity is "mipi_csi2_rx_top,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_aD2Enable_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD3Enable_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_lite_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_lite_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of U0 : label is 10;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of U0 : label is 40;
  attribute C_M_MAX_SAMPLES_PER_CLOCK : integer;
  attribute C_M_MAX_SAMPLES_PER_CLOCK of U0 : label is 4;
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of U0 : label is 32;
  attribute kDebug : string;
  attribute kDebug of U0 : label is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of U0 : label is "TRUE";
  attribute kLaneCount : integer;
  attribute kLaneCount of U0 : label is 2;
  attribute kTargetDT : string;
  attribute kTargetDT of U0 : label is "RAW10";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of U0 : label is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of U0 : label is 2;
  attribute x_interface_info : string;
  attribute x_interface_info of RxActiveHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXACTIVEHS";
  attribute x_interface_info of RxByteClkHS : signal is "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RxByteClkHS : signal is "XIL_INTERFACENAME RxByteClkHS, ASSOCIATED_BUSIF rx_mipi_ppi, FREQ_HZ 84000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_MIPI_D_PHY_RX_0_0_RxByteClkHS, INSERT_VIP 0";
  attribute x_interface_info of RxSyncHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXSYNCHS";
  attribute x_interface_info of RxValidHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXVALIDHS";
  attribute x_interface_info of RxValidHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXVALIDHS";
  attribute x_interface_info of RxValidHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXVALIDHS";
  attribute x_interface_info of RxValidHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXVALIDHS";
  attribute x_interface_info of aClkEnable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_ENABLE";
  attribute x_interface_info of aClkStopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_STOPSTATE";
  attribute x_interface_info of aD0Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_ENABLE";
  attribute x_interface_info of aD1Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_ENABLE";
  attribute x_interface_info of aD2Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_ENABLE";
  attribute x_interface_info of aD3Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_ENABLE";
  attribute x_interface_info of aRxClkActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_RXCLKACTIVEHS";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute x_interface_info of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute x_interface_parameter of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute x_interface_parameter of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute x_interface_info of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute x_interface_info of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute x_interface_info of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute x_interface_info of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute x_interface_info of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute x_interface_info of video_aclk : signal is "xilinx.com:signal:clock:1.0 video_aclk CLK";
  attribute x_interface_parameter of video_aclk : signal is "XIL_INTERFACENAME video_aclk, ASSOCIATED_RESET video_aresetn, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of RxDataHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXDATAHS";
  attribute x_interface_info of RxDataHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXDATAHS";
  attribute x_interface_info of RxDataHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXDATAHS";
  attribute x_interface_info of RxDataHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXDATAHS";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute x_interface_parameter of m_axis_video_tdata : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute x_interface_info of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  attribute x_interface_info of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_lite_awaddr : signal is "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  attribute x_interface_info of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute x_interface_info of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute x_interface_info of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute x_interface_info of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute x_interface_info of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
  aD2Enable <= \<const0>\;
  aD3Enable <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top
     port map (
      RxActiveHSD0 => RxActiveHSD0,
      RxActiveHSD1 => RxActiveHSD1,
      RxActiveHSD2 => '0',
      RxActiveHSD3 => '0',
      RxByteClkHS => RxByteClkHS,
      RxDataHSD0(7 downto 0) => RxDataHSD0(7 downto 0),
      RxDataHSD1(7 downto 0) => RxDataHSD1(7 downto 0),
      RxDataHSD2(7 downto 0) => B"00000000",
      RxDataHSD3(7 downto 0) => B"00000000",
      RxSyncHSD0 => RxSyncHSD0,
      RxSyncHSD1 => RxSyncHSD1,
      RxSyncHSD2 => '0',
      RxSyncHSD3 => '0',
      RxValidHSD0 => RxValidHSD0,
      RxValidHSD1 => RxValidHSD1,
      RxValidHSD2 => '0',
      RxValidHSD3 => '0',
      aClkEnable => aClkEnable,
      aClkStopstate => '0',
      aD0Enable => aD0Enable,
      aD1Enable => aD1Enable,
      aD2Enable => NLW_U0_aD2Enable_UNCONNECTED,
      aD3Enable => NLW_U0_aD3Enable_UNCONNECTED,
      aRxClkActiveHS => '0',
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(3 downto 2) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_araddr(1 downto 0) => B"00",
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arprot(2 downto 0) => B"000",
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 2) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awaddr(1 downto 0) => B"00",
      s_axi_lite_awprot(2 downto 0) => B"000",
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bresp(1 downto 0) => NLW_U0_s_axi_lite_bresp_UNCONNECTED(1 downto 0),
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rresp(1 downto 0) => NLW_U0_s_axi_lite_rresp_UNCONNECTED(1 downto 0),
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      video_aclk => video_aclk,
      video_aresetn => '1'
    );
end STRUCTURE;
