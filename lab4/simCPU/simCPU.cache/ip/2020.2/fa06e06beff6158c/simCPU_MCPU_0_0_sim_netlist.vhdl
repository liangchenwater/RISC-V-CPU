-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May 18 15:08:39 2021
-- Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_MCPU_0_0_sim_netlist.vhdl
-- Design      : simCPU_MCPU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 : entity is "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \^in0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 32 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 : entity is "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 32 downto 0 );
begin
  Dout(31 downto 0) <= \^din\(31 downto 0);
  \^din\(31 downto 0) <= Din(31 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 : entity is "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 is
  signal \^din\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 32 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 : entity is "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 32 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen is
  port (
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Imm_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Imm_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Imm_out[11]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Imm_out[12]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Imm_out[13]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Imm_out[14]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Imm_out[15]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Imm_out[16]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Imm_out[17]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Imm_out[18]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Imm_out[19]_INST_0\ : label is "soft_lutpair4";
begin
\Imm_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => inst_field(13),
      I1 => ImmSel(0),
      I2 => inst_field(0),
      I3 => ImmSel(1),
      O => Imm_out(0)
    );
\Imm_out[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => inst_field(18),
      I1 => ImmSel(1),
      I2 => inst_field(13),
      I3 => ImmSel(0),
      I4 => inst_field(0),
      O => Imm_out(5)
    );
\Imm_out[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(5),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(6)
    );
\Imm_out[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(6),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(7)
    );
\Imm_out[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(7),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(8)
    );
\Imm_out[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(8),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(9)
    );
\Imm_out[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(9),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(10)
    );
\Imm_out[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(10),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(11)
    );
\Imm_out[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(11),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(12)
    );
\Imm_out[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => inst_field(12),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      O => Imm_out(13)
    );
\Imm_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => ImmSel(0),
      I1 => inst_field(1),
      I2 => ImmSel(1),
      I3 => inst_field(14),
      O => Imm_out(1)
    );
\Imm_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => ImmSel(0),
      I1 => inst_field(2),
      I2 => ImmSel(1),
      I3 => inst_field(15),
      O => Imm_out(2)
    );
\Imm_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => ImmSel(0),
      I1 => inst_field(3),
      I2 => ImmSel(1),
      I3 => inst_field(16),
      O => Imm_out(3)
    );
\Imm_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => ImmSel(0),
      I1 => inst_field(4),
      I2 => ImmSel(1),
      I3 => inst_field(17),
      O => Imm_out(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 : entity is "MSCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(2 downto 0) <= \^din\(14 downto 12);
  \^din\(14 downto 12) <= Din(14 downto 12);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 : entity is "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(4 downto 0) <= \^din\(6 downto 2);
  \^din\(6 downto 2) <= Din(6 downto 2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 : entity is "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(0) <= \^din\(30);
  \^din\(30) <= Din(30);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32 is
begin
\o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(0),
      I1 => I0(0),
      I2 => s,
      O => o(0)
    );
\o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(10),
      I1 => I0(10),
      I2 => s,
      O => o(10)
    );
\o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(11),
      I1 => I0(11),
      I2 => s,
      O => o(11)
    );
\o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(12),
      I1 => I0(12),
      I2 => s,
      O => o(12)
    );
\o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(13),
      I1 => I0(13),
      I2 => s,
      O => o(13)
    );
\o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(14),
      I1 => I0(14),
      I2 => s,
      O => o(14)
    );
\o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(15),
      I1 => I0(15),
      I2 => s,
      O => o(15)
    );
\o[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(16),
      I1 => I0(16),
      I2 => s,
      O => o(16)
    );
\o[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(17),
      I1 => I0(17),
      I2 => s,
      O => o(17)
    );
\o[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(18),
      I1 => I0(18),
      I2 => s,
      O => o(18)
    );
\o[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(19),
      I1 => I0(19),
      I2 => s,
      O => o(19)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(1),
      I1 => I0(1),
      I2 => s,
      O => o(1)
    );
\o[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(20),
      I1 => I0(20),
      I2 => s,
      O => o(20)
    );
\o[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(21),
      I1 => I0(21),
      I2 => s,
      O => o(21)
    );
\o[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(22),
      I1 => I0(22),
      I2 => s,
      O => o(22)
    );
\o[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(23),
      I1 => I0(23),
      I2 => s,
      O => o(23)
    );
\o[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(24),
      I1 => I0(24),
      I2 => s,
      O => o(24)
    );
\o[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(25),
      I1 => I0(25),
      I2 => s,
      O => o(25)
    );
\o[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(26),
      I1 => I0(26),
      I2 => s,
      O => o(26)
    );
\o[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(27),
      I1 => I0(27),
      I2 => s,
      O => o(27)
    );
\o[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(28),
      I1 => I0(28),
      I2 => s,
      O => o(28)
    );
\o[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(29),
      I1 => I0(29),
      I2 => s,
      O => o(29)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(2),
      I1 => I0(2),
      I2 => s,
      O => o(2)
    );
\o[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(30),
      I1 => I0(30),
      I2 => s,
      O => o(30)
    );
\o[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(31),
      I1 => I0(31),
      I2 => s,
      O => o(31)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(3),
      I1 => I0(3),
      I2 => s,
      O => o(3)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(4),
      I1 => I0(4),
      I2 => s,
      O => o(4)
    );
\o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(5),
      I1 => I0(5),
      I2 => s,
      O => o(5)
    );
\o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(6),
      I1 => I0(6),
      I2 => s,
      O => o(6)
    );
\o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(7),
      I1 => I0(7),
      I2 => s,
      O => o(7)
    );
\o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(8),
      I1 => I0(8),
      I2 => s,
      O => o(8)
    );
\o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(9),
      I1 => I0(9),
      I2 => s,
      O => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32 is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32 is
begin
\o[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(0),
      I1 => I0(0),
      I2 => I3(0),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(0),
      O => o(0)
    );
\o[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(10),
      I1 => I0(10),
      I2 => I3(10),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(10),
      O => o(10)
    );
\o[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(11),
      I1 => I0(11),
      I2 => I3(11),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(11),
      O => o(11)
    );
\o[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(12),
      I1 => I0(12),
      I2 => I3(12),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(12),
      O => o(12)
    );
\o[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(13),
      I1 => I0(13),
      I2 => I3(13),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(13),
      O => o(13)
    );
\o[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(14),
      I1 => I0(14),
      I2 => I3(14),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(14),
      O => o(14)
    );
\o[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(15),
      I1 => I0(15),
      I2 => I3(15),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(15),
      O => o(15)
    );
\o[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(16),
      I1 => I0(16),
      I2 => I3(16),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(16),
      O => o(16)
    );
\o[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(17),
      I1 => I0(17),
      I2 => I3(17),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(17),
      O => o(17)
    );
\o[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(18),
      I1 => I0(18),
      I2 => I3(18),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(18),
      O => o(18)
    );
\o[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(19),
      I1 => I0(19),
      I2 => I3(19),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(19),
      O => o(19)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(1),
      I1 => I0(1),
      I2 => I3(1),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(1),
      O => o(1)
    );
\o[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(20),
      I1 => I0(20),
      I2 => I3(20),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(20),
      O => o(20)
    );
\o[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(21),
      I1 => I0(21),
      I2 => I3(21),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(21),
      O => o(21)
    );
\o[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(22),
      I1 => I0(22),
      I2 => I3(22),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(22),
      O => o(22)
    );
\o[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(23),
      I1 => I0(23),
      I2 => I3(23),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(23),
      O => o(23)
    );
\o[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(24),
      I1 => I0(24),
      I2 => I3(24),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(24),
      O => o(24)
    );
\o[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(25),
      I1 => I0(25),
      I2 => I3(25),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(25),
      O => o(25)
    );
\o[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(26),
      I1 => I0(26),
      I2 => I3(26),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(26),
      O => o(26)
    );
\o[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(27),
      I1 => I0(27),
      I2 => I3(27),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(27),
      O => o(27)
    );
\o[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(28),
      I1 => I0(28),
      I2 => I3(28),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(28),
      O => o(28)
    );
\o[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(29),
      I1 => I0(29),
      I2 => I3(29),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(29),
      O => o(29)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(2),
      I1 => I0(2),
      I2 => I3(2),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(2),
      O => o(2)
    );
\o[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(30),
      I1 => I0(30),
      I2 => I3(30),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(30),
      O => o(30)
    );
\o[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(31),
      I1 => I0(31),
      I2 => I3(31),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(31),
      O => o(31)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(3),
      I1 => I0(3),
      I2 => I3(3),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(3),
      O => o(3)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(4),
      I1 => I0(4),
      I2 => I3(4),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(4),
      O => o(4)
    );
\o[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(5),
      I1 => I0(5),
      I2 => I3(5),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(5),
      O => o(5)
    );
\o[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(6),
      I1 => I0(6),
      I2 => I3(6),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(6),
      O => o(6)
    );
\o[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(7),
      I1 => I0(7),
      I2 => I3(7),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(7),
      O => o(7)
    );
\o[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(8),
      I1 => I0(8),
      I2 => I3(8),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(8),
      O => o(8)
    );
\o[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(9),
      I1 => I0(9),
      I2 => I3(9),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(9),
      O => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32 is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32 is
  signal \o[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[9]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\o[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[0]_INST_0_i_1_n_0\,
      I1 => \o[0]_INST_0_i_2_n_0\,
      O => o(0),
      S => s(2)
    );
\o[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(0),
      I1 => I2(0),
      I2 => s(1),
      I3 => I1(0),
      I4 => s(0),
      I5 => I0(0),
      O => \o[0]_INST_0_i_1_n_0\
    );
\o[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(0),
      I1 => I6(0),
      I2 => s(1),
      I3 => I5(0),
      I4 => s(0),
      I5 => I4(0),
      O => \o[0]_INST_0_i_2_n_0\
    );
\o[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[10]_INST_0_i_1_n_0\,
      I1 => \o[10]_INST_0_i_2_n_0\,
      O => o(10),
      S => s(2)
    );
\o[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(10),
      I1 => I2(10),
      I2 => s(1),
      I3 => I1(10),
      I4 => s(0),
      I5 => I0(10),
      O => \o[10]_INST_0_i_1_n_0\
    );
\o[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(10),
      I1 => I6(10),
      I2 => s(1),
      I3 => I5(10),
      I4 => s(0),
      I5 => I4(10),
      O => \o[10]_INST_0_i_2_n_0\
    );
\o[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[11]_INST_0_i_1_n_0\,
      I1 => \o[11]_INST_0_i_2_n_0\,
      O => o(11),
      S => s(2)
    );
\o[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(11),
      I1 => I2(11),
      I2 => s(1),
      I3 => I1(11),
      I4 => s(0),
      I5 => I0(11),
      O => \o[11]_INST_0_i_1_n_0\
    );
\o[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(11),
      I1 => I6(11),
      I2 => s(1),
      I3 => I5(11),
      I4 => s(0),
      I5 => I4(11),
      O => \o[11]_INST_0_i_2_n_0\
    );
\o[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[12]_INST_0_i_1_n_0\,
      I1 => \o[12]_INST_0_i_2_n_0\,
      O => o(12),
      S => s(2)
    );
\o[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(12),
      I1 => I2(12),
      I2 => s(1),
      I3 => I1(12),
      I4 => s(0),
      I5 => I0(12),
      O => \o[12]_INST_0_i_1_n_0\
    );
\o[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(12),
      I1 => I6(12),
      I2 => s(1),
      I3 => I5(12),
      I4 => s(0),
      I5 => I4(12),
      O => \o[12]_INST_0_i_2_n_0\
    );
\o[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[13]_INST_0_i_1_n_0\,
      I1 => \o[13]_INST_0_i_2_n_0\,
      O => o(13),
      S => s(2)
    );
\o[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(13),
      I1 => I2(13),
      I2 => s(1),
      I3 => I1(13),
      I4 => s(0),
      I5 => I0(13),
      O => \o[13]_INST_0_i_1_n_0\
    );
\o[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(13),
      I1 => I6(13),
      I2 => s(1),
      I3 => I5(13),
      I4 => s(0),
      I5 => I4(13),
      O => \o[13]_INST_0_i_2_n_0\
    );
\o[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[14]_INST_0_i_1_n_0\,
      I1 => \o[14]_INST_0_i_2_n_0\,
      O => o(14),
      S => s(2)
    );
\o[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(14),
      I1 => I2(14),
      I2 => s(1),
      I3 => I1(14),
      I4 => s(0),
      I5 => I0(14),
      O => \o[14]_INST_0_i_1_n_0\
    );
\o[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(14),
      I1 => I6(14),
      I2 => s(1),
      I3 => I5(14),
      I4 => s(0),
      I5 => I4(14),
      O => \o[14]_INST_0_i_2_n_0\
    );
\o[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[15]_INST_0_i_1_n_0\,
      I1 => \o[15]_INST_0_i_2_n_0\,
      O => o(15),
      S => s(2)
    );
\o[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(15),
      I1 => I2(15),
      I2 => s(1),
      I3 => I1(15),
      I4 => s(0),
      I5 => I0(15),
      O => \o[15]_INST_0_i_1_n_0\
    );
\o[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(15),
      I1 => I6(15),
      I2 => s(1),
      I3 => I5(15),
      I4 => s(0),
      I5 => I4(15),
      O => \o[15]_INST_0_i_2_n_0\
    );
\o[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[16]_INST_0_i_1_n_0\,
      I1 => \o[16]_INST_0_i_2_n_0\,
      O => o(16),
      S => s(2)
    );
\o[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(16),
      I1 => I2(16),
      I2 => s(1),
      I3 => I1(16),
      I4 => s(0),
      I5 => I0(16),
      O => \o[16]_INST_0_i_1_n_0\
    );
\o[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(16),
      I1 => I6(16),
      I2 => s(1),
      I3 => I5(16),
      I4 => s(0),
      I5 => I4(16),
      O => \o[16]_INST_0_i_2_n_0\
    );
\o[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[17]_INST_0_i_1_n_0\,
      I1 => \o[17]_INST_0_i_2_n_0\,
      O => o(17),
      S => s(2)
    );
\o[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(17),
      I1 => I2(17),
      I2 => s(1),
      I3 => I1(17),
      I4 => s(0),
      I5 => I0(17),
      O => \o[17]_INST_0_i_1_n_0\
    );
\o[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(17),
      I1 => I6(17),
      I2 => s(1),
      I3 => I5(17),
      I4 => s(0),
      I5 => I4(17),
      O => \o[17]_INST_0_i_2_n_0\
    );
\o[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[18]_INST_0_i_1_n_0\,
      I1 => \o[18]_INST_0_i_2_n_0\,
      O => o(18),
      S => s(2)
    );
\o[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(18),
      I1 => I2(18),
      I2 => s(1),
      I3 => I1(18),
      I4 => s(0),
      I5 => I0(18),
      O => \o[18]_INST_0_i_1_n_0\
    );
\o[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(18),
      I1 => I6(18),
      I2 => s(1),
      I3 => I5(18),
      I4 => s(0),
      I5 => I4(18),
      O => \o[18]_INST_0_i_2_n_0\
    );
\o[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[19]_INST_0_i_1_n_0\,
      I1 => \o[19]_INST_0_i_2_n_0\,
      O => o(19),
      S => s(2)
    );
\o[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(19),
      I1 => I2(19),
      I2 => s(1),
      I3 => I1(19),
      I4 => s(0),
      I5 => I0(19),
      O => \o[19]_INST_0_i_1_n_0\
    );
\o[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(19),
      I1 => I6(19),
      I2 => s(1),
      I3 => I5(19),
      I4 => s(0),
      I5 => I4(19),
      O => \o[19]_INST_0_i_2_n_0\
    );
\o[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[1]_INST_0_i_1_n_0\,
      I1 => \o[1]_INST_0_i_2_n_0\,
      O => o(1),
      S => s(2)
    );
\o[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(1),
      I1 => I2(1),
      I2 => s(1),
      I3 => I1(1),
      I4 => s(0),
      I5 => I0(1),
      O => \o[1]_INST_0_i_1_n_0\
    );
\o[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(1),
      I1 => I6(1),
      I2 => s(1),
      I3 => I5(1),
      I4 => s(0),
      I5 => I4(1),
      O => \o[1]_INST_0_i_2_n_0\
    );
\o[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[20]_INST_0_i_1_n_0\,
      I1 => \o[20]_INST_0_i_2_n_0\,
      O => o(20),
      S => s(2)
    );
\o[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(20),
      I1 => I2(20),
      I2 => s(1),
      I3 => I1(20),
      I4 => s(0),
      I5 => I0(20),
      O => \o[20]_INST_0_i_1_n_0\
    );
\o[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(20),
      I1 => I6(20),
      I2 => s(1),
      I3 => I5(20),
      I4 => s(0),
      I5 => I4(20),
      O => \o[20]_INST_0_i_2_n_0\
    );
\o[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[21]_INST_0_i_1_n_0\,
      I1 => \o[21]_INST_0_i_2_n_0\,
      O => o(21),
      S => s(2)
    );
\o[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(21),
      I1 => I2(21),
      I2 => s(1),
      I3 => I1(21),
      I4 => s(0),
      I5 => I0(21),
      O => \o[21]_INST_0_i_1_n_0\
    );
\o[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(21),
      I1 => I6(21),
      I2 => s(1),
      I3 => I5(21),
      I4 => s(0),
      I5 => I4(21),
      O => \o[21]_INST_0_i_2_n_0\
    );
\o[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[22]_INST_0_i_1_n_0\,
      I1 => \o[22]_INST_0_i_2_n_0\,
      O => o(22),
      S => s(2)
    );
\o[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(22),
      I1 => I2(22),
      I2 => s(1),
      I3 => I1(22),
      I4 => s(0),
      I5 => I0(22),
      O => \o[22]_INST_0_i_1_n_0\
    );
\o[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(22),
      I1 => I6(22),
      I2 => s(1),
      I3 => I5(22),
      I4 => s(0),
      I5 => I4(22),
      O => \o[22]_INST_0_i_2_n_0\
    );
\o[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[23]_INST_0_i_1_n_0\,
      I1 => \o[23]_INST_0_i_2_n_0\,
      O => o(23),
      S => s(2)
    );
\o[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(23),
      I1 => I2(23),
      I2 => s(1),
      I3 => I1(23),
      I4 => s(0),
      I5 => I0(23),
      O => \o[23]_INST_0_i_1_n_0\
    );
\o[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(23),
      I1 => I6(23),
      I2 => s(1),
      I3 => I5(23),
      I4 => s(0),
      I5 => I4(23),
      O => \o[23]_INST_0_i_2_n_0\
    );
\o[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[24]_INST_0_i_1_n_0\,
      I1 => \o[24]_INST_0_i_2_n_0\,
      O => o(24),
      S => s(2)
    );
\o[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(24),
      I1 => I2(24),
      I2 => s(1),
      I3 => I1(24),
      I4 => s(0),
      I5 => I0(24),
      O => \o[24]_INST_0_i_1_n_0\
    );
\o[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(24),
      I1 => I6(24),
      I2 => s(1),
      I3 => I5(24),
      I4 => s(0),
      I5 => I4(24),
      O => \o[24]_INST_0_i_2_n_0\
    );
\o[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[25]_INST_0_i_1_n_0\,
      I1 => \o[25]_INST_0_i_2_n_0\,
      O => o(25),
      S => s(2)
    );
\o[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(25),
      I1 => I2(25),
      I2 => s(1),
      I3 => I1(25),
      I4 => s(0),
      I5 => I0(25),
      O => \o[25]_INST_0_i_1_n_0\
    );
\o[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(25),
      I1 => I6(25),
      I2 => s(1),
      I3 => I5(25),
      I4 => s(0),
      I5 => I4(25),
      O => \o[25]_INST_0_i_2_n_0\
    );
\o[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[26]_INST_0_i_1_n_0\,
      I1 => \o[26]_INST_0_i_2_n_0\,
      O => o(26),
      S => s(2)
    );
\o[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(26),
      I1 => I2(26),
      I2 => s(1),
      I3 => I1(26),
      I4 => s(0),
      I5 => I0(26),
      O => \o[26]_INST_0_i_1_n_0\
    );
\o[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(26),
      I1 => I6(26),
      I2 => s(1),
      I3 => I5(26),
      I4 => s(0),
      I5 => I4(26),
      O => \o[26]_INST_0_i_2_n_0\
    );
\o[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[27]_INST_0_i_1_n_0\,
      I1 => \o[27]_INST_0_i_2_n_0\,
      O => o(27),
      S => s(2)
    );
\o[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(27),
      I1 => I2(27),
      I2 => s(1),
      I3 => I1(27),
      I4 => s(0),
      I5 => I0(27),
      O => \o[27]_INST_0_i_1_n_0\
    );
\o[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(27),
      I1 => I6(27),
      I2 => s(1),
      I3 => I5(27),
      I4 => s(0),
      I5 => I4(27),
      O => \o[27]_INST_0_i_2_n_0\
    );
\o[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[28]_INST_0_i_1_n_0\,
      I1 => \o[28]_INST_0_i_2_n_0\,
      O => o(28),
      S => s(2)
    );
\o[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(28),
      I1 => I2(28),
      I2 => s(1),
      I3 => I1(28),
      I4 => s(0),
      I5 => I0(28),
      O => \o[28]_INST_0_i_1_n_0\
    );
\o[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(28),
      I1 => I6(28),
      I2 => s(1),
      I3 => I5(28),
      I4 => s(0),
      I5 => I4(28),
      O => \o[28]_INST_0_i_2_n_0\
    );
\o[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[29]_INST_0_i_1_n_0\,
      I1 => \o[29]_INST_0_i_2_n_0\,
      O => o(29),
      S => s(2)
    );
\o[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(29),
      I1 => I2(29),
      I2 => s(1),
      I3 => I1(29),
      I4 => s(0),
      I5 => I0(29),
      O => \o[29]_INST_0_i_1_n_0\
    );
\o[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(29),
      I1 => I6(29),
      I2 => s(1),
      I3 => I5(29),
      I4 => s(0),
      I5 => I4(29),
      O => \o[29]_INST_0_i_2_n_0\
    );
\o[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[2]_INST_0_i_1_n_0\,
      I1 => \o[2]_INST_0_i_2_n_0\,
      O => o(2),
      S => s(2)
    );
\o[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(2),
      I1 => I2(2),
      I2 => s(1),
      I3 => I1(2),
      I4 => s(0),
      I5 => I0(2),
      O => \o[2]_INST_0_i_1_n_0\
    );
\o[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(2),
      I1 => I6(2),
      I2 => s(1),
      I3 => I5(2),
      I4 => s(0),
      I5 => I4(2),
      O => \o[2]_INST_0_i_2_n_0\
    );
\o[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[30]_INST_0_i_1_n_0\,
      I1 => \o[30]_INST_0_i_2_n_0\,
      O => o(30),
      S => s(2)
    );
\o[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(30),
      I1 => I2(30),
      I2 => s(1),
      I3 => I1(30),
      I4 => s(0),
      I5 => I0(30),
      O => \o[30]_INST_0_i_1_n_0\
    );
\o[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(30),
      I1 => I6(30),
      I2 => s(1),
      I3 => I5(30),
      I4 => s(0),
      I5 => I4(30),
      O => \o[30]_INST_0_i_2_n_0\
    );
\o[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[31]_INST_0_i_1_n_0\,
      I1 => \o[31]_INST_0_i_2_n_0\,
      O => o(31),
      S => s(2)
    );
\o[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(31),
      I1 => I2(31),
      I2 => s(1),
      I3 => I1(31),
      I4 => s(0),
      I5 => I0(31),
      O => \o[31]_INST_0_i_1_n_0\
    );
\o[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(31),
      I1 => I6(31),
      I2 => s(1),
      I3 => I5(31),
      I4 => s(0),
      I5 => I4(31),
      O => \o[31]_INST_0_i_2_n_0\
    );
\o[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[3]_INST_0_i_1_n_0\,
      I1 => \o[3]_INST_0_i_2_n_0\,
      O => o(3),
      S => s(2)
    );
\o[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(3),
      I1 => I2(3),
      I2 => s(1),
      I3 => I1(3),
      I4 => s(0),
      I5 => I0(3),
      O => \o[3]_INST_0_i_1_n_0\
    );
\o[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(3),
      I1 => I6(3),
      I2 => s(1),
      I3 => I5(3),
      I4 => s(0),
      I5 => I4(3),
      O => \o[3]_INST_0_i_2_n_0\
    );
\o[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[4]_INST_0_i_1_n_0\,
      I1 => \o[4]_INST_0_i_2_n_0\,
      O => o(4),
      S => s(2)
    );
\o[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(4),
      I1 => I2(4),
      I2 => s(1),
      I3 => I1(4),
      I4 => s(0),
      I5 => I0(4),
      O => \o[4]_INST_0_i_1_n_0\
    );
\o[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(4),
      I1 => I6(4),
      I2 => s(1),
      I3 => I5(4),
      I4 => s(0),
      I5 => I4(4),
      O => \o[4]_INST_0_i_2_n_0\
    );
\o[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[5]_INST_0_i_1_n_0\,
      I1 => \o[5]_INST_0_i_2_n_0\,
      O => o(5),
      S => s(2)
    );
\o[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(5),
      I1 => I2(5),
      I2 => s(1),
      I3 => I1(5),
      I4 => s(0),
      I5 => I0(5),
      O => \o[5]_INST_0_i_1_n_0\
    );
\o[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(5),
      I1 => I6(5),
      I2 => s(1),
      I3 => I5(5),
      I4 => s(0),
      I5 => I4(5),
      O => \o[5]_INST_0_i_2_n_0\
    );
\o[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[6]_INST_0_i_1_n_0\,
      I1 => \o[6]_INST_0_i_2_n_0\,
      O => o(6),
      S => s(2)
    );
\o[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(6),
      I1 => I2(6),
      I2 => s(1),
      I3 => I1(6),
      I4 => s(0),
      I5 => I0(6),
      O => \o[6]_INST_0_i_1_n_0\
    );
\o[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(6),
      I1 => I6(6),
      I2 => s(1),
      I3 => I5(6),
      I4 => s(0),
      I5 => I4(6),
      O => \o[6]_INST_0_i_2_n_0\
    );
\o[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[7]_INST_0_i_1_n_0\,
      I1 => \o[7]_INST_0_i_2_n_0\,
      O => o(7),
      S => s(2)
    );
\o[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(7),
      I1 => I2(7),
      I2 => s(1),
      I3 => I1(7),
      I4 => s(0),
      I5 => I0(7),
      O => \o[7]_INST_0_i_1_n_0\
    );
\o[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(7),
      I1 => I6(7),
      I2 => s(1),
      I3 => I5(7),
      I4 => s(0),
      I5 => I4(7),
      O => \o[7]_INST_0_i_2_n_0\
    );
\o[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[8]_INST_0_i_1_n_0\,
      I1 => \o[8]_INST_0_i_2_n_0\,
      O => o(8),
      S => s(2)
    );
\o[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(8),
      I1 => I2(8),
      I2 => s(1),
      I3 => I1(8),
      I4 => s(0),
      I5 => I0(8),
      O => \o[8]_INST_0_i_1_n_0\
    );
\o[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(8),
      I1 => I6(8),
      I2 => s(1),
      I3 => I5(8),
      I4 => s(0),
      I5 => I4(8),
      O => \o[8]_INST_0_i_2_n_0\
    );
\o[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[9]_INST_0_i_1_n_0\,
      I1 => \o[9]_INST_0_i_2_n_0\,
      O => o(9),
      S => s(2)
    );
\o[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(9),
      I1 => I2(9),
      I2 => s(1),
      I3 => I1(9),
      I4 => s(0),
      I5 => I0(9),
      O => \o[9]_INST_0_i_1_n_0\
    );
\o[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(9),
      I1 => I6(9),
      I2 => s(1),
      I3 => I5(9),
      I4 => s(0),
      I5 => I4(9),
      O => \o[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32 is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(0),
      Q => Q(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(10),
      Q => Q(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(11),
      Q => Q(11)
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(12),
      Q => Q(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(13),
      Q => Q(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(14),
      Q => Q(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(15),
      Q => Q(15)
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(16),
      Q => Q(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(17),
      Q => Q(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(18),
      Q => Q(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(19),
      Q => Q(19)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(1),
      Q => Q(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(20),
      Q => Q(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(21),
      Q => Q(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(22),
      Q => Q(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(23),
      Q => Q(23)
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(24),
      Q => Q(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(25),
      Q => Q(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(26),
      Q => Q(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(27),
      Q => Q(27)
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(28),
      Q => Q(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(29),
      Q => Q(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(2),
      Q => Q(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(30),
      Q => Q(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(31),
      Q => Q(31)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(3),
      Q => Q(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(4),
      Q => Q(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(5),
      Q => Q(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(6),
      Q => Q(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(7),
      Q => Q(7)
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(8),
      Q => Q(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl is
  port (
    ALUSrc_B : out STD_LOGIC;
    Branch : out STD_LOGIC;
    Fun7 : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ImmSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl is
  signal ALUSrc_B_reg_i_1_n_0 : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal ALUop : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ALUop_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ALUop_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal Branch_reg_i_1_n_0 : STD_LOGIC;
  signal \ImmSel_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal Jump_reg_i_1_n_0 : STD_LOGIC;
  signal Jump_reg_i_2_n_0 : STD_LOGIC;
  signal MemRW_reg_i_1_n_0 : STD_LOGIC;
  signal \MemtoReg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal RegWrite_reg_i_1_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ALUSrc_B_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ALUSrc_B_reg_i_1 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ALUop_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \ALUop_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \ALUop_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of Branch_reg : label is "LD";
  attribute SOFT_HLUTNM of Branch_reg_i_1 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \ImmSel_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \ImmSel_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of Jump_reg : label is "LD";
  attribute SOFT_HLUTNM of Jump_reg_i_2 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of MemRW_reg : label is "LD";
  attribute SOFT_HLUTNM of MemRW_reg_i_1 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \MemtoReg_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \MemtoReg_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \MemtoReg_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of RegWrite_reg : label is "LD";
  attribute SOFT_HLUTNM of RegWrite_reg_i_1 : label is "soft_lutpair2";
begin
ALUSrc_B_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALUSrc_B_reg_i_1_n_0,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => ALUSrc_B
    );
ALUSrc_B_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(3),
      I2 => OPcode(2),
      O => ALUSrc_B_reg_i_1_n_0
    );
\ALU_Control[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004E4E004E"
    )
        port map (
      I0 => Fun3(1),
      I1 => Fun3(2),
      I2 => Fun3(0),
      I3 => ALUop(0),
      I4 => OPcode(2),
      I5 => ALUop(1),
      O => ALU_Control(0)
    );
\ALU_Control[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A3B7F7F"
    )
        port map (
      I0 => ALUop(0),
      I1 => Fun3(0),
      I2 => OPcode(2),
      I3 => Fun3(1),
      I4 => Fun3(2),
      I5 => ALUop(1),
      O => ALU_Control(1)
    );
\ALU_Control[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_Control[2]_INST_0_i_1_n_0\,
      I1 => \ALU_Control[2]_INST_0_i_2_n_0\,
      O => ALU_Control(2),
      S => ALUop(0)
    );
\ALU_Control[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551510"
    )
        port map (
      I0 => ALUop(1),
      I1 => Fun3(2),
      I2 => Fun3(1),
      I3 => Fun3(0),
      I4 => Fun7,
      O => \ALU_Control[2]_INST_0_i_1_n_0\
    );
\ALU_Control[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBAAAAA"
    )
        port map (
      I0 => ALUop(1),
      I1 => Fun3(2),
      I2 => Fun3(1),
      I3 => Fun3(0),
      I4 => OPcode(2),
      O => \ALU_Control[2]_INST_0_i_2_n_0\
    );
\ALUop_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ALUop_reg[0]_i_1_n_0\,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => ALUop(0)
    );
\ALUop_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(4),
      I2 => OPcode(3),
      O => \ALUop_reg[0]_i_1_n_0\
    );
\ALUop_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ALUop_reg[1]_i_1_n_0\,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => ALUop(1)
    );
\ALUop_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(1),
      I2 => OPcode(2),
      O => \ALUop_reg[1]_i_1_n_0\
    );
Branch_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Branch_reg_i_1_n_0,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => Branch
    );
Branch_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(1),
      O => Branch_reg_i_1_n_0
    );
\ImmSel_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ImmSel_reg[0]_i_1_n_0\,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => ImmSel(0)
    );
\ImmSel_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(3),
      O => \ImmSel_reg[0]_i_1_n_0\
    );
Jump_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Jump_reg_i_1_n_0,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => ImmSel(1)
    );
Jump_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(4),
      O => Jump_reg_i_1_n_0
    );
Jump_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4004000F"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(3),
      I2 => OPcode(1),
      I3 => OPcode(0),
      I4 => OPcode(4),
      O => Jump_reg_i_2_n_0
    );
MemRW_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => MemRW_reg_i_1_n_0,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => MemRW
    );
MemRW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(4),
      I2 => OPcode(2),
      O => MemRW_reg_i_1_n_0
    );
\MemtoReg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \MemtoReg_reg[0]_i_1_n_0\,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => MemtoReg(0)
    );
\MemtoReg_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(3),
      O => \MemtoReg_reg[0]_i_1_n_0\
    );
\MemtoReg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OPcode(1),
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => MemtoReg(1)
    );
RegWrite_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RegWrite_reg_i_1_n_0,
      G => Jump_reg_i_2_n_0,
      GE => '1',
      Q => RegWrite
    );
RegWrite_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(0),
      I2 => OPcode(2),
      O => RegWrite_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32 is
  port (
    S : in STD_LOGIC;
    So : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32 is
  signal \^s\ : STD_LOGIC;
begin
  So(31) <= \^s\;
  So(30) <= \^s\;
  So(29) <= \^s\;
  So(28) <= \^s\;
  So(27) <= \^s\;
  So(26) <= \^s\;
  So(25) <= \^s\;
  So(24) <= \^s\;
  So(23) <= \^s\;
  So(22) <= \^s\;
  So(21) <= \^s\;
  So(20) <= \^s\;
  So(19) <= \^s\;
  So(18) <= \^s\;
  So(17) <= \^s\;
  So(16) <= \^s\;
  So(15) <= \^s\;
  So(14) <= \^s\;
  So(13) <= \^s\;
  So(12) <= \^s\;
  So(11) <= \^s\;
  So(10) <= \^s\;
  So(9) <= \^s\;
  So(8) <= \^s\;
  So(7) <= \^s\;
  So(6) <= \^s\;
  So(5) <= \^s\;
  So(4) <= \^s\;
  So(3) <= \^s\;
  So(2) <= \^s\;
  So(1) <= \^s\;
  So(0) <= \^s\;
  \^s\ <= S;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32 is
  signal \c[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_n_1\ : STD_LOGIC;
  signal \c[0]_INST_0_n_2\ : STD_LOGIC;
  signal \c[0]_INST_0_n_3\ : STD_LOGIC;
  signal \c[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_n_1\ : STD_LOGIC;
  signal \c[12]_INST_0_n_2\ : STD_LOGIC;
  signal \c[12]_INST_0_n_3\ : STD_LOGIC;
  signal \c[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[16]_INST_0_n_0\ : STD_LOGIC;
  signal \c[16]_INST_0_n_1\ : STD_LOGIC;
  signal \c[16]_INST_0_n_2\ : STD_LOGIC;
  signal \c[16]_INST_0_n_3\ : STD_LOGIC;
  signal \c[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[20]_INST_0_n_0\ : STD_LOGIC;
  signal \c[20]_INST_0_n_1\ : STD_LOGIC;
  signal \c[20]_INST_0_n_2\ : STD_LOGIC;
  signal \c[20]_INST_0_n_3\ : STD_LOGIC;
  signal \c[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[24]_INST_0_n_0\ : STD_LOGIC;
  signal \c[24]_INST_0_n_1\ : STD_LOGIC;
  signal \c[24]_INST_0_n_2\ : STD_LOGIC;
  signal \c[24]_INST_0_n_3\ : STD_LOGIC;
  signal \c[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[28]_INST_0_n_1\ : STD_LOGIC;
  signal \c[28]_INST_0_n_2\ : STD_LOGIC;
  signal \c[28]_INST_0_n_3\ : STD_LOGIC;
  signal \c[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_n_1\ : STD_LOGIC;
  signal \c[4]_INST_0_n_2\ : STD_LOGIC;
  signal \c[4]_INST_0_n_3\ : STD_LOGIC;
  signal \c[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_n_1\ : STD_LOGIC;
  signal \c[8]_INST_0_n_2\ : STD_LOGIC;
  signal \c[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_c[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\c[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c[0]_INST_0_n_0\,
      CO(2) => \c[0]_INST_0_n_1\,
      CO(1) => \c[0]_INST_0_n_2\,
      CO(0) => \c[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => c(3 downto 0),
      S(3) => \c[0]_INST_0_i_1_n_0\,
      S(2) => \c[0]_INST_0_i_2_n_0\,
      S(1) => \c[0]_INST_0_i_3_n_0\,
      S(0) => \c[0]_INST_0_i_4_n_0\
    );
\c[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => \c[0]_INST_0_i_1_n_0\
    );
\c[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => \c[0]_INST_0_i_2_n_0\
    );
\c[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => \c[0]_INST_0_i_3_n_0\
    );
\c[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => \c[0]_INST_0_i_4_n_0\
    );
\c[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[8]_INST_0_n_0\,
      CO(3) => \c[12]_INST_0_n_0\,
      CO(2) => \c[12]_INST_0_n_1\,
      CO(1) => \c[12]_INST_0_n_2\,
      CO(0) => \c[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3 downto 0) => c(15 downto 12),
      S(3) => \c[12]_INST_0_i_1_n_0\,
      S(2) => \c[12]_INST_0_i_2_n_0\,
      S(1) => \c[12]_INST_0_i_3_n_0\,
      S(0) => \c[12]_INST_0_i_4_n_0\
    );
\c[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      O => \c[12]_INST_0_i_1_n_0\
    );
\c[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      O => \c[12]_INST_0_i_2_n_0\
    );
\c[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(13),
      I1 => b(13),
      O => \c[12]_INST_0_i_3_n_0\
    );
\c[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      O => \c[12]_INST_0_i_4_n_0\
    );
\c[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[12]_INST_0_n_0\,
      CO(3) => \c[16]_INST_0_n_0\,
      CO(2) => \c[16]_INST_0_n_1\,
      CO(1) => \c[16]_INST_0_n_2\,
      CO(0) => \c[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
      O(3 downto 0) => c(19 downto 16),
      S(3) => \c[16]_INST_0_i_1_n_0\,
      S(2) => \c[16]_INST_0_i_2_n_0\,
      S(1) => \c[16]_INST_0_i_3_n_0\,
      S(0) => \c[16]_INST_0_i_4_n_0\
    );
\c[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(19),
      I1 => b(19),
      O => \c[16]_INST_0_i_1_n_0\
    );
\c[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      O => \c[16]_INST_0_i_2_n_0\
    );
\c[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(17),
      I1 => b(17),
      O => \c[16]_INST_0_i_3_n_0\
    );
\c[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      O => \c[16]_INST_0_i_4_n_0\
    );
\c[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[16]_INST_0_n_0\,
      CO(3) => \c[20]_INST_0_n_0\,
      CO(2) => \c[20]_INST_0_n_1\,
      CO(1) => \c[20]_INST_0_n_2\,
      CO(0) => \c[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(23 downto 20),
      O(3 downto 0) => c(23 downto 20),
      S(3) => \c[20]_INST_0_i_1_n_0\,
      S(2) => \c[20]_INST_0_i_2_n_0\,
      S(1) => \c[20]_INST_0_i_3_n_0\,
      S(0) => \c[20]_INST_0_i_4_n_0\
    );
\c[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(23),
      I1 => b(23),
      O => \c[20]_INST_0_i_1_n_0\
    );
\c[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      O => \c[20]_INST_0_i_2_n_0\
    );
\c[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      O => \c[20]_INST_0_i_3_n_0\
    );
\c[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      O => \c[20]_INST_0_i_4_n_0\
    );
\c[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[20]_INST_0_n_0\,
      CO(3) => \c[24]_INST_0_n_0\,
      CO(2) => \c[24]_INST_0_n_1\,
      CO(1) => \c[24]_INST_0_n_2\,
      CO(0) => \c[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(27 downto 24),
      O(3 downto 0) => c(27 downto 24),
      S(3) => \c[24]_INST_0_i_1_n_0\,
      S(2) => \c[24]_INST_0_i_2_n_0\,
      S(1) => \c[24]_INST_0_i_3_n_0\,
      S(0) => \c[24]_INST_0_i_4_n_0\
    );
\c[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      O => \c[24]_INST_0_i_1_n_0\
    );
\c[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      O => \c[24]_INST_0_i_2_n_0\
    );
\c[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(25),
      I1 => b(25),
      O => \c[24]_INST_0_i_3_n_0\
    );
\c[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      O => \c[24]_INST_0_i_4_n_0\
    );
\c[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[24]_INST_0_n_0\,
      CO(3) => \NLW_c[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \c[28]_INST_0_n_1\,
      CO(1) => \c[28]_INST_0_n_2\,
      CO(0) => \c[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(30 downto 28),
      O(3 downto 0) => c(31 downto 28),
      S(3) => \c[28]_INST_0_i_1_n_0\,
      S(2) => \c[28]_INST_0_i_2_n_0\,
      S(1) => \c[28]_INST_0_i_3_n_0\,
      S(0) => \c[28]_INST_0_i_4_n_0\
    );
\c[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      O => \c[28]_INST_0_i_1_n_0\
    );
\c[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      O => \c[28]_INST_0_i_2_n_0\
    );
\c[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(29),
      I1 => b(29),
      O => \c[28]_INST_0_i_3_n_0\
    );
\c[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      O => \c[28]_INST_0_i_4_n_0\
    );
\c[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[0]_INST_0_n_0\,
      CO(3) => \c[4]_INST_0_n_0\,
      CO(2) => \c[4]_INST_0_n_1\,
      CO(1) => \c[4]_INST_0_n_2\,
      CO(0) => \c[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => c(7 downto 4),
      S(3) => \c[4]_INST_0_i_1_n_0\,
      S(2) => \c[4]_INST_0_i_2_n_0\,
      S(1) => \c[4]_INST_0_i_3_n_0\,
      S(0) => \c[4]_INST_0_i_4_n_0\
    );
\c[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \c[4]_INST_0_i_1_n_0\
    );
\c[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \c[4]_INST_0_i_2_n_0\
    );
\c[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \c[4]_INST_0_i_3_n_0\
    );
\c[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \c[4]_INST_0_i_4_n_0\
    );
\c[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[4]_INST_0_n_0\,
      CO(3) => \c[8]_INST_0_n_0\,
      CO(2) => \c[8]_INST_0_n_1\,
      CO(1) => \c[8]_INST_0_n_2\,
      CO(0) => \c[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3 downto 0) => c(11 downto 8),
      S(3) => \c[8]_INST_0_i_1_n_0\,
      S(2) => \c[8]_INST_0_i_2_n_0\,
      S(1) => \c[8]_INST_0_i_3_n_0\,
      S(0) => \c[8]_INST_0_i_4_n_0\
    );
\c[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      O => \c[8]_INST_0_i_1_n_0\
    );
\c[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      O => \c[8]_INST_0_i_2_n_0\
    );
\c[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      O => \c[8]_INST_0_i_3_n_0\
    );
\c[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      O => \c[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32 is
  port (
    C0 : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32 is
  signal \S[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_n_1\ : STD_LOGIC;
  signal \S[0]_INST_0_n_2\ : STD_LOGIC;
  signal \S[0]_INST_0_n_3\ : STD_LOGIC;
  signal \S[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_n_1\ : STD_LOGIC;
  signal \S[12]_INST_0_n_2\ : STD_LOGIC;
  signal \S[12]_INST_0_n_3\ : STD_LOGIC;
  signal \S[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_n_1\ : STD_LOGIC;
  signal \S[16]_INST_0_n_2\ : STD_LOGIC;
  signal \S[16]_INST_0_n_3\ : STD_LOGIC;
  signal \S[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_n_1\ : STD_LOGIC;
  signal \S[20]_INST_0_n_2\ : STD_LOGIC;
  signal \S[20]_INST_0_n_3\ : STD_LOGIC;
  signal \S[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_n_1\ : STD_LOGIC;
  signal \S[24]_INST_0_n_2\ : STD_LOGIC;
  signal \S[24]_INST_0_n_3\ : STD_LOGIC;
  signal \S[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_n_1\ : STD_LOGIC;
  signal \S[28]_INST_0_n_2\ : STD_LOGIC;
  signal \S[28]_INST_0_n_3\ : STD_LOGIC;
  signal \S[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_n_1\ : STD_LOGIC;
  signal \S[4]_INST_0_n_2\ : STD_LOGIC;
  signal \S[4]_INST_0_n_3\ : STD_LOGIC;
  signal \S[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_n_1\ : STD_LOGIC;
  signal \S[8]_INST_0_n_2\ : STD_LOGIC;
  signal \S[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_S[32]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S[32]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\S[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \S[0]_INST_0_n_0\,
      CO(2) => \S[0]_INST_0_n_1\,
      CO(1) => \S[0]_INST_0_n_2\,
      CO(0) => \S[0]_INST_0_n_3\,
      CYINIT => B(0),
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => S(3 downto 0),
      S(3) => \S[0]_INST_0_i_1_n_0\,
      S(2) => \S[0]_INST_0_i_2_n_0\,
      S(1) => \S[0]_INST_0_i_3_n_0\,
      S(0) => \S[0]_INST_0_i_4_n_0\
    );
\S[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => \S[0]_INST_0_i_1_n_0\
    );
\S[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => \S[0]_INST_0_i_2_n_0\
    );
\S[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => \S[0]_INST_0_i_3_n_0\
    );
\S[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => C0,
      O => \S[0]_INST_0_i_4_n_0\
    );
\S[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[8]_INST_0_n_0\,
      CO(3) => \S[12]_INST_0_n_0\,
      CO(2) => \S[12]_INST_0_n_1\,
      CO(1) => \S[12]_INST_0_n_2\,
      CO(0) => \S[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3 downto 0) => S(15 downto 12),
      S(3) => \S[12]_INST_0_i_1_n_0\,
      S(2) => \S[12]_INST_0_i_2_n_0\,
      S(1) => \S[12]_INST_0_i_3_n_0\,
      S(0) => \S[12]_INST_0_i_4_n_0\
    );
\S[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \S[12]_INST_0_i_1_n_0\
    );
\S[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \S[12]_INST_0_i_2_n_0\
    );
\S[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \S[12]_INST_0_i_3_n_0\
    );
\S[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \S[12]_INST_0_i_4_n_0\
    );
\S[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[12]_INST_0_n_0\,
      CO(3) => \S[16]_INST_0_n_0\,
      CO(2) => \S[16]_INST_0_n_1\,
      CO(1) => \S[16]_INST_0_n_2\,
      CO(0) => \S[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3 downto 0) => S(19 downto 16),
      S(3) => \S[16]_INST_0_i_1_n_0\,
      S(2) => \S[16]_INST_0_i_2_n_0\,
      S(1) => \S[16]_INST_0_i_3_n_0\,
      S(0) => \S[16]_INST_0_i_4_n_0\
    );
\S[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => \S[16]_INST_0_i_1_n_0\
    );
\S[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => \S[16]_INST_0_i_2_n_0\
    );
\S[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => \S[16]_INST_0_i_3_n_0\
    );
\S[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => \S[16]_INST_0_i_4_n_0\
    );
\S[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[16]_INST_0_n_0\,
      CO(3) => \S[20]_INST_0_n_0\,
      CO(2) => \S[20]_INST_0_n_1\,
      CO(1) => \S[20]_INST_0_n_2\,
      CO(0) => \S[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3 downto 0) => S(23 downto 20),
      S(3) => \S[20]_INST_0_i_1_n_0\,
      S(2) => \S[20]_INST_0_i_2_n_0\,
      S(1) => \S[20]_INST_0_i_3_n_0\,
      S(0) => \S[20]_INST_0_i_4_n_0\
    );
\S[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => \S[20]_INST_0_i_1_n_0\
    );
\S[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => \S[20]_INST_0_i_2_n_0\
    );
\S[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => \S[20]_INST_0_i_3_n_0\
    );
\S[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => \S[20]_INST_0_i_4_n_0\
    );
\S[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[20]_INST_0_n_0\,
      CO(3) => \S[24]_INST_0_n_0\,
      CO(2) => \S[24]_INST_0_n_1\,
      CO(1) => \S[24]_INST_0_n_2\,
      CO(0) => \S[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3 downto 0) => S(27 downto 24),
      S(3) => \S[24]_INST_0_i_1_n_0\,
      S(2) => \S[24]_INST_0_i_2_n_0\,
      S(1) => \S[24]_INST_0_i_3_n_0\,
      S(0) => \S[24]_INST_0_i_4_n_0\
    );
\S[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => \S[24]_INST_0_i_1_n_0\
    );
\S[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => \S[24]_INST_0_i_2_n_0\
    );
\S[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => \S[24]_INST_0_i_3_n_0\
    );
\S[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => \S[24]_INST_0_i_4_n_0\
    );
\S[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[24]_INST_0_n_0\,
      CO(3) => \S[28]_INST_0_n_0\,
      CO(2) => \S[28]_INST_0_n_1\,
      CO(1) => \S[28]_INST_0_n_2\,
      CO(0) => \S[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(31 downto 28),
      O(3 downto 0) => S(31 downto 28),
      S(3) => \S[28]_INST_0_i_1_n_0\,
      S(2) => \S[28]_INST_0_i_2_n_0\,
      S(1) => \S[28]_INST_0_i_3_n_0\,
      S(0) => \S[28]_INST_0_i_4_n_0\
    );
\S[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => \S[28]_INST_0_i_1_n_0\
    );
\S[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => \S[28]_INST_0_i_2_n_0\
    );
\S[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => \S[28]_INST_0_i_3_n_0\
    );
\S[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => \S[28]_INST_0_i_4_n_0\
    );
\S[32]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[28]_INST_0_n_0\,
      CO(3 downto 0) => \NLW_S[32]_INST_0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_S[32]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => S(32),
      S(3 downto 1) => B"000",
      S(0) => C0
    );
\S[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[0]_INST_0_n_0\,
      CO(3) => \S[4]_INST_0_n_0\,
      CO(2) => \S[4]_INST_0_n_1\,
      CO(1) => \S[4]_INST_0_n_2\,
      CO(0) => \S[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => S(7 downto 4),
      S(3) => \S[4]_INST_0_i_1_n_0\,
      S(2) => \S[4]_INST_0_i_2_n_0\,
      S(1) => \S[4]_INST_0_i_3_n_0\,
      S(0) => \S[4]_INST_0_i_4_n_0\
    );
\S[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \S[4]_INST_0_i_1_n_0\
    );
\S[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => \S[4]_INST_0_i_2_n_0\
    );
\S[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \S[4]_INST_0_i_3_n_0\
    );
\S[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => \S[4]_INST_0_i_4_n_0\
    );
\S[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[4]_INST_0_n_0\,
      CO(3) => \S[8]_INST_0_n_0\,
      CO(2) => \S[8]_INST_0_n_1\,
      CO(1) => \S[8]_INST_0_n_2\,
      CO(0) => \S[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => S(11 downto 8),
      S(3) => \S[8]_INST_0_i_1_n_0\,
      S(2) => \S[8]_INST_0_i_2_n_0\,
      S(1) => \S[8]_INST_0_i_3_n_0\,
      S(0) => \S[8]_INST_0_i_4_n_0\
    );
\S[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \S[8]_INST_0_i_1_n_0\
    );
\S[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => \S[8]_INST_0_i_2_n_0\
    );
\S[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => \S[8]_INST_0_i_3_n_0\
    );
\S[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => \S[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 : entity is "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32 is
  port (
    o : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32 is
  signal o_INST_0_i_1_n_0 : STD_LOGIC;
  signal o_INST_0_i_2_n_0 : STD_LOGIC;
  signal o_INST_0_i_3_n_0 : STD_LOGIC;
  signal o_INST_0_i_4_n_0 : STD_LOGIC;
  signal o_INST_0_i_5_n_0 : STD_LOGIC;
  signal o_INST_0_i_6_n_0 : STD_LOGIC;
begin
o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => o_INST_0_i_1_n_0,
      I1 => o_INST_0_i_2_n_0,
      I2 => o_INST_0_i_3_n_0,
      I3 => o_INST_0_i_4_n_0,
      I4 => o_INST_0_i_5_n_0,
      I5 => o_INST_0_i_6_n_0,
      O => o
    );
o_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => o_INST_0_i_1_n_0
    );
o_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(4),
      I1 => A(5),
      I2 => A(2),
      I3 => A(3),
      I4 => A(7),
      I5 => A(6),
      O => o_INST_0_i_2_n_0
    );
o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(10),
      I1 => A(11),
      I2 => A(8),
      I3 => A(9),
      I4 => A(13),
      I5 => A(12),
      O => o_INST_0_i_3_n_0
    );
o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(16),
      I1 => A(17),
      I2 => A(14),
      I3 => A(15),
      I4 => A(19),
      I5 => A(18),
      O => o_INST_0_i_4_n_0
    );
o_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(22),
      I1 => A(23),
      I2 => A(20),
      I3 => A(21),
      I4 => A(25),
      I5 => A(24),
      O => o_INST_0_i_5_n_0
    );
o_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(28),
      I1 => A(29),
      I2 => A(26),
      I3 => A(27),
      I4 => A(31),
      I5 => A(30),
      O => o_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32 is
  signal \<const0>\ : STD_LOGIC;
  signal \^b\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^b\(31 downto 1) <= B(31 downto 1);
  res(31) <= \<const0>\;
  res(30 downto 0) <= \^b\(31 downto 1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 : entity is "ALU_MUX8T1_32_0_0,MUX8T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 : entity is "MUX8T1_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32
     port map (
      I0(31 downto 0) => B"00000000000000000000000000000000",
      I1(31 downto 0) => I1(31 downto 0),
      I2(31 downto 0) => I2(31 downto 0),
      I3(31 downto 0) => I3(31 downto 0),
      I4(31 downto 0) => I4(31 downto 0),
      I5(31 downto 0) => I5(31 downto 0),
      I6(31 downto 0) => I2(31 downto 0),
      I7(31 downto 1) => B"0000000000000000000000000000000",
      I7(0) => I7(0),
      o(31 downto 0) => o(31 downto 0),
      s(2 downto 0) => s(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 is
  port (
    S : in STD_LOGIC;
    So : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 : entity is "ALU_SignalExt_32_0_0,SignalExt_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 : entity is "SignalExt_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32
     port map (
      S => S,
      So(31 downto 0) => So(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 is
  port (
    C0 : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 : entity is "ALU_addc_32_0_0,addc_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 : entity is "addc_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal inst_n_0 : STD_LOGIC;
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
  S(32) <= \<const0>\;
  S(31 downto 0) <= \^s\(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      C0 => C0,
      S(32) => inst_n_0,
      S(31 downto 0) => \^s\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 : entity is "ALU_nor32_0_0,nor32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 : entity is "nor32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 : entity is "ALU_or32_0_0,or32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 : entity is "or32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 is
  port (
    o : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 : entity is "ALU_or_bit_32_0_0,or_bit_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 : entity is "or_bit_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32
     port map (
      A(31 downto 0) => A(31 downto 0),
      o => o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 : entity is "ALU_srl32_0_0,srl32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 : entity is "srl32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 : entity is "ALU_xor32_0_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 : entity is "xor32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 : entity is "ALU_xor32_1_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 : entity is "xor32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 is
  port (
    ALUSrc_B : out STD_LOGIC;
    Branch : out STD_LOGIC;
    CPU_MIO : out STD_LOGIC;
    Fun7 : in STD_LOGIC;
    Jump : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ImmSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 : entity is "MSCPU_SCPU_ctrl_0_0,SCPU_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 : entity is "SCPU_ctrl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^immsel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  CPU_MIO <= \<const0>\;
  ImmSel(1 downto 0) <= \^immsel\(1 downto 0);
  Jump <= \^immsel\(1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl
     port map (
      ALUSrc_B => ALUSrc_B,
      ALU_Control(2 downto 0) => ALU_Control(2 downto 0),
      Branch => Branch,
      Fun3(2 downto 0) => Fun3(2 downto 0),
      Fun7 => Fun7,
      ImmSel(1 downto 0) => \^immsel\(1 downto 0),
      MemRW => MemRW,
      MemtoReg(1 downto 0) => MemtoReg(1 downto 0),
      OPcode(4 downto 0) => OPcode(4 downto 0),
      RegWrite => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 is
  port (
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Imm_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 : entity is "datapath_ImmGen_0_0,ImmGen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 : entity is "ImmGen,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 is
  signal \^imm_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^inst_field\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Imm_out(31) <= \^inst_field\(31);
  Imm_out(30) <= \^inst_field\(31);
  Imm_out(29) <= \^inst_field\(31);
  Imm_out(28) <= \^inst_field\(31);
  Imm_out(27) <= \^inst_field\(31);
  Imm_out(26) <= \^inst_field\(31);
  Imm_out(25) <= \^inst_field\(31);
  Imm_out(24) <= \^inst_field\(31);
  Imm_out(23) <= \^inst_field\(31);
  Imm_out(22) <= \^inst_field\(31);
  Imm_out(21) <= \^inst_field\(31);
  Imm_out(20) <= \^inst_field\(31);
  Imm_out(19 downto 11) <= \^imm_out\(19 downto 11);
  Imm_out(10 downto 5) <= \^inst_field\(30 downto 25);
  Imm_out(4 downto 0) <= \^imm_out\(4 downto 0);
  \^inst_field\(31 downto 7) <= inst_field(31 downto 7);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen
     port map (
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Imm_out(13 downto 5) => \^imm_out\(19 downto 11),
      Imm_out(4 downto 0) => \^imm_out\(4 downto 0),
      inst_field(18) => \^inst_field\(31),
      inst_field(17 downto 0) => \^inst_field\(24 downto 7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 : entity is "datapath_MUX2T1_32_0_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 : entity is "MUX2T1_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32
     port map (
      I0(31 downto 0) => B"00000000000000000000000000000000",
      I1(31 downto 0) => I1(31 downto 0),
      o(31 downto 0) => o(31 downto 0),
      s => s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 : entity is "datapath_MUX2T1_32_1_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 : entity is "MUX2T1_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32
     port map (
      I0(31 downto 0) => I0(31 downto 0),
      I1(31 downto 0) => I1(31 downto 0),
      o(31 downto 0) => o(31 downto 0),
      s => s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 : entity is "datapath_MUX2T1_32_2_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 : entity is "MUX2T1_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32
     port map (
      I0(31 downto 0) => I0(31 downto 0),
      I1(31 downto 0) => I1(31 downto 0),
      o(31 downto 0) => o(31 downto 0),
      s => s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 : entity is "datapath_MUX4T1_32_0_0,MUX4T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 : entity is "MUX4T1_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_10 : STD_LOGIC;
  signal inst_n_11 : STD_LOGIC;
  signal inst_n_12 : STD_LOGIC;
  signal inst_n_13 : STD_LOGIC;
  signal inst_n_14 : STD_LOGIC;
  signal inst_n_15 : STD_LOGIC;
  signal inst_n_16 : STD_LOGIC;
  signal inst_n_17 : STD_LOGIC;
  signal inst_n_18 : STD_LOGIC;
  signal inst_n_19 : STD_LOGIC;
  signal inst_n_2 : STD_LOGIC;
  signal inst_n_20 : STD_LOGIC;
  signal inst_n_21 : STD_LOGIC;
  signal inst_n_22 : STD_LOGIC;
  signal inst_n_23 : STD_LOGIC;
  signal inst_n_24 : STD_LOGIC;
  signal inst_n_25 : STD_LOGIC;
  signal inst_n_26 : STD_LOGIC;
  signal inst_n_27 : STD_LOGIC;
  signal inst_n_28 : STD_LOGIC;
  signal inst_n_29 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_30 : STD_LOGIC;
  signal inst_n_31 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal inst_n_5 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  signal inst_n_7 : STD_LOGIC;
  signal inst_n_8 : STD_LOGIC;
  signal inst_n_9 : STD_LOGIC;
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
  o(31) <= \<const0>\;
  o(30) <= \<const0>\;
  o(29) <= \<const0>\;
  o(28) <= \<const0>\;
  o(27) <= \<const0>\;
  o(26) <= \<const0>\;
  o(25) <= \<const0>\;
  o(24) <= \<const0>\;
  o(23) <= \<const0>\;
  o(22) <= \<const0>\;
  o(21) <= \<const0>\;
  o(20) <= \<const0>\;
  o(19) <= \<const0>\;
  o(18) <= \<const0>\;
  o(17) <= \<const0>\;
  o(16) <= \<const0>\;
  o(15) <= \<const0>\;
  o(14) <= \<const0>\;
  o(13) <= \<const0>\;
  o(12) <= \<const0>\;
  o(11) <= \<const0>\;
  o(10) <= \<const0>\;
  o(9) <= \<const0>\;
  o(8) <= \<const0>\;
  o(7) <= \<const0>\;
  o(6) <= \<const0>\;
  o(5) <= \<const0>\;
  o(4) <= \<const0>\;
  o(3) <= \<const0>\;
  o(2) <= \<const0>\;
  o(1) <= \<const0>\;
  o(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32
     port map (
      I0(31 downto 0) => I0(31 downto 0),
      I1(31 downto 0) => I1(31 downto 0),
      I2(31 downto 0) => I2(31 downto 0),
      I3(31 downto 0) => I3(31 downto 0),
      o(31) => inst_n_0,
      o(30) => inst_n_1,
      o(29) => inst_n_2,
      o(28) => inst_n_3,
      o(27) => inst_n_4,
      o(26) => inst_n_5,
      o(25) => inst_n_6,
      o(24) => inst_n_7,
      o(23) => inst_n_8,
      o(22) => inst_n_9,
      o(21) => inst_n_10,
      o(20) => inst_n_11,
      o(19) => inst_n_12,
      o(18) => inst_n_13,
      o(17) => inst_n_14,
      o(16) => inst_n_15,
      o(15) => inst_n_16,
      o(14) => inst_n_17,
      o(13) => inst_n_18,
      o(12) => inst_n_19,
      o(11) => inst_n_20,
      o(10) => inst_n_21,
      o(9) => inst_n_22,
      o(8) => inst_n_23,
      o(7) => inst_n_24,
      o(6) => inst_n_25,
      o(5) => inst_n_26,
      o(4) => inst_n_27,
      o(3) => inst_n_28,
      o(2) => inst_n_29,
      o(1) => inst_n_30,
      o(0) => inst_n_31,
      s(1 downto 0) => s(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 is
  port (
    CE : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 : entity is "datapath_REG32_0_0,REG32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 : entity is "REG32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 : entity is "datapath_add_32_0_0,add_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 : entity is "add_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32
     port map (
      a(31 downto 0) => a(31 downto 0),
      b(31 downto 0) => B"00000000000000000000000000000100",
      c(31 downto 0) => c(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 : entity is "datapath_add_32_1_0,add_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 : entity is "add_32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32
     port map (
      a(31 downto 0) => a(31 downto 0),
      b(31 downto 0) => b(31 downto 0),
      c(31 downto 0) => c(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  port (
    zero : out STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  signal SignalExt_32_0_So : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal addc_32_0_S : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal nor32_0_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal or32_0_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^res\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal srl32_0_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC;
  signal xlslice_2_Dout : STD_LOGIC;
  signal xor32_0_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xor32_1_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_addc_32_0_S_UNCONNECTED : STD_LOGIC_VECTOR ( 32 to 32 );
  signal NLW_xlconcat_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MUX8T1_32_0 : label is "ALU_MUX8T1_32_0_0,MUX8T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MUX8T1_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MUX8T1_32_0 : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MUX8T1_32_0 : label is "MUX8T1_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of SignalExt_32_0 : label is "ALU_SignalExt_32_0_0,SignalExt_32,{}";
  attribute DowngradeIPIdentifiedWarnings of SignalExt_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of SignalExt_32_0 : label is "package_project";
  attribute X_CORE_INFO of SignalExt_32_0 : label is "SignalExt_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of addc_32_0 : label is "ALU_addc_32_0_0,addc_32,{}";
  attribute DowngradeIPIdentifiedWarnings of addc_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of addc_32_0 : label is "package_project";
  attribute X_CORE_INFO of addc_32_0 : label is "addc_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of nor32_0 : label is "ALU_nor32_0_0,nor32,{}";
  attribute DowngradeIPIdentifiedWarnings of nor32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of nor32_0 : label is "package_project";
  attribute X_CORE_INFO of nor32_0 : label is "nor32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of or32_0 : label is "ALU_or32_0_0,or32,{}";
  attribute DowngradeIPIdentifiedWarnings of or32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of or32_0 : label is "package_project";
  attribute X_CORE_INFO of or32_0 : label is "or32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of or_bit_32_0 : label is "ALU_or_bit_32_0_0,or_bit_32,{}";
  attribute DowngradeIPIdentifiedWarnings of or_bit_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of or_bit_32_0 : label is "package_project";
  attribute X_CORE_INFO of or_bit_32_0 : label is "or_bit_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of srl32_0 : label is "ALU_srl32_0_0,srl32,{}";
  attribute DowngradeIPIdentifiedWarnings of srl32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of srl32_0 : label is "package_project";
  attribute X_CORE_INFO of srl32_0 : label is "srl32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xlconcat_0 : label is "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of xlconcat_0 : label is "yes";
  attribute X_CORE_INFO of xlconcat_0 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_0 : label is "yes";
  attribute X_CORE_INFO of xlslice_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xlslice_1 : label is "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_1 : label is "yes";
  attribute X_CORE_INFO of xlslice_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xlslice_2 : label is "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_2 : label is "yes";
  attribute X_CORE_INFO of xlslice_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xor32_0 : label is "ALU_xor32_0_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings of xor32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of xor32_0 : label is "package_project";
  attribute X_CORE_INFO of xor32_0 : label is "xor32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xor32_1 : label is "ALU_xor32_1_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings of xor32_1 : label is "yes";
  attribute IP_DEFINITION_SOURCE of xor32_1 : label is "package_project";
  attribute X_CORE_INFO of xor32_1 : label is "xor32,Vivado 2020.2";
begin
  res(31 downto 0) <= \^res\(31 downto 0);
MUX8T1_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0
     port map (
      I0(31 downto 0) => B"00000000000000000000000000000000",
      I1(31 downto 0) => or32_0_res(31 downto 0),
      I2(31 downto 0) => xlslice_0_Dout(31 downto 0),
      I3(31 downto 0) => xor32_1_res(31 downto 0),
      I4(31 downto 0) => nor32_0_res(31 downto 0),
      I5(31 downto 0) => srl32_0_res(31 downto 0),
      I6(31 downto 0) => B"00000000000000000000000000000000",
      I7(31 downto 1) => B"0000000000000000000000000000000",
      I7(0) => xlconcat_0_dout(0),
      o(31 downto 0) => \^res\(31 downto 0),
      s(2 downto 0) => ALU_operation(2 downto 0)
    );
SignalExt_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0
     port map (
      S => xlslice_1_Dout,
      So(31 downto 0) => SignalExt_32_0_So(31 downto 0)
    );
addc_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => xor32_0_res(31 downto 0),
      C0 => xlslice_1_Dout,
      S(32) => NLW_addc_32_0_S_UNCONNECTED(32),
      S(31 downto 0) => addc_32_0_S(31 downto 0)
    );
nor32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => nor32_0_res(31 downto 0)
    );
or32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => or32_0_res(31 downto 0)
    );
or_bit_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0
     port map (
      A(31 downto 0) => \^res\(31 downto 0),
      o => zero
    );
srl32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => srl32_0_res(31 downto 0)
    );
xlconcat_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0
     port map (
      In0(0) => xlslice_2_Dout,
      In1(30 downto 0) => B"0000000000000000000000000000000",
      dout(31 downto 1) => NLW_xlconcat_0_dout_UNCONNECTED(31 downto 1),
      dout(0) => xlconcat_0_dout(0)
    );
xlslice_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0
     port map (
      Din(32) => '0',
      Din(31 downto 0) => addc_32_0_S(31 downto 0),
      Dout(31 downto 0) => xlslice_0_Dout(31 downto 0)
    );
xlslice_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1
     port map (
      Din(2 downto 1) => B"00",
      Din(0) => ALU_operation(0),
      Dout(0) => xlslice_1_Dout
    );
xlslice_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0
     port map (
      Din(32 downto 1) => B"00000000000000000000000000000000",
      Din(0) => addc_32_0_S(0),
      Dout(0) => xlslice_2_Dout
    );
xor32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0
     port map (
      A(31 downto 0) => SignalExt_32_0_So(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => xor32_0_res(31 downto 0)
    );
xor32_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => xor32_1_res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper is
  port (
    zero : out STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper is
begin
ALU_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
     port map (
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0),
      zero => zero
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 is
  port (
    zero : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 : entity is "datapath_ALU_wrapper_0_1,ALU_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 : entity is "ALU_wrapper,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper
     port map (
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0),
      zero => zero
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    ALUSrc_B : in STD_LOGIC;
    Jump : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Branch : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath : entity is "datapath.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal \<const0>\ : STD_LOGIC;
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ImmGen_0_Imm_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MUX2T1_32_0_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MUX2T1_32_1_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MUX2T1_32_3_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pc_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ALU\ : STD_LOGIC;
  signal add_32_0_c : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_32_1_c : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal and_2_Res : STD_LOGIC;
  signal NLW_MUX4T1_32_0_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ALU : label is "datapath_ALU_wrapper_0_1,ALU_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ALU : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ALU : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ALU : label is "ALU_wrapper,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of ImmGen : label is "datapath_ImmGen_0_0,ImmGen,{}";
  attribute DowngradeIPIdentifiedWarnings of ImmGen : label is "yes";
  attribute IP_DEFINITION_SOURCE of ImmGen : label is "package_project";
  attribute X_CORE_INFO of ImmGen : label is "ImmGen,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of MUX2T1_32_0 : label is "datapath_MUX2T1_32_0_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings of MUX2T1_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of MUX2T1_32_0 : label is "package_project";
  attribute X_CORE_INFO of MUX2T1_32_0 : label is "MUX2T1_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of MUX2T1_32_1 : label is "datapath_MUX2T1_32_1_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings of MUX2T1_32_1 : label is "yes";
  attribute IP_DEFINITION_SOURCE of MUX2T1_32_1 : label is "package_project";
  attribute X_CORE_INFO of MUX2T1_32_1 : label is "MUX2T1_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of MUX2T1_32_3 : label is "datapath_MUX2T1_32_2_0,MUX2T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings of MUX2T1_32_3 : label is "yes";
  attribute IP_DEFINITION_SOURCE of MUX2T1_32_3 : label is "package_project";
  attribute X_CORE_INFO of MUX2T1_32_3 : label is "MUX2T1_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of MUX4T1_32_0 : label is "datapath_MUX4T1_32_0_0,MUX4T1_32,{}";
  attribute DowngradeIPIdentifiedWarnings of MUX4T1_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of MUX4T1_32_0 : label is "package_project";
  attribute X_CORE_INFO of MUX4T1_32_0 : label is "MUX4T1_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of PC : label is "datapath_REG32_0_0,REG32,{}";
  attribute DowngradeIPIdentifiedWarnings of PC : label is "yes";
  attribute IP_DEFINITION_SOURCE of PC : label is "package_project";
  attribute X_CORE_INFO of PC : label is "REG32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of add_32_0 : label is "datapath_add_32_0_0,add_32,{}";
  attribute DowngradeIPIdentifiedWarnings of add_32_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of add_32_0 : label is "package_project";
  attribute X_CORE_INFO of add_32_0 : label is "add_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of add_32_1 : label is "datapath_add_32_1_0,add_32,{}";
  attribute DowngradeIPIdentifiedWarnings of add_32_1 : label is "yes";
  attribute IP_DEFINITION_SOURCE of add_32_1 : label is "package_project";
  attribute X_CORE_INFO of add_32_1 : label is "add_32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of and_2 : label is "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings of and_2 : label is "yes";
  attribute X_CORE_INFO of and_2 : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN datapath_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  ALU_out(31 downto 0) <= \^alu_out\(31 downto 0);
  Data_out(31) <= \<const0>\;
  Data_out(30) <= \<const0>\;
  Data_out(29) <= \<const0>\;
  Data_out(28) <= \<const0>\;
  Data_out(27) <= \<const0>\;
  Data_out(26) <= \<const0>\;
  Data_out(25) <= \<const0>\;
  Data_out(24) <= \<const0>\;
  Data_out(23) <= \<const0>\;
  Data_out(22) <= \<const0>\;
  Data_out(21) <= \<const0>\;
  Data_out(20) <= \<const0>\;
  Data_out(19) <= \<const0>\;
  Data_out(18) <= \<const0>\;
  Data_out(17) <= \<const0>\;
  Data_out(16) <= \<const0>\;
  Data_out(15) <= \<const0>\;
  Data_out(14) <= \<const0>\;
  Data_out(13) <= \<const0>\;
  Data_out(12) <= \<const0>\;
  Data_out(11) <= \<const0>\;
  Data_out(10) <= \<const0>\;
  Data_out(9) <= \<const0>\;
  Data_out(8) <= \<const0>\;
  Data_out(7) <= \<const0>\;
  Data_out(6) <= \<const0>\;
  Data_out(5) <= \<const0>\;
  Data_out(4) <= \<const0>\;
  Data_out(3) <= \<const0>\;
  Data_out(2) <= \<const0>\;
  Data_out(1) <= \<const0>\;
  Data_out(0) <= \<const0>\;
  PC_out(31 downto 0) <= \^pc_out\(31 downto 0);
ALU: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1
     port map (
      A(31 downto 0) => B"00000000000000000000000000000000",
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      B(31 downto 0) => MUX2T1_32_0_o(31 downto 0),
      res(31 downto 0) => \^alu_out\(31 downto 0),
      zero => \^ALU\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ImmGen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0
     port map (
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Imm_out(31 downto 0) => ImmGen_0_Imm_out(31 downto 0),
      inst_field(31 downto 7) => inst_field(31 downto 7),
      inst_field(6 downto 0) => B"0000000"
    );
MUX2T1_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0
     port map (
      I0(31 downto 0) => B"00000000000000000000000000000000",
      I1(31 downto 0) => ImmGen_0_Imm_out(31 downto 0),
      o(31 downto 0) => MUX2T1_32_0_o(31 downto 0),
      s => ALUSrc_B
    );
MUX2T1_32_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0
     port map (
      I0(31 downto 0) => add_32_0_c(31 downto 0),
      I1(31 downto 0) => add_32_1_c(31 downto 0),
      o(31 downto 0) => MUX2T1_32_1_o(31 downto 0),
      s => and_2_Res
    );
MUX2T1_32_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0
     port map (
      I0(31 downto 0) => MUX2T1_32_1_o(31 downto 0),
      I1(31 downto 0) => add_32_1_c(31 downto 0),
      o(31 downto 0) => MUX2T1_32_3_o(31 downto 0),
      s => Jump
    );
MUX4T1_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0
     port map (
      I0(31 downto 0) => \^alu_out\(31 downto 0),
      I1(31 downto 0) => Data_in(31 downto 0),
      I2(31 downto 0) => add_32_0_c(31 downto 0),
      I3(31 downto 0) => add_32_0_c(31 downto 0),
      o(31 downto 0) => NLW_MUX4T1_32_0_o_UNCONNECTED(31 downto 0),
      s(1 downto 0) => MemtoReg(1 downto 0)
    );
PC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0
     port map (
      CE => '1',
      D(31 downto 0) => MUX2T1_32_3_o(31 downto 0),
      Q(31 downto 0) => \^pc_out\(31 downto 0),
      clk => clk,
      rst => rst
    );
add_32_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0
     port map (
      a(31 downto 0) => \^pc_out\(31 downto 0),
      b(31 downto 0) => B"00000000000000000000000000000100",
      c(31 downto 0) => add_32_0_c(31 downto 0)
    );
add_32_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0
     port map (
      a(31 downto 0) => \^pc_out\(31 downto 0),
      b(31 downto 0) => ImmGen_0_Imm_out(31 downto 0),
      c(31 downto 0) => add_32_1_c(31 downto 0)
    );
and_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0
     port map (
      Op1(0) => Branch(0),
      Op2(0) => \^ALU\,
      Res(0) => and_2_Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper is
  port (
    ALUSrc_B : in STD_LOGIC;
    Jump : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Branch : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_datapath_i_Data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of datapath_i : label is "datapath.hwdef";
begin
  Data_out(31) <= \<const0>\;
  Data_out(30) <= \<const0>\;
  Data_out(29) <= \<const0>\;
  Data_out(28) <= \<const0>\;
  Data_out(27) <= \<const0>\;
  Data_out(26) <= \<const0>\;
  Data_out(25) <= \<const0>\;
  Data_out(24) <= \<const0>\;
  Data_out(23) <= \<const0>\;
  Data_out(22) <= \<const0>\;
  Data_out(21) <= \<const0>\;
  Data_out(20) <= \<const0>\;
  Data_out(19) <= \<const0>\;
  Data_out(18) <= \<const0>\;
  Data_out(17) <= \<const0>\;
  Data_out(16) <= \<const0>\;
  Data_out(15) <= \<const0>\;
  Data_out(14) <= \<const0>\;
  Data_out(13) <= \<const0>\;
  Data_out(12) <= \<const0>\;
  Data_out(11) <= \<const0>\;
  Data_out(10) <= \<const0>\;
  Data_out(9) <= \<const0>\;
  Data_out(8) <= \<const0>\;
  Data_out(7) <= \<const0>\;
  Data_out(6) <= \<const0>\;
  Data_out(5) <= \<const0>\;
  Data_out(4) <= \<const0>\;
  Data_out(3) <= \<const0>\;
  Data_out(2) <= \<const0>\;
  Data_out(1) <= \<const0>\;
  Data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
datapath_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      ALUSrc_B => ALUSrc_B,
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      ALU_out(31 downto 0) => ALU_out(31 downto 0),
      Branch(0) => Branch(0),
      Data_in(31 downto 0) => Data_in(31 downto 0),
      Data_out(31 downto 0) => NLW_datapath_i_Data_out_UNCONNECTED(31 downto 0),
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Jump => Jump,
      MemtoReg(1 downto 0) => MemtoReg(1 downto 0),
      PC_out(31 downto 0) => PC_out(31 downto 0),
      RegWrite => '0',
      clk => clk,
      inst_field(31 downto 7) => inst_field(31 downto 7),
      inst_field(6 downto 0) => B"0000000",
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 is
  port (
    ALUSrc_B : in STD_LOGIC;
    Jump : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Branch : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 : entity is "MSCPU_datapath_0_0,datapath,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 : entity is "datapath,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN MSCPU_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper
     port map (
      ALUSrc_B => ALUSrc_B,
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      ALU_out(31 downto 0) => ALU_out(31 downto 0),
      Branch(0) => Branch(0),
      Data_in(31 downto 0) => Data_in(31 downto 0),
      Data_out(31 downto 0) => Data_out(31 downto 0),
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Jump => Jump,
      MemtoReg(1 downto 0) => MemtoReg(1 downto 0),
      PC_out(31 downto 0) => PC_out(31 downto 0),
      RegWrite => RegWrite,
      clk => clk,
      inst_field(31 downto 0) => inst_field(31 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU is
  port (
    CPU_MIO : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU : entity is "MSCPU.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU is
  signal \<const0>\ : STD_LOGIC;
  signal Controller_ALUSrc_B : STD_LOGIC;
  signal Controller_ALU_Control : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Controller_Branch : STD_LOGIC;
  signal Controller_ImmSel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Controller_Jump : STD_LOGIC;
  signal Controller_MemtoReg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Controller_RegWrite : STD_LOGIC;
  signal inst_30_Dout : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_Controller_CPU_MIO_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Controller : label is "MSCPU_SCPU_ctrl_0_0,SCPU_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Controller : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Controller : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Controller : label is "SCPU_ctrl,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of datapath : label is "MSCPU_datapath_0_0,datapath,{}";
  attribute DowngradeIPIdentifiedWarnings of datapath : label is "yes";
  attribute IP_DEFINITION_SOURCE of datapath : label is "package_project";
  attribute X_CORE_INFO of datapath : label is "datapath,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of inst14_12 : label is "MSCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of inst14_12 : label is "yes";
  attribute X_CORE_INFO of inst14_12 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of inst6_2 : label is "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of inst6_2 : label is "yes";
  attribute X_CORE_INFO of inst6_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of inst_30 : label is "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of inst_30 : label is "yes";
  attribute X_CORE_INFO of inst_30 : label is "xlslice_v1_0_2_xlslice,Vivado 2020.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN MSCPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  CPU_MIO <= \<const0>\;
Controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0
     port map (
      ALUSrc_B => Controller_ALUSrc_B,
      ALU_Control(2 downto 0) => Controller_ALU_Control(2 downto 0),
      Branch => Controller_Branch,
      CPU_MIO => NLW_Controller_CPU_MIO_UNCONNECTED,
      Fun3(2 downto 0) => xlslice_0_Dout(2 downto 0),
      Fun7 => inst_30_Dout,
      ImmSel(1 downto 0) => Controller_ImmSel(1 downto 0),
      Jump => Controller_Jump,
      MIO_ready => '0',
      MemRW => MemRW,
      MemtoReg(1 downto 0) => Controller_MemtoReg(1 downto 0),
      OPcode(4 downto 0) => xlslice_1_Dout(4 downto 0),
      RegWrite => Controller_RegWrite
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
datapath: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0
     port map (
      ALUSrc_B => Controller_ALUSrc_B,
      ALU_operation(2 downto 0) => Controller_ALU_Control(2 downto 0),
      ALU_out(31 downto 0) => ALU_out(31 downto 0),
      Branch(0) => Controller_Branch,
      Data_in(31 downto 0) => Data_in(31 downto 0),
      Data_out(31 downto 0) => Data_out(31 downto 0),
      ImmSel(1 downto 0) => Controller_ImmSel(1 downto 0),
      Jump => Controller_Jump,
      MemtoReg(1 downto 0) => Controller_MemtoReg(1 downto 0),
      PC_out(31 downto 0) => PC_out(31 downto 0),
      RegWrite => Controller_RegWrite,
      clk => clk,
      inst_field(31 downto 0) => inst_in(31 downto 0),
      rst => rst
    );
inst14_12: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0
     port map (
      Din(31 downto 15) => B"00000000000000000",
      Din(14 downto 12) => inst_in(14 downto 12),
      Din(11 downto 0) => B"000000000000",
      Dout(2 downto 0) => xlslice_0_Dout(2 downto 0)
    );
inst6_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0
     port map (
      Din(31 downto 7) => B"0000000000000000000000000",
      Din(6 downto 2) => inst_in(6 downto 2),
      Din(1 downto 0) => B"00",
      Dout(4 downto 0) => xlslice_1_Dout(4 downto 0)
    );
inst_30: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0
     port map (
      Din(31) => '0',
      Din(30) => inst_in(30),
      Din(29 downto 0) => B"000000000000000000000000000000",
      Dout(0) => inst_30_Dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper is
  port (
    CPU_MIO : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_MSCPU_i_CPU_MIO_UNCONNECTED : STD_LOGIC;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of MSCPU_i : label is "MSCPU.hwdef";
begin
  CPU_MIO <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MSCPU_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU
     port map (
      ALU_out(31 downto 0) => ALU_out(31 downto 0),
      CPU_MIO => NLW_MSCPU_i_CPU_MIO_UNCONNECTED,
      Data_in(31 downto 0) => Data_in(31 downto 0),
      Data_out(31 downto 0) => Data_out(31 downto 0),
      MIO_ready => '0',
      MemRW => MemRW,
      PC_out(31 downto 0) => PC_out(31 downto 0),
      clk => clk,
      inst_in(31 downto 0) => inst_in(31 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CPU_MIO : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "simCPU_MCPU_0_0,MCPU,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MCPU,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN simCPU_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper
     port map (
      ALU_out(31 downto 0) => ALU_out(31 downto 0),
      CPU_MIO => CPU_MIO,
      Data_in(31 downto 0) => Data_in(31 downto 0),
      Data_out(31 downto 0) => Data_out(31 downto 0),
      MIO_ready => MIO_ready,
      MemRW => MemRW,
      PC_out(31 downto 0) => PC_out(31 downto 0),
      clk => clk,
      inst_in(31 downto 0) => inst_in(31 downto 0),
      rst => rst
    );
end STRUCTURE;
