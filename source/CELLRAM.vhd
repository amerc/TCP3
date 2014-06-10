--  Z:\USERS\YOU\STATECADFSM\CELLRAM.vhd
--  VHDL code created by Xilinx's StateCAD 10.1
--  Fri Jun 06 15:22:06 2014

--  This VHDL code (for use with Xilinx XST) was generated using: 
--  one-hot state assignment with boolean code format.
--  Minimization is enabled,  implied else is disabled, 
--  and outputs are speed optimized.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SHELL_CELLRAM IS
	PORT (CLK,ReadMem,RESET,WriteMem: IN std_logic;
		ADR0,ADR1,ADR2,ADR3,ADR4,ADR5,ADR6,ADR7,ADR8,ADR9,ADR10,ADR11,ADR12,ADR13,
			ADR14,ADR15,ADR16,ADR17,ADR18,ADR19,ADR20,ADR21,ADR22,ADV,CE,CRE,MemIDLE,OE,
			WAIT_dat_strb,WE : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF SHELL_CELLRAM IS
--	State variables for machine sreg
	SIGNAL INIT, next_INIT, ReadMemory, next_ReadMemory, ReadOp, next_ReadOp, 
		Ready, next_Ready, SetBCR, next_SetBCR, STATE0, next_STATE0, STATE1, 
		next_STATE1, STATE2, next_STATE2, STATE3, next_STATE3, STATE4, next_STATE4, 
		STATE5, next_STATE5, STATE6, next_STATE6, STATE7, next_STATE7, STATE8, 
		next_STATE8, STATE9, next_STATE9, STATE10, next_STATE10, STATE11, 
		next_STATE11, STATE12, next_STATE12, STATE13, next_STATE13, STATE14, 
		next_STATE14, STATE15, next_STATE15, STATE16, next_STATE16, STATE17, 
		next_STATE17, WrMem, next_WrMem : std_logic;
	SIGNAL next_ADR0,next_ADR1,next_ADR2,next_ADR3,next_ADR4,next_ADR5,next_ADR6
		,next_ADR7,next_ADR8,next_ADR9,next_ADR10,next_ADR11,next_ADR12,next_ADR13,
		next_ADR14,next_ADR15,next_ADR16,next_ADR17,next_ADR18,next_ADR19,next_ADR20,
		next_ADR21,next_ADR22,next_ADV,next_CE,next_CRE,next_MemIDLE,next_OE,
		next_WAIT_dat_strb,next_WE : std_logic;
	SIGNAL ADR : std_logic_vector (22 DOWNTO 0);
BEGIN
	PROCESS (CLK, next_INIT, next_ReadMemory, next_ReadOp, next_Ready, 
		next_SetBCR, next_STATE0, next_STATE1, next_STATE2, next_STATE3, next_STATE4,
		 next_STATE5, next_STATE6, next_STATE7, next_STATE8, next_STATE9, 
		next_STATE10, next_STATE11, next_STATE12, next_STATE13, next_STATE14, 
		next_STATE15, next_STATE16, next_STATE17, next_WrMem, next_ADV, next_CE, 
		next_CRE, next_MemIDLE, next_OE, next_WAIT_dat_strb, next_WE, next_ADR22, 
		next_ADR21, next_ADR20, next_ADR19, next_ADR18, next_ADR17, next_ADR16, 
		next_ADR15, next_ADR14, next_ADR13, next_ADR12, next_ADR11, next_ADR10, 
		next_ADR9, next_ADR8, next_ADR7, next_ADR6, next_ADR5, next_ADR4, next_ADR3, 
		next_ADR2, next_ADR1, next_ADR0)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			INIT <= next_INIT;
			ReadMemory <= next_ReadMemory;
			ReadOp <= next_ReadOp;
			Ready <= next_Ready;
			SetBCR <= next_SetBCR;
			STATE0 <= next_STATE0;
			STATE1 <= next_STATE1;
			STATE2 <= next_STATE2;
			STATE3 <= next_STATE3;
			STATE4 <= next_STATE4;
			STATE5 <= next_STATE5;
			STATE6 <= next_STATE6;
			STATE7 <= next_STATE7;
			STATE8 <= next_STATE8;
			STATE9 <= next_STATE9;
			STATE10 <= next_STATE10;
			STATE11 <= next_STATE11;
			STATE12 <= next_STATE12;
			STATE13 <= next_STATE13;
			STATE14 <= next_STATE14;
			STATE15 <= next_STATE15;
			STATE16 <= next_STATE16;
			STATE17 <= next_STATE17;
			WrMem <= next_WrMem;
			ADV <= next_ADV;
			CE <= next_CE;
			CRE <= next_CRE;
			MemIDLE <= next_MemIDLE;
			OE <= next_OE;
			WAIT_dat_strb <= next_WAIT_dat_strb;
			WE <= next_WE;
			ADR22 <= next_ADR22;
			ADR21 <= next_ADR21;
			ADR20 <= next_ADR20;
			ADR19 <= next_ADR19;
			ADR18 <= next_ADR18;
			ADR17 <= next_ADR17;
			ADR16 <= next_ADR16;
			ADR15 <= next_ADR15;
			ADR14 <= next_ADR14;
			ADR13 <= next_ADR13;
			ADR12 <= next_ADR12;
			ADR11 <= next_ADR11;
			ADR10 <= next_ADR10;
			ADR9 <= next_ADR9;
			ADR8 <= next_ADR8;
			ADR7 <= next_ADR7;
			ADR6 <= next_ADR6;
			ADR5 <= next_ADR5;
			ADR4 <= next_ADR4;
			ADR3 <= next_ADR3;
			ADR2 <= next_ADR2;
			ADR1 <= next_ADR1;
			ADR0 <= next_ADR0;
		END IF;
	END PROCESS;

	PROCESS (INIT,ReadMem,ReadMemory,ReadOp,Ready,RESET,SetBCR,STATE0,STATE1,
		STATE2,STATE3,STATE4,STATE5,STATE6,STATE7,STATE8,STATE9,STATE10,STATE11,
		STATE12,STATE13,STATE14,STATE15,STATE16,STATE17,WriteMem,WrMem,ADR)
	BEGIN

		IF (( RESET='1' )) THEN next_INIT<='1';
		ELSE next_INIT<='0';
		END IF;

		IF (( RESET='0' AND ReadMem='1' AND WriteMem='0' AND  (Ready='1'))) THEN 
			next_ReadMemory<='1';
		ELSE next_ReadMemory<='0';
		END IF;

		IF (( RESET='0' AND  (STATE4='1'))) THEN next_ReadOp<='1';
		ELSE next_ReadOp<='0';
		END IF;

		IF (( RESET='0' AND  (ReadOp='1')) OR ( ReadMem='1' AND WriteMem='1' AND 
			RESET='0' AND  (Ready='1')) OR ( WriteMem='0' AND ReadMem='0' AND RESET='0' 
			AND  (Ready='1')) OR ( RESET='0' AND  (STATE12='1'))) THEN next_Ready<='1';
		ELSE next_Ready<='0';
		END IF;

		IF (( RESET='0' AND  (INIT='1'))) THEN next_SetBCR<='1';
		ELSE next_SetBCR<='0';
		END IF;

		IF (( RESET='0' AND  (STATE2='1'))) THEN next_STATE0<='1';
		ELSE next_STATE0<='0';
		END IF;

		IF (( RESET='0' AND  (STATE0='1'))) THEN next_STATE1<='1';
		ELSE next_STATE1<='0';
		END IF;

		IF (( RESET='0' AND  (SetBCR='1'))) THEN next_STATE2<='1';
		ELSE next_STATE2<='0';
		END IF;

		IF (( RESET='0' AND  (STATE1='1'))) THEN next_STATE3<='1';
		ELSE next_STATE3<='0';
		END IF;

		IF (( RESET='0' AND  (STATE3='1'))) THEN next_STATE4<='1';
		ELSE next_STATE4<='0';
		END IF;

		IF (( RESET='0' AND  (ReadMemory='1'))) THEN next_STATE5<='1';
		ELSE next_STATE5<='0';
		END IF;

		IF (( RESET='0' AND  (WrMem='1'))) THEN next_STATE6<='1';
		ELSE next_STATE6<='0';
		END IF;

		IF (( RESET='0' AND  (STATE5='1'))) THEN next_STATE7<='1';
		ELSE next_STATE7<='0';
		END IF;

		IF (( RESET='0' AND  (STATE7='1'))) THEN next_STATE8<='1';
		ELSE next_STATE8<='0';
		END IF;

		IF (( RESET='0' AND  (STATE8='1'))) THEN next_STATE9<='1';
		ELSE next_STATE9<='0';
		END IF;

		IF (( RESET='0' AND  (STATE9='1'))) THEN next_STATE10<='1';
		ELSE next_STATE10<='0';
		END IF;

		IF (( RESET='0' AND  (STATE10='1'))) THEN next_STATE11<='1';
		ELSE next_STATE11<='0';
		END IF;

		IF (( RESET='0' AND  (STATE11='1')) OR ( RESET='0' AND  (STATE17='1'))) 
			THEN next_STATE12<='1';
		ELSE next_STATE12<='0';
		END IF;

		IF (( RESET='0' AND  (STATE6='1'))) THEN next_STATE13<='1';
		ELSE next_STATE13<='0';
		END IF;

		IF (( RESET='0' AND  (STATE13='1'))) THEN next_STATE14<='1';
		ELSE next_STATE14<='0';
		END IF;

		IF (( RESET='0' AND  (STATE14='1'))) THEN next_STATE15<='1';
		ELSE next_STATE15<='0';
		END IF;

		IF (( RESET='0' AND  (STATE15='1'))) THEN next_STATE16<='1';
		ELSE next_STATE16<='0';
		END IF;

		IF (( RESET='0' AND  (STATE16='1'))) THEN next_STATE17<='1';
		ELSE next_STATE17<='0';
		END IF;

		IF (( RESET='0' AND ReadMem='0' AND WriteMem='1' AND  (Ready='1'))) THEN 
			next_WrMem<='1';
		ELSE next_WrMem<='0';
		END IF;


		ADR<= ( ((  std_logic_vector'( RESET, RESET, RESET, RESET, RESET, RESET, 
			RESET, RESET, RESET, RESET, RESET, RESET, RESET, RESET, RESET, RESET, RESET, 
			RESET, RESET, RESET, RESET, RESET, RESET)) ) AND  (std_logic_vector'(
			"00001000001110100011001") ) ) OR  ((  std_logic_vector'( ReadMemory, 
			ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, 
			ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, 
			ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, ReadMemory, 
			ReadMemory, ReadMemory, ReadMemory, ReadMemory)) AND  ((  std_logic_vector'( 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET)) ) AND  (std_logic_vector'("00000000000000000000000") )
			 ) OR  ((  std_logic_vector'( ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp,
			 ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, 
			ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp, ReadOp)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)AND  std_logic_vector'( NOT ReadMem, 
			NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem,
			 NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem
			, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT 
			ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem)AND  
			std_logic_vector'( WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem
			, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, 
			WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, 
			WriteMem, WriteMem, WriteMem)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)AND  std_logic_vector'( ReadMem, 
			ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, 
			ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, 
			ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem)AND  std_logic_vector'( 
			NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready
			, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready, Ready)) AND  ((  
			std_logic_vector'( NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, 
			NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem, NOT 
			WriteMem, NOT WriteMem, NOT WriteMem, NOT WriteMem)AND  std_logic_vector'( 
			NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem,
			 NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem
			, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT 
			ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem, NOT ReadMem)AND 
			 std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET)) OR (  std_logic_vector'( ReadMem
			, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, 
			ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, 
			ReadMem, ReadMem, ReadMem, ReadMem, ReadMem, ReadMem)AND  std_logic_vector'( 
			WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, 
			WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, 
			WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, WriteMem, 
			WriteMem, WriteMem)AND  std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (
			std_logic_vector'("00000000000000000000000") ) ) OR  ((  std_logic_vector'( 
			INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT,
			 INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00001000001110100011001") ) ) OR  ((  std_logic_vector'( SetBCR, SetBCR, 
			SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, 
			SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, SetBCR, 
			SetBCR, SetBCR, SetBCR)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, 
			STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, 
			STATE0, STATE0, STATE0, STATE0, STATE0, STATE0, STATE0)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE1, STATE1, 
			STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, 
			STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, STATE1, 
			STATE1, STATE1, STATE1)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, 
			STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, 
			STATE2, STATE2, STATE2, STATE2, STATE2, STATE2, STATE2)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE3, STATE3, 
			STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, 
			STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, STATE3, 
			STATE3, STATE3, STATE3)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, 
			STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, 
			STATE4, STATE4, STATE4, STATE4, STATE4, STATE4, STATE4)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE5, STATE5, 
			STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, 
			STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, STATE5, 
			STATE5, STATE5, STATE5)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, 
			STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, 
			STATE6, STATE6, STATE6, STATE6, STATE6, STATE6, STATE6)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE7, STATE7, 
			STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, 
			STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, STATE7, 
			STATE7, STATE7, STATE7)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, 
			STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, 
			STATE8, STATE8, STATE8, STATE8, STATE8, STATE8, STATE8)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE9, STATE9, 
			STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, 
			STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, STATE9, 
			STATE9, STATE9, STATE9)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, 
			NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET))
			 ) AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, 
			STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, 
			STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, STATE10, 
			STATE10)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (
			std_logic_vector'("00000000000000000000000") ) ) OR  ((  std_logic_vector'( 
			STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, 
			STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, 
			STATE11, STATE11, STATE11, STATE11, STATE11, STATE11, STATE11)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE12, STATE12, 
			STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, 
			STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, STATE12, 
			STATE12, STATE12, STATE12, STATE12, STATE12)) AND  ((  std_logic_vector'( NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET)) ) AND  (std_logic_vector'("00000000000000000000000") ) ) 
			OR  ((  std_logic_vector'( STATE13, STATE13, STATE13, STATE13, STATE13, 
			STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, 
			STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, STATE13, 
			STATE13, STATE13)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET)) ) 
			AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, 
			STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, 
			STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, STATE14, 
			STATE14)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (
			std_logic_vector'("00000000000000000000000") ) ) OR  ((  std_logic_vector'( 
			STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, 
			STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, 
			STATE15, STATE15, STATE15, STATE15, STATE15, STATE15, STATE15)) AND  ((  
			std_logic_vector'( NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET)) ) AND  (std_logic_vector'(
			"00000000000000000000000") ) ) OR  ((  std_logic_vector'( STATE16, STATE16, 
			STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, 
			STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, STATE16, 
			STATE16, STATE16, STATE16, STATE16, STATE16)) AND  ((  std_logic_vector'( NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT
			 RESET, NOT RESET)) ) AND  (std_logic_vector'("00000000000000000000000") ) ) 
			OR  ((  std_logic_vector'( STATE17, STATE17, STATE17, STATE17, STATE17, 
			STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, 
			STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, STATE17, 
			STATE17, STATE17)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT 
			RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET)) ) 
			AND  (std_logic_vector'("00000000000000000000000") ) ) OR  ((  
			std_logic_vector'( WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, 
			WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, WrMem, 
			WrMem, WrMem, WrMem, WrMem)) AND  ((  std_logic_vector'( NOT RESET, NOT RESET
			, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET
			, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET
			, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET, NOT RESET
			)) ) AND  (std_logic_vector'("00000000000000000000000") ) );

		IF (( RESET='0' AND  (ReadOp='1')) OR ( ReadMem='1' AND WriteMem='1' AND 
			RESET='0' AND  (Ready='1')) OR ( WriteMem='0' AND ReadMem='0' AND RESET='0' 
			AND  (Ready='1')) OR ( RESET='0' AND  (STATE12='1')) OR ( RESET='0' AND  (
			INIT='1')) OR ( RESET='0' AND  (STATE2='1')) OR ( RESET='0' AND  (STATE0='1')
			) OR ( RESET='0' AND  (SetBCR='1')) OR ( RESET='0' AND  (STATE1='1')) OR ( 
			RESET='0' AND  (STATE3='1')) OR ( RESET='0' AND  (ReadMemory='1')) OR ( 
			RESET='0' AND  (WrMem='1')) OR ( RESET='0' AND  (STATE5='1')) OR ( RESET='0' 
			AND  (STATE7='1')) OR ( RESET='0' AND  (STATE8='1')) OR ( RESET='0' AND  (
			STATE9='1')) OR ( RESET='0' AND  (STATE10='1')) OR ( RESET='0' AND  (
			STATE11='1')) OR ( RESET='0' AND  (STATE17='1')) OR ( RESET='0' AND  (
			STATE6='1')) OR ( RESET='0' AND  (STATE13='1')) OR ( RESET='0' AND  (
			STATE14='1')) OR ( RESET='0' AND  (STATE15='1')) OR ( RESET='0' AND  (
			STATE16='1'))) THEN next_ADV<='1';
		ELSE next_ADV<='0';
		END IF;

		IF (( RESET='0' AND  (ReadOp='1')) OR ( RESET='0' AND  (STATE12='1')) OR ( 
			RESET='0' AND  (STATE3='1')) OR ( RESET='0' AND  (Ready='1'))) THEN 
			next_CE<='1';
		ELSE next_CE<='0';
		END IF;

		IF (( RESET='1' ) OR (  (INIT='1'))) THEN next_CRE<='1';
		ELSE next_CRE<='0';
		END IF;

		IF (( RESET='0' AND  (ReadOp='1')) OR ( ReadMem='1' AND WriteMem='1' AND 
			RESET='0' AND  (Ready='1')) OR ( WriteMem='0' AND ReadMem='0' AND RESET='0' 
			AND  (Ready='1')) OR ( RESET='0' AND  (STATE12='1'))) THEN next_MemIDLE<='1';
		ELSE next_MemIDLE<='0';
		END IF;

		IF (( RESET='0' AND ReadMem='1' AND WriteMem='0' AND  (Ready='1')) OR ( 
			RESET='0' AND  (ReadMemory='1'))) THEN next_OE<='1';
		ELSE next_OE<='0';
		END IF;

		IF (( RESET='0' AND  (STATE1='1')) OR ( RESET='0' AND  (STATE8='1')) OR ( 
			RESET='0' AND  (STATE9='1')) OR ( RESET='0' AND  (STATE10='1')) OR ( 
			RESET='0' AND  (STATE11='1')) OR ( RESET='0' AND  (STATE17='1')) OR ( 
			RESET='0' AND  (STATE14='1')) OR ( RESET='0' AND  (STATE15='1')) OR ( 
			RESET='0' AND  (STATE16='1')) OR ( RESET='0' AND ReadMem='0' AND WriteMem='1'
			 AND  (Ready='1'))) THEN next_WAIT_dat_strb<='1';
		ELSE next_WAIT_dat_strb<='0';
		END IF;

		IF (( RESET='0' AND  (ReadOp='1')) OR ( ReadMem='1' AND RESET='0' AND  (
			Ready='1')) OR ( WriteMem='0' AND RESET='0' AND  (Ready='1')) OR ( RESET='0' 
			AND  (STATE12='1')) OR ( RESET='0' AND  (INIT='1')) OR ( RESET='0' AND  (
			STATE2='1')) OR ( RESET='0' AND  (STATE0='1')) OR ( RESET='0' AND  (
			SetBCR='1')) OR ( RESET='0' AND  (STATE1='1')) OR ( RESET='0' AND  (
			STATE3='1')) OR ( RESET='0' AND  (ReadMemory='1')) OR ( RESET='0' AND  (
			WrMem='1'))) THEN next_WE<='1';
		ELSE next_WE<='0';
		END IF;

		next_ADR22 <= ADR(22);
		next_ADR21 <= ADR(21);
		next_ADR20 <= ADR(20);
		next_ADR19 <= ADR(19);
		next_ADR18 <= ADR(18);
		next_ADR17 <= ADR(17);
		next_ADR16 <= ADR(16);
		next_ADR15 <= ADR(15);
		next_ADR14 <= ADR(14);
		next_ADR13 <= ADR(13);
		next_ADR12 <= ADR(12);
		next_ADR11 <= ADR(11);
		next_ADR10 <= ADR(10);
		next_ADR9 <= ADR(9);
		next_ADR8 <= ADR(8);
		next_ADR7 <= ADR(7);
		next_ADR6 <= ADR(6);
		next_ADR5 <= ADR(5);
		next_ADR4 <= ADR(4);
		next_ADR3 <= ADR(3);
		next_ADR2 <= ADR(2);
		next_ADR1 <= ADR(1);
		next_ADR0 <= ADR(0);
	END PROCESS;
END BEHAVIOR;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CELLRAM IS
	PORT (ADR : OUT std_logic_vector (22 DOWNTO 0);
		CLK,ReadMem,RESET,WriteMem: IN std_logic;
		ADV,CE,CRE,MemIDLE,OE,WAIT_dat_strb,WE : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF CELLRAM IS
	COMPONENT SHELL_CELLRAM
		PORT (CLK,ReadMem,RESET,WriteMem: IN std_logic;
			ADR0,ADR1,ADR2,ADR3,ADR4,ADR5,ADR6,ADR7,ADR8,ADR9,ADR10,ADR11,ADR12,ADR13,
				ADR14,ADR15,ADR16,ADR17,ADR18,ADR19,ADR20,ADR21,ADR22,ADV,CE,CRE,MemIDLE,OE,
				WAIT_dat_strb,WE : OUT std_logic);
	END COMPONENT;
BEGIN
	SHELL1_CELLRAM : SHELL_CELLRAM PORT MAP (CLK=>CLK,ReadMem=>ReadMem,RESET=>
		RESET,WriteMem=>WriteMem,ADR0=>ADR(0),ADR1=>ADR(1),ADR2=>ADR(2),ADR3=>ADR(3),
		ADR4=>ADR(4),ADR5=>ADR(5),ADR6=>ADR(6),ADR7=>ADR(7),ADR8=>ADR(8),ADR9=>ADR(9)
		,ADR10=>ADR(10),ADR11=>ADR(11),ADR12=>ADR(12),ADR13=>ADR(13),ADR14=>ADR(14),
		ADR15=>ADR(15),ADR16=>ADR(16),ADR17=>ADR(17),ADR18=>ADR(18),ADR19=>ADR(19),
		ADR20=>ADR(20),ADR21=>ADR(21),ADR22=>ADR(22),ADV=>ADV,CE=>CE,CRE=>CRE,MemIDLE
		=>MemIDLE,OE=>OE,WAIT_dat_strb=>WAIT_dat_strb,WE=>WE);
END BEHAVIOR;
