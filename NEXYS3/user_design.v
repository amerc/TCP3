//////////////////////////////////////////////////////////////////////////////
//name : user_design
//input : input_switches:16
//input : input_buttons:16
//input : input_socket:16
//input : input_rs232_rx:16
//output : output_rs232_tx:16
//output : output_leds:16
//output : output_socket:16
//source_file : ../source/user_design.c
///===========
///
///Created by C2CHIP

//////////////////////////////////////////////////////////////////////////////
// Register Allocation
// ===================
//         Register                 Name                   Size          
//            0             put_socket return address            2            
//            1                  variable i                 2            
//            2             stdout_put_char return address            2            
//            3                  variable i                 2            
//            4             print_string return address            2            
//            5                    array                    2            
//            6                  variable i                 2            
//            7             print_udecimal return address            2            
//            8              variable udecimal              2            
//            9                variable digit               2            
//            10            variable significant            2            
//            11            print_decimal return address            2            
//            12              variable decimal              2            
//            13            variable socket_high            2            
//            14            variable socket_data            2            
//            15            socket_put_char return address            2            
//            16                 variable x                 2            
//            17            socket_flush return address            2            
//            18            socket_put_string return address            2            
//            19                   array                    2            
//            20                 variable i                 2            
//            21            socket_put_decimal return address            2            
//            22               variable value               2            
//            23              variable digit_0              2            
//            24              variable digit_1              2            
//            25              variable digit_2              2            
//            26              variable digit_3              2            
//            27              variable digit_4              2            
//            28            variable significant            2            
//            29            HTTP_Not_Found return address            2            
//            30            variable header_length            2            
//            31                   array                    2            
//            32            HTTP_OK return address            2            
//            33                   array                    2            
//            34            variable header_length            2            
//            35            variable body_length            2            
//            36              variable length               2            
//            37               variable index               2            
//            38            variable packet_count            2            
//            39                   array                    2            
//            40                   array                    2            
//            41            HTTP_OK2 return address            2            
//            42                   array                    2            
//            43                   array                    2            
//            44            variable body_length            2            
//            45            variable header_length            2            
//            46              variable length               2            
//            47               variable index               2            
//            48            variable packet_count            2            
//            49                   array                    2            
//            50            find return address             2            
//            51            variable find return value            2            
//            52                   array                    2            
//            53              variable search               2            
//            54               variable start               2            
//            55                variable end                2            
//            56               variable value               2            
//            57                   array                    2            
//            58                   array                    2            
//            59            user_design return address            2            
//            60                   array                    2            
//            61              variable length               2            
//            62                 variable i                 2            
//            63               variable index               2            
//            64                   array                    2            
//            65               variable word                2            
//            66             variable switches              2            
//            67              variable buttons              2            
//            68               variable leds                2            
//            69               variable start               2            
//            70                variable end                2            
//            71                   array                    2            
//            72                   array                    2            
//            73                   array                    2            
//            74                   array                    2            
//            75                   array                    2            
//            76             temporary_register             2            
//            77             temporary_register             2            
//            78             temporary_register             2            
//            79             temporary_register             4            
//            80             temporary_register             2            
//            81             temporary_register            252           
//            82             temporary_register            230           
//            83             temporary_register             10           
//            84             temporary_register             78           
//            85             temporary_register             86           
//            86             temporary_register             2            
//            87             temporary_register            2920          
//            88             temporary_register            1558          
//            89             temporary_register            1248          
//            90             temporary_register             20           
//            91             temporary_register            258           
module user_design(input_switches,input_buttons,input_socket,input_rs232_rx,input_switches_stb,input_buttons_stb,input_socket_stb,input_rs232_rx_stb,output_rs232_tx_ack,output_leds_ack,output_socket_ack,clk,rst,output_rs232_tx,output_leds,output_socket,output_rs232_tx_stb,output_leds_stb,output_socket_stb,input_switches_ack,input_buttons_ack,input_socket_ack,input_rs232_rx_ack);
  integer file_count;
  real fp_value;
  input [15:0] input_switches;
  input [15:0] input_buttons;
  input [15:0] input_socket;
  input [15:0] input_rs232_rx;
  input input_switches_stb;
  input input_buttons_stb;
  input input_socket_stb;
  input input_rs232_rx_stb;
  input output_rs232_tx_ack;
  input output_leds_ack;
  input output_socket_ack;
  input clk;
  input rst;
  output [15:0] output_rs232_tx;
  output [15:0] output_leds;
  output [15:0] output_socket;
  output output_rs232_tx_stb;
  output output_leds_stb;
  output output_socket_stb;
  output input_switches_ack;
  output input_buttons_ack;
  output input_socket_ack;
  output input_rs232_rx_ack;
  reg [15:0] timer;
  reg timer_enable;
  reg stage_0_enable;
  reg stage_1_enable;
  reg stage_2_enable;
  reg [11:0] program_counter;
  reg [11:0] program_counter_0;
  reg [51:0] instruction_0;
  reg [5:0] opcode_0;
  reg [6:0] dest_0;
  reg [6:0] src_0;
  reg [6:0] srcb_0;
  reg [31:0] literal_0;
  reg [11:0] program_counter_1;
  reg [5:0] opcode_1;
  reg [6:0] dest_1;
  reg [31:0] register_1;
  reg [31:0] registerb_1;
  reg [31:0] literal_1;
  reg [6:0] dest_2;
  reg [31:0] result_2;
  reg write_enable_2;
  reg [15:0] address_2;
  reg [15:0] data_out_2;
  reg [15:0] data_in_2;
  reg memory_enable_2;
  reg [15:0] address_4;
  reg [31:0] data_out_4;
  reg [31:0] data_in_4;
  reg memory_enable_4;
  reg [15:0] s_output_rs232_tx_stb;
  reg [15:0] s_output_leds_stb;
  reg [15:0] s_output_socket_stb;
  reg [15:0] s_output_rs232_tx;
  reg [15:0] s_output_leds;
  reg [15:0] s_output_socket;
  reg [15:0] s_input_switches_ack;
  reg [15:0] s_input_buttons_ack;
  reg [15:0] s_input_socket_ack;
  reg [15:0] s_input_rs232_rx_ack;
  reg [15:0] memory_2 [3350:0];
  reg [51:0] instructions [2314:0];
  reg [31:0] registers [91:0];

  //////////////////////////////////////////////////////////////////////////////
  // MEMORY INITIALIZATION                                                      
  //                                                                            
  // In order to reduce program size, array contents have been stored into      
  // memory at initialization. In an FPGA, this will result in the memory being 
  // initialized when the FPGA configures.                                      
  // Memory will not be re-initialized at reset.                                
  // Dissable this behaviour using the no_initialize_memory switch              
  
  initial
  begin
    memory_2[4] = 72;
    memory_2[5] = 84;
    memory_2[6] = 84;
    memory_2[7] = 80;
    memory_2[8] = 47;
    memory_2[9] = 49;
    memory_2[10] = 46;
    memory_2[11] = 49;
    memory_2[12] = 32;
    memory_2[13] = 52;
    memory_2[14] = 48;
    memory_2[15] = 52;
    memory_2[16] = 32;
    memory_2[17] = 78;
    memory_2[18] = 111;
    memory_2[19] = 116;
    memory_2[20] = 32;
    memory_2[21] = 70;
    memory_2[22] = 111;
    memory_2[23] = 117;
    memory_2[24] = 110;
    memory_2[25] = 100;
    memory_2[26] = 13;
    memory_2[27] = 10;
    memory_2[28] = 68;
    memory_2[29] = 97;
    memory_2[30] = 116;
    memory_2[31] = 101;
    memory_2[32] = 58;
    memory_2[33] = 32;
    memory_2[34] = 84;
    memory_2[35] = 104;
    memory_2[36] = 117;
    memory_2[37] = 32;
    memory_2[38] = 79;
    memory_2[39] = 99;
    memory_2[40] = 116;
    memory_2[41] = 32;
    memory_2[42] = 51;
    memory_2[43] = 49;
    memory_2[44] = 32;
    memory_2[45] = 49;
    memory_2[46] = 57;
    memory_2[47] = 58;
    memory_2[48] = 49;
    memory_2[49] = 54;
    memory_2[50] = 58;
    memory_2[51] = 48;
    memory_2[52] = 48;
    memory_2[53] = 32;
    memory_2[54] = 50;
    memory_2[55] = 48;
    memory_2[56] = 49;
    memory_2[57] = 51;
    memory_2[58] = 13;
    memory_2[59] = 10;
    memory_2[60] = 83;
    memory_2[61] = 101;
    memory_2[62] = 114;
    memory_2[63] = 118;
    memory_2[64] = 101;
    memory_2[65] = 114;
    memory_2[66] = 58;
    memory_2[67] = 32;
    memory_2[68] = 99;
    memory_2[69] = 104;
    memory_2[70] = 105;
    memory_2[71] = 112;
    memory_2[72] = 115;
    memory_2[73] = 45;
    memory_2[74] = 119;
    memory_2[75] = 101;
    memory_2[76] = 98;
    memory_2[77] = 47;
    memory_2[78] = 48;
    memory_2[79] = 46;
    memory_2[80] = 48;
    memory_2[81] = 13;
    memory_2[82] = 10;
    memory_2[83] = 67;
    memory_2[84] = 111;
    memory_2[85] = 110;
    memory_2[86] = 116;
    memory_2[87] = 101;
    memory_2[88] = 110;
    memory_2[89] = 116;
    memory_2[90] = 45;
    memory_2[91] = 84;
    memory_2[92] = 121;
    memory_2[93] = 112;
    memory_2[94] = 101;
    memory_2[95] = 58;
    memory_2[96] = 32;
    memory_2[97] = 116;
    memory_2[98] = 101;
    memory_2[99] = 120;
    memory_2[100] = 116;
    memory_2[101] = 47;
    memory_2[102] = 104;
    memory_2[103] = 116;
    memory_2[104] = 109;
    memory_2[105] = 108;
    memory_2[106] = 13;
    memory_2[107] = 10;
    memory_2[108] = 67;
    memory_2[109] = 111;
    memory_2[110] = 110;
    memory_2[111] = 116;
    memory_2[112] = 101;
    memory_2[113] = 110;
    memory_2[114] = 116;
    memory_2[115] = 45;
    memory_2[116] = 76;
    memory_2[117] = 101;
    memory_2[118] = 110;
    memory_2[119] = 103;
    memory_2[120] = 116;
    memory_2[121] = 104;
    memory_2[122] = 58;
    memory_2[123] = 32;
    memory_2[124] = 48;
    memory_2[125] = 13;
    memory_2[126] = 10;
    memory_2[127] = 13;
    memory_2[128] = 10;
    memory_2[129] = 0;
    memory_2[132] = 72;
    memory_2[133] = 84;
    memory_2[134] = 84;
    memory_2[135] = 80;
    memory_2[136] = 47;
    memory_2[137] = 49;
    memory_2[138] = 46;
    memory_2[139] = 49;
    memory_2[140] = 32;
    memory_2[141] = 50;
    memory_2[142] = 48;
    memory_2[143] = 48;
    memory_2[144] = 32;
    memory_2[145] = 79;
    memory_2[146] = 75;
    memory_2[147] = 13;
    memory_2[148] = 10;
    memory_2[149] = 68;
    memory_2[150] = 97;
    memory_2[151] = 116;
    memory_2[152] = 101;
    memory_2[153] = 58;
    memory_2[154] = 32;
    memory_2[155] = 84;
    memory_2[156] = 104;
    memory_2[157] = 117;
    memory_2[158] = 32;
    memory_2[159] = 74;
    memory_2[160] = 117;
    memory_2[161] = 110;
    memory_2[162] = 101;
    memory_2[163] = 32;
    memory_2[164] = 49;
    memory_2[165] = 49;
    memory_2[166] = 32;
    memory_2[167] = 49;
    memory_2[168] = 57;
    memory_2[169] = 58;
    memory_2[170] = 49;
    memory_2[171] = 54;
    memory_2[172] = 58;
    memory_2[173] = 48;
    memory_2[174] = 48;
    memory_2[175] = 32;
    memory_2[176] = 50;
    memory_2[177] = 48;
    memory_2[178] = 49;
    memory_2[179] = 52;
    memory_2[180] = 13;
    memory_2[181] = 10;
    memory_2[182] = 83;
    memory_2[183] = 101;
    memory_2[184] = 114;
    memory_2[185] = 118;
    memory_2[186] = 101;
    memory_2[187] = 114;
    memory_2[188] = 58;
    memory_2[189] = 32;
    memory_2[190] = 99;
    memory_2[191] = 104;
    memory_2[192] = 105;
    memory_2[193] = 112;
    memory_2[194] = 115;
    memory_2[195] = 45;
    memory_2[196] = 119;
    memory_2[197] = 101;
    memory_2[198] = 98;
    memory_2[199] = 47;
    memory_2[200] = 48;
    memory_2[201] = 46;
    memory_2[202] = 48;
    memory_2[203] = 13;
    memory_2[204] = 10;
    memory_2[205] = 67;
    memory_2[206] = 111;
    memory_2[207] = 110;
    memory_2[208] = 116;
    memory_2[209] = 101;
    memory_2[210] = 110;
    memory_2[211] = 116;
    memory_2[212] = 45;
    memory_2[213] = 84;
    memory_2[214] = 121;
    memory_2[215] = 112;
    memory_2[216] = 101;
    memory_2[217] = 58;
    memory_2[218] = 32;
    memory_2[219] = 116;
    memory_2[220] = 101;
    memory_2[221] = 120;
    memory_2[222] = 116;
    memory_2[223] = 47;
    memory_2[224] = 104;
    memory_2[225] = 116;
    memory_2[226] = 109;
    memory_2[227] = 108;
    memory_2[228] = 13;
    memory_2[229] = 10;
    memory_2[230] = 67;
    memory_2[231] = 111;
    memory_2[232] = 110;
    memory_2[233] = 116;
    memory_2[234] = 101;
    memory_2[235] = 110;
    memory_2[236] = 116;
    memory_2[237] = 45;
    memory_2[238] = 76;
    memory_2[239] = 101;
    memory_2[240] = 110;
    memory_2[241] = 103;
    memory_2[242] = 116;
    memory_2[243] = 104;
    memory_2[244] = 58;
    memory_2[245] = 32;
    memory_2[246] = 0;
    memory_2[247] = 13;
    memory_2[248] = 10;
    memory_2[249] = 13;
    memory_2[250] = 10;
    memory_2[251] = 0;
    memory_2[256] = 13;
    memory_2[257] = 10;
    memory_2[258] = 13;
    memory_2[259] = 10;
    memory_2[260] = 0;
    memory_2[263] = 10;
    memory_2[264] = 0;
    memory_2[265] = 10;
    memory_2[266] = 0;
    memory_2[1737] = 60;
    memory_2[1738] = 104;
    memory_2[1739] = 116;
    memory_2[1740] = 109;
    memory_2[1741] = 108;
    memory_2[1742] = 62;
    memory_2[1743] = 60;
    memory_2[1744] = 104;
    memory_2[1745] = 101;
    memory_2[1746] = 97;
    memory_2[1747] = 100;
    memory_2[1748] = 62;
    memory_2[1749] = 60;
    memory_2[1750] = 116;
    memory_2[1751] = 105;
    memory_2[1752] = 116;
    memory_2[1753] = 108;
    memory_2[1754] = 101;
    memory_2[1755] = 62;
    memory_2[1756] = 83;
    memory_2[1757] = 101;
    memory_2[1758] = 114;
    memory_2[1759] = 118;
    memory_2[1760] = 105;
    memory_2[1761] = 99;
    memory_2[1762] = 101;
    memory_2[1763] = 32;
    memory_2[1764] = 87;
    memory_2[1765] = 101;
    memory_2[1766] = 98;
    memory_2[1767] = 32;
    memory_2[1768] = 109;
    memory_2[1769] = 117;
    memory_2[1770] = 108;
    memory_2[1771] = 116;
    memory_2[1772] = 105;
    memory_2[1773] = 109;
    memory_2[1774] = 38;
    memory_2[1775] = 101;
    memory_2[1776] = 97;
    memory_2[1777] = 99;
    memory_2[1778] = 117;
    memory_2[1779] = 116;
    memory_2[1780] = 101;
    memory_2[1781] = 59;
    memory_2[1782] = 100;
    memory_2[1783] = 105;
    memory_2[1784] = 97;
    memory_2[1785] = 44;
    memory_2[1786] = 32;
    memory_2[1787] = 67;
    memory_2[1788] = 104;
    memory_2[1789] = 105;
    memory_2[1790] = 112;
    memory_2[1791] = 115;
    memory_2[1792] = 45;
    memory_2[1793] = 50;
    memory_2[1794] = 46;
    memory_2[1795] = 48;
    memory_2[1796] = 32;
    memory_2[1797] = 78;
    memory_2[1798] = 101;
    memory_2[1799] = 120;
    memory_2[1800] = 121;
    memory_2[1801] = 115;
    memory_2[1802] = 51;
    memory_2[1803] = 32;
    memory_2[1804] = 46;
    memory_2[1805] = 46;
    memory_2[1806] = 46;
    memory_2[1807] = 60;
    memory_2[1808] = 47;
    memory_2[1809] = 116;
    memory_2[1810] = 105;
    memory_2[1811] = 116;
    memory_2[1812] = 108;
    memory_2[1813] = 101;
    memory_2[1814] = 62;
    memory_2[1815] = 60;
    memory_2[1816] = 47;
    memory_2[1817] = 104;
    memory_2[1818] = 101;
    memory_2[1819] = 97;
    memory_2[1820] = 100;
    memory_2[1821] = 62;
    memory_2[1822] = 60;
    memory_2[1823] = 98;
    memory_2[1824] = 111;
    memory_2[1825] = 100;
    memory_2[1826] = 121;
    memory_2[1827] = 62;
    memory_2[1828] = 60;
    memory_2[1829] = 104;
    memory_2[1830] = 49;
    memory_2[1831] = 62;
    memory_2[1832] = 83;
    memory_2[1833] = 101;
    memory_2[1834] = 114;
    memory_2[1835] = 118;
    memory_2[1836] = 105;
    memory_2[1837] = 99;
    memory_2[1838] = 101;
    memory_2[1839] = 32;
    memory_2[1840] = 87;
    memory_2[1841] = 101;
    memory_2[1842] = 98;
    memory_2[1843] = 32;
    memory_2[1844] = 109;
    memory_2[1845] = 117;
    memory_2[1846] = 108;
    memory_2[1847] = 116;
    memory_2[1848] = 105;
    memory_2[1849] = 109;
    memory_2[1850] = 38;
    memory_2[1851] = 101;
    memory_2[1852] = 97;
    memory_2[1853] = 99;
    memory_2[1854] = 117;
    memory_2[1855] = 116;
    memory_2[1856] = 101;
    memory_2[1857] = 59;
    memory_2[1858] = 100;
    memory_2[1859] = 105;
    memory_2[1860] = 97;
    memory_2[1861] = 32;
    memory_2[1862] = 115;
    memory_2[1863] = 117;
    memory_2[1864] = 114;
    memory_2[1865] = 32;
    memory_2[1866] = 108;
    memory_2[1867] = 97;
    memory_2[1868] = 32;
    memory_2[1869] = 99;
    memory_2[1870] = 97;
    memory_2[1871] = 114;
    memory_2[1872] = 116;
    memory_2[1873] = 101;
    memory_2[1874] = 32;
    memory_2[1875] = 78;
    memory_2[1876] = 101;
    memory_2[1877] = 120;
    memory_2[1878] = 121;
    memory_2[1879] = 115;
    memory_2[1880] = 51;
    memory_2[1881] = 32;
    memory_2[1882] = 60;
    memory_2[1883] = 47;
    memory_2[1884] = 104;
    memory_2[1885] = 49;
    memory_2[1886] = 62;
    memory_2[1887] = 60;
    memory_2[1888] = 105;
    memory_2[1889] = 109;
    memory_2[1890] = 103;
    memory_2[1891] = 32;
    memory_2[1892] = 115;
    memory_2[1893] = 114;
    memory_2[1894] = 99;
    memory_2[1895] = 61;
    memory_2[1896] = 34;
    memory_2[1897] = 100;
    memory_2[1898] = 97;
    memory_2[1899] = 116;
    memory_2[1900] = 97;
    memory_2[1901] = 58;
    memory_2[1902] = 105;
    memory_2[1903] = 109;
    memory_2[1904] = 97;
    memory_2[1905] = 103;
    memory_2[1906] = 101;
    memory_2[1907] = 47;
    memory_2[1908] = 103;
    memory_2[1909] = 105;
    memory_2[1910] = 102;
    memory_2[1911] = 59;
    memory_2[1912] = 98;
    memory_2[1913] = 97;
    memory_2[1914] = 115;
    memory_2[1915] = 101;
    memory_2[1916] = 54;
    memory_2[1917] = 52;
    memory_2[1918] = 44;
    memory_2[1919] = 82;
    memory_2[1920] = 48;
    memory_2[1921] = 108;
    memory_2[1922] = 71;
    memory_2[1923] = 79;
    memory_2[1924] = 68;
    memory_2[1925] = 108;
    memory_2[1926] = 104;
    memory_2[1927] = 70;
    memory_2[1928] = 65;
    memory_2[1929] = 65;
    memory_2[1930] = 100;
    memory_2[1931] = 65;
    memory_2[1932] = 77;
    memory_2[1933] = 73;
    memory_2[1934] = 71;
    memory_2[1935] = 65;
    memory_2[1936] = 65;
    memory_2[1937] = 65;
    memory_2[1938] = 65;
    memory_2[1939] = 65;
    memory_2[1940] = 73;
    memory_2[1941] = 65;
    memory_2[1942] = 65;
    memory_2[1943] = 65;
    memory_2[1944] = 73;
    memory_2[1945] = 67;
    memory_2[1946] = 65;
    memory_2[1947] = 65;
    memory_2[1948] = 73;
    memory_2[1949] = 67;
    memory_2[1950] = 65;
    memory_2[1951] = 47;
    memory_2[1952] = 47;
    memory_2[1953] = 43;
    memory_2[1954] = 65;
    memory_2[1955] = 65;
    memory_2[1956] = 80;
    memory_2[1957] = 43;
    memory_2[1958] = 65;
    memory_2[1959] = 103;
    memory_2[1960] = 80;
    memory_2[1961] = 47;
    memory_2[1962] = 47;
    memory_2[1963] = 47;
    memory_2[1964] = 47;
    memory_2[1965] = 47;
    memory_2[1966] = 47;
    memory_2[1967] = 47;
    memory_2[1968] = 121;
    memory_2[1969] = 72;
    memory_2[1970] = 43;
    memory_2[1971] = 71;
    memory_2[1972] = 107;
    memory_2[1973] = 78;
    memory_2[1974] = 121;
    memory_2[1975] = 90;
    memory_2[1976] = 87;
    memory_2[1977] = 70;
    memory_2[1978] = 48;
    memory_2[1979] = 90;
    memory_2[1980] = 87;
    memory_2[1981] = 81;
    memory_2[1982] = 103;
    memory_2[1983] = 100;
    memory_2[1984] = 50;
    memory_2[1985] = 108;
    memory_2[1986] = 48;
    memory_2[1987] = 97;
    memory_2[1988] = 67;
    memory_2[1989] = 66;
    memory_2[1990] = 72;
    memory_2[1991] = 83;
    memory_2[1992] = 85;
    memory_2[1993] = 49;
    memory_2[1994] = 81;
    memory_2[1995] = 73;
    memory_2[1996] = 71;
    memory_2[1997] = 57;
    memory_2[1998] = 117;
    memory_2[1999] = 73;
    memory_2[2000] = 71;
    memory_2[2001] = 69;
    memory_2[2002] = 103;
    memory_2[2003] = 84;
    memory_2[2004] = 87;
    memory_2[2005] = 70;
    memory_2[2006] = 106;
    memory_2[2007] = 65;
    memory_2[2008] = 67;
    memory_2[2009] = 72;
    memory_2[2010] = 53;
    memory_2[2011] = 66;
    memory_2[2012] = 65;
    memory_2[2013] = 69;
    memory_2[2014] = 75;
    memory_2[2015] = 65;
    memory_2[2016] = 65;
    memory_2[2017] = 99;
    memory_2[2018] = 65;
    memory_2[2019] = 76;
    memory_2[2020] = 65;
    memory_2[2021] = 65;
    memory_2[2022] = 65;
    memory_2[2023] = 65;
    memory_2[2024] = 65;
    memory_2[2025] = 65;
    memory_2[2026] = 85;
    memory_2[2027] = 65;
    memory_2[2028] = 66;
    memory_2[2029] = 48;
    memory_2[2030] = 65;
    memory_2[2031] = 65;
    memory_2[2032] = 65;
    memory_2[2033] = 79;
    memory_2[2034] = 100;
    memory_2[2035] = 71;
    memory_2[2036] = 71;
    memory_2[2037] = 114;
    memory_2[2038] = 99;
    memory_2[2039] = 78;
    memory_2[2040] = 108;
    memory_2[2041] = 66;
    memory_2[2042] = 73;
    memory_2[2043] = 65;
    memory_2[2044] = 83;
    memory_2[2045] = 112;
    memory_2[2046] = 90;
    memory_2[2047] = 68;
    memory_2[2048] = 77;
    memory_2[2049] = 73;
    memory_2[2050] = 119;
    memory_2[2051] = 79;
    memory_2[2052] = 55;
    memory_2[2053] = 49;
    memory_2[2054] = 66;
    memory_2[2055] = 111;
    memory_2[2056] = 119;
    memory_2[2057] = 50;
    memory_2[2058] = 99;
    memory_2[2059] = 74;
    memory_2[2060] = 119;
    memory_2[2061] = 72;
    memory_2[2062] = 71;
    memory_2[2063] = 115;
    memory_2[2064] = 106;
    memory_2[2065] = 69;
    memory_2[2066] = 69;
    memory_2[2067] = 119;
    memory_2[2068] = 90;
    memory_2[2069] = 81;
    memory_2[2070] = 84;
    memory_2[2071] = 111;
    memory_2[2072] = 77;
    memory_2[2073] = 121;
    memory_2[2074] = 104;
    memory_2[2075] = 89;
    memory_2[2076] = 56;
    memory_2[2077] = 99;
    memory_2[2078] = 48;
    memory_2[2079] = 90;
    memory_2[2080] = 106;
    memory_2[2081] = 100;
    memory_2[2082] = 120;
    memory_2[2083] = 66;
    memory_2[2084] = 43;
    memory_2[2085] = 50;
    memory_2[2086] = 79;
    memory_2[2087] = 119;
    memory_2[2088] = 97;
    memory_2[2089] = 107;
    memory_2[2090] = 68;
    memory_2[2091] = 116;
    memory_2[2092] = 66;
    memory_2[2093] = 71;
    memory_2[2094] = 71;
    memory_2[2095] = 107;
    memory_2[2096] = 54;
    memory_2[2097] = 76;
    memory_2[2098] = 106;
    memory_2[2099] = 83;
    memory_2[2100] = 67;
    memory_2[2101] = 69;
    memory_2[2102] = 113;
    memory_2[2103] = 87;
    memory_2[2104] = 85;
    memory_2[2105] = 106;
    memory_2[2106] = 74;
    memory_2[2107] = 69;
    memory_2[2108] = 57;
    memory_2[2109] = 112;
    memory_2[2110] = 77;
    memory_2[2111] = 77;
    memory_2[2112] = 103;
    memory_2[2113] = 114;
    memory_2[2114] = 89;
    memory_2[2115] = 98;
    memory_2[2116] = 74;
    memory_2[2117] = 89;
    memory_2[2118] = 74;
    memory_2[2119] = 69;
    memory_2[2120] = 67;
    memory_2[2121] = 103;
    memory_2[2122] = 69;
    memory_2[2123] = 106;
    memory_2[2124] = 86;
    memory_2[2125] = 97;
    memory_2[2126] = 103;
    memory_2[2127] = 66;
    memory_2[2128] = 102;
    memory_2[2129] = 112;
    memory_2[2130] = 43;
    memory_2[2131] = 88;
    memory_2[2132] = 103;
    memory_2[2133] = 48;
    memory_2[2134] = 97;
    memory_2[2135] = 119;
    memory_2[2136] = 47;
    memory_2[2137] = 83;
    memory_2[2138] = 98;
    memory_2[2139] = 53;
    memory_2[2140] = 103;
    memory_2[2141] = 76;
    memory_2[2142] = 116;
    memory_2[2143] = 53;
    memory_2[2144] = 122;
    memory_2[2145] = 117;
    memory_2[2146] = 117;
    memory_2[2147] = 114;
    memory_2[2148] = 75;
    memory_2[2149] = 88;
    memory_2[2150] = 71;
    memory_2[2151] = 89;
    memory_2[2152] = 75;
    memory_2[2153] = 80;
    memory_2[2154] = 114;
    memory_2[2155] = 84;
    memory_2[2156] = 99;
    memory_2[2157] = 115;
    memory_2[2158] = 118;
    memory_2[2159] = 57;
    memory_2[2160] = 51;
    memory_2[2161] = 119;
    memory_2[2162] = 75;
    memory_2[2163] = 81;
    memory_2[2164] = 110;
    memory_2[2165] = 52;
    memory_2[2166] = 71;
    memory_2[2167] = 90;
    memory_2[2168] = 67;
    memory_2[2169] = 66;
    memory_2[2170] = 101;
    memory_2[2171] = 67;
    memory_2[2172] = 109;
    memory_2[2173] = 75;
    memory_2[2174] = 68;
    memory_2[2175] = 82;
    memory_2[2176] = 87;
    memory_2[2177] = 74;
    memory_2[2178] = 102;
    memory_2[2179] = 90;
    memory_2[2180] = 73;
    memory_2[2181] = 116;
    memory_2[2182] = 65;
    memory_2[2183] = 106;
    memory_2[2184] = 82;
    memory_2[2185] = 120;
    memory_2[2186] = 107;
    memory_2[2187] = 86;
    memory_2[2188] = 106;
    memory_2[2189] = 116;
    memory_2[2190] = 105;
    memory_2[2191] = 69;
    memory_2[2192] = 109;
    memory_2[2193] = 78;
    memory_2[2194] = 105;
    memory_2[2195] = 89;
    memory_2[2196] = 83;
    memory_2[2197] = 49;
    memory_2[2198] = 116;
    memory_2[2199] = 108;
    memory_2[2200] = 119;
    memory_2[2201] = 75;
    memory_2[2202] = 71;
    memory_2[2203] = 104;
    memory_2[2204] = 73;
    memory_2[2205] = 86;
    memory_2[2206] = 109;
    memory_2[2207] = 69;
    memory_2[2208] = 122;
    memory_2[2209] = 79;
    memory_2[2210] = 88;
    memory_2[2211] = 82;
    memory_2[2212] = 113;
    memory_2[2213] = 79;
    memory_2[2214] = 89;
    memory_2[2215] = 105;
    memory_2[2216] = 82;
    memory_2[2217] = 101;
    memory_2[2218] = 104;
    memory_2[2219] = 104;
    memory_2[2220] = 97;
    memory_2[2221] = 115;
    memory_2[2222] = 109;
    memory_2[2223] = 77;
    memory_2[2224] = 119;
    memory_2[2225] = 74;
    memory_2[2226] = 48;
    memory_2[2227] = 76;
    memory_2[2228] = 67;
    memory_2[2229] = 87;
    memory_2[2230] = 68;
    memory_2[2231] = 70;
    memory_2[2232] = 86;
    memory_2[2233] = 50;
    memory_2[2234] = 120;
    memory_2[2235] = 65;
    memory_2[2236] = 53;
    memory_2[2237] = 97;
    memory_2[2238] = 48;
    memory_2[2239] = 74;
    memory_2[2240] = 120;
    memory_2[2241] = 85;
    memory_2[2242] = 67;
    memory_2[2243] = 67;
    memory_2[2244] = 81;
    memory_2[2245] = 65;
    memory_2[2246] = 55;
    memory_2[2247] = 34;
    memory_2[2248] = 32;
    memory_2[2249] = 97;
    memory_2[2250] = 108;
    memory_2[2251] = 116;
    memory_2[2252] = 61;
    memory_2[2253] = 34;
    memory_2[2254] = 65;
    memory_2[2255] = 77;
    memory_2[2256] = 57;
    memory_2[2257] = 46;
    memory_2[2258] = 103;
    memory_2[2259] = 105;
    memory_2[2260] = 102;
    memory_2[2261] = 34;
    memory_2[2262] = 32;
    memory_2[2263] = 87;
    memory_2[2264] = 73;
    memory_2[2265] = 68;
    memory_2[2266] = 84;
    memory_2[2267] = 72;
    memory_2[2268] = 61;
    memory_2[2269] = 54;
    memory_2[2270] = 48;
    memory_2[2271] = 32;
    memory_2[2272] = 72;
    memory_2[2273] = 69;
    memory_2[2274] = 73;
    memory_2[2275] = 71;
    memory_2[2276] = 72;
    memory_2[2277] = 84;
    memory_2[2278] = 61;
    memory_2[2279] = 57;
    memory_2[2280] = 48;
    memory_2[2281] = 47;
    memory_2[2282] = 62;
    memory_2[2283] = 60;
    memory_2[2284] = 112;
    memory_2[2285] = 32;
    memory_2[2286] = 115;
    memory_2[2287] = 116;
    memory_2[2288] = 121;
    memory_2[2289] = 108;
    memory_2[2290] = 101;
    memory_2[2291] = 61;
    memory_2[2292] = 34;
    memory_2[2293] = 102;
    memory_2[2294] = 111;
    memory_2[2295] = 110;
    memory_2[2296] = 116;
    memory_2[2297] = 45;
    memory_2[2298] = 115;
    memory_2[2299] = 105;
    memory_2[2300] = 122;
    memory_2[2301] = 101;
    memory_2[2302] = 58;
    memory_2[2303] = 49;
    memory_2[2304] = 54;
    memory_2[2305] = 112;
    memory_2[2306] = 120;
    memory_2[2307] = 34;
    memory_2[2308] = 62;
    memory_2[2309] = 60;
    memory_2[2310] = 98;
    memory_2[2311] = 114;
    memory_2[2312] = 62;
    memory_2[2313] = 60;
    memory_2[2314] = 98;
    memory_2[2315] = 114;
    memory_2[2316] = 62;
    memory_2[2317] = 65;
    memory_2[2318] = 109;
    memory_2[2319] = 101;
    memory_2[2320] = 114;
    memory_2[2321] = 32;
    memory_2[2322] = 65;
    memory_2[2323] = 108;
    memory_2[2324] = 45;
    memory_2[2325] = 67;
    memory_2[2326] = 97;
    memory_2[2327] = 110;
    memory_2[2328] = 97;
    memory_2[2329] = 97;
    memory_2[2330] = 110;
    memory_2[2331] = 32;
    memory_2[2332] = 40;
    memory_2[2333] = 67;
    memory_2[2334] = 41;
    memory_2[2335] = 32;
    memory_2[2336] = 50;
    memory_2[2337] = 48;
    memory_2[2338] = 49;
    memory_2[2339] = 52;
    memory_2[2340] = 32;
    memory_2[2341] = 32;
    memory_2[2342] = 60;
    memory_2[2343] = 47;
    memory_2[2344] = 112;
    memory_2[2345] = 62;
    memory_2[2346] = 60;
    memory_2[2347] = 47;
    memory_2[2348] = 98;
    memory_2[2349] = 111;
    memory_2[2350] = 100;
    memory_2[2351] = 121;
    memory_2[2352] = 62;
    memory_2[2353] = 60;
    memory_2[2354] = 47;
    memory_2[2355] = 104;
    memory_2[2356] = 116;
    memory_2[2357] = 109;
    memory_2[2358] = 108;
    memory_2[2359] = 62;
    memory_2[2360] = 0;
    memory_2[2361] = 60;
    memory_2[2362] = 104;
    memory_2[2363] = 116;
    memory_2[2364] = 109;
    memory_2[2365] = 108;
    memory_2[2366] = 62;
    memory_2[2367] = 60;
    memory_2[2368] = 104;
    memory_2[2369] = 101;
    memory_2[2370] = 97;
    memory_2[2371] = 100;
    memory_2[2372] = 62;
    memory_2[2373] = 60;
    memory_2[2374] = 116;
    memory_2[2375] = 105;
    memory_2[2376] = 116;
    memory_2[2377] = 108;
    memory_2[2378] = 101;
    memory_2[2379] = 62;
    memory_2[2380] = 83;
    memory_2[2381] = 101;
    memory_2[2382] = 114;
    memory_2[2383] = 118;
    memory_2[2384] = 105;
    memory_2[2385] = 99;
    memory_2[2386] = 101;
    memory_2[2387] = 32;
    memory_2[2388] = 87;
    memory_2[2389] = 101;
    memory_2[2390] = 98;
    memory_2[2391] = 32;
    memory_2[2392] = 109;
    memory_2[2393] = 117;
    memory_2[2394] = 108;
    memory_2[2395] = 116;
    memory_2[2396] = 105;
    memory_2[2397] = 109;
    memory_2[2398] = 38;
    memory_2[2399] = 101;
    memory_2[2400] = 97;
    memory_2[2401] = 99;
    memory_2[2402] = 117;
    memory_2[2403] = 116;
    memory_2[2404] = 101;
    memory_2[2405] = 59;
    memory_2[2406] = 100;
    memory_2[2407] = 105;
    memory_2[2408] = 97;
    memory_2[2409] = 44;
    memory_2[2410] = 32;
    memory_2[2411] = 67;
    memory_2[2412] = 104;
    memory_2[2413] = 105;
    memory_2[2414] = 112;
    memory_2[2415] = 115;
    memory_2[2416] = 45;
    memory_2[2417] = 50;
    memory_2[2418] = 46;
    memory_2[2419] = 48;
    memory_2[2420] = 32;
    memory_2[2421] = 78;
    memory_2[2422] = 101;
    memory_2[2423] = 120;
    memory_2[2424] = 121;
    memory_2[2425] = 115;
    memory_2[2426] = 51;
    memory_2[2427] = 60;
    memory_2[2428] = 47;
    memory_2[2429] = 116;
    memory_2[2430] = 105;
    memory_2[2431] = 116;
    memory_2[2432] = 108;
    memory_2[2433] = 101;
    memory_2[2434] = 62;
    memory_2[2435] = 60;
    memory_2[2436] = 47;
    memory_2[2437] = 104;
    memory_2[2438] = 101;
    memory_2[2439] = 97;
    memory_2[2440] = 100;
    memory_2[2441] = 62;
    memory_2[2442] = 60;
    memory_2[2443] = 98;
    memory_2[2444] = 111;
    memory_2[2445] = 100;
    memory_2[2446] = 121;
    memory_2[2447] = 62;
    memory_2[2448] = 60;
    memory_2[2449] = 104;
    memory_2[2450] = 49;
    memory_2[2451] = 62;
    memory_2[2452] = 83;
    memory_2[2453] = 101;
    memory_2[2454] = 114;
    memory_2[2455] = 118;
    memory_2[2456] = 105;
    memory_2[2457] = 99;
    memory_2[2458] = 101;
    memory_2[2459] = 32;
    memory_2[2460] = 87;
    memory_2[2461] = 101;
    memory_2[2462] = 98;
    memory_2[2463] = 32;
    memory_2[2464] = 109;
    memory_2[2465] = 117;
    memory_2[2466] = 108;
    memory_2[2467] = 116;
    memory_2[2468] = 105;
    memory_2[2469] = 109;
    memory_2[2470] = 38;
    memory_2[2471] = 101;
    memory_2[2472] = 97;
    memory_2[2473] = 99;
    memory_2[2474] = 117;
    memory_2[2475] = 116;
    memory_2[2476] = 101;
    memory_2[2477] = 59;
    memory_2[2478] = 100;
    memory_2[2479] = 105;
    memory_2[2480] = 97;
    memory_2[2481] = 32;
    memory_2[2482] = 60;
    memory_2[2483] = 47;
    memory_2[2484] = 104;
    memory_2[2485] = 49;
    memory_2[2486] = 62;
    memory_2[2487] = 60;
    memory_2[2488] = 112;
    memory_2[2489] = 62;
    memory_2[2490] = 87;
    memory_2[2491] = 101;
    memory_2[2492] = 108;
    memory_2[2493] = 99;
    memory_2[2494] = 111;
    memory_2[2495] = 109;
    memory_2[2496] = 101;
    memory_2[2497] = 32;
    memory_2[2498] = 116;
    memory_2[2499] = 111;
    memory_2[2500] = 32;
    memory_2[2501] = 116;
    memory_2[2502] = 104;
    memory_2[2503] = 101;
    memory_2[2504] = 32;
    memory_2[2505] = 77;
    memory_2[2506] = 87;
    memory_2[2507] = 83;
    memory_2[2508] = 32;
    memory_2[2509] = 111;
    memory_2[2510] = 110;
    memory_2[2511] = 32;
    memory_2[2512] = 70;
    memory_2[2513] = 80;
    memory_2[2514] = 71;
    memory_2[2515] = 65;
    memory_2[2516] = 32;
    memory_2[2517] = 78;
    memory_2[2518] = 101;
    memory_2[2519] = 120;
    memory_2[2520] = 121;
    memory_2[2521] = 115;
    memory_2[2522] = 51;
    memory_2[2523] = 32;
    memory_2[2524] = 98;
    memory_2[2525] = 111;
    memory_2[2526] = 97;
    memory_2[2527] = 114;
    memory_2[2528] = 100;
    memory_2[2529] = 33;
    memory_2[2530] = 60;
    memory_2[2531] = 47;
    memory_2[2532] = 112;
    memory_2[2533] = 62;
    memory_2[2534] = 60;
    memory_2[2535] = 112;
    memory_2[2536] = 62;
    memory_2[2537] = 80;
    memory_2[2538] = 97;
    memory_2[2539] = 114;
    memory_2[2540] = 32;
    memory_2[2541] = 65;
    memory_2[2542] = 109;
    memory_2[2543] = 101;
    memory_2[2544] = 114;
    memory_2[2545] = 32;
    memory_2[2546] = 65;
    memory_2[2547] = 108;
    memory_2[2548] = 45;
    memory_2[2549] = 67;
    memory_2[2550] = 97;
    memory_2[2551] = 110;
    memory_2[2552] = 97;
    memory_2[2553] = 97;
    memory_2[2554] = 110;
    memory_2[2555] = 44;
    memory_2[2556] = 32;
    memory_2[2557] = 106;
    memory_2[2558] = 117;
    memory_2[2559] = 105;
    memory_2[2560] = 110;
    memory_2[2561] = 32;
    memory_2[2562] = 50;
    memory_2[2563] = 48;
    memory_2[2564] = 49;
    memory_2[2565] = 52;
    memory_2[2566] = 60;
    memory_2[2567] = 47;
    memory_2[2568] = 112;
    memory_2[2569] = 62;
    memory_2[2570] = 60;
    memory_2[2571] = 104;
    memory_2[2572] = 51;
    memory_2[2573] = 62;
    memory_2[2574] = 83;
    memory_2[2575] = 119;
    memory_2[2576] = 105;
    memory_2[2577] = 116;
    memory_2[2578] = 99;
    memory_2[2579] = 104;
    memory_2[2580] = 32;
    memory_2[2581] = 83;
    memory_2[2582] = 116;
    memory_2[2583] = 97;
    memory_2[2584] = 116;
    memory_2[2585] = 117;
    memory_2[2586] = 115;
    memory_2[2587] = 58;
    memory_2[2588] = 32;
    memory_2[2589] = 48;
    memory_2[2590] = 48;
    memory_2[2591] = 48;
    memory_2[2592] = 48;
    memory_2[2593] = 48;
    memory_2[2594] = 48;
    memory_2[2595] = 48;
    memory_2[2596] = 48;
    memory_2[2597] = 60;
    memory_2[2598] = 47;
    memory_2[2599] = 104;
    memory_2[2600] = 51;
    memory_2[2601] = 62;
    memory_2[2602] = 60;
    memory_2[2603] = 104;
    memory_2[2604] = 51;
    memory_2[2605] = 62;
    memory_2[2606] = 66;
    memory_2[2607] = 117;
    memory_2[2608] = 116;
    memory_2[2609] = 116;
    memory_2[2610] = 111;
    memory_2[2611] = 110;
    memory_2[2612] = 32;
    memory_2[2613] = 83;
    memory_2[2614] = 116;
    memory_2[2615] = 97;
    memory_2[2616] = 116;
    memory_2[2617] = 117;
    memory_2[2618] = 115;
    memory_2[2619] = 58;
    memory_2[2620] = 32;
    memory_2[2621] = 48;
    memory_2[2622] = 48;
    memory_2[2623] = 48;
    memory_2[2624] = 48;
    memory_2[2625] = 60;
    memory_2[2626] = 47;
    memory_2[2627] = 104;
    memory_2[2628] = 51;
    memory_2[2629] = 62;
    memory_2[2630] = 60;
    memory_2[2631] = 104;
    memory_2[2632] = 51;
    memory_2[2633] = 62;
    memory_2[2634] = 82;
    memory_2[2635] = 101;
    memory_2[2636] = 115;
    memory_2[2637] = 112;
    memory_2[2638] = 111;
    memory_2[2639] = 110;
    memory_2[2640] = 115;
    memory_2[2641] = 101;
    memory_2[2642] = 32;
    memory_2[2643] = 116;
    memory_2[2644] = 105;
    memory_2[2645] = 109;
    memory_2[2646] = 101;
    memory_2[2647] = 58;
    memory_2[2648] = 32;
    memory_2[2649] = 48;
    memory_2[2650] = 48;
    memory_2[2651] = 48;
    memory_2[2652] = 48;
    memory_2[2653] = 48;
    memory_2[2654] = 48;
    memory_2[2655] = 48;
    memory_2[2656] = 48;
    memory_2[2657] = 32;
    memory_2[2658] = 110;
    memory_2[2659] = 115;
    memory_2[2660] = 60;
    memory_2[2661] = 47;
    memory_2[2662] = 104;
    memory_2[2663] = 51;
    memory_2[2664] = 62;
    memory_2[2665] = 60;
    memory_2[2666] = 102;
    memory_2[2667] = 111;
    memory_2[2668] = 114;
    memory_2[2669] = 109;
    memory_2[2670] = 62;
    memory_2[2671] = 9;
    memory_2[2672] = 60;
    memory_2[2673] = 105;
    memory_2[2674] = 110;
    memory_2[2675] = 112;
    memory_2[2676] = 117;
    memory_2[2677] = 116;
    memory_2[2678] = 32;
    memory_2[2679] = 116;
    memory_2[2680] = 121;
    memory_2[2681] = 112;
    memory_2[2682] = 101;
    memory_2[2683] = 61;
    memory_2[2684] = 34;
    memory_2[2685] = 99;
    memory_2[2686] = 104;
    memory_2[2687] = 101;
    memory_2[2688] = 99;
    memory_2[2689] = 107;
    memory_2[2690] = 98;
    memory_2[2691] = 111;
    memory_2[2692] = 120;
    memory_2[2693] = 34;
    memory_2[2694] = 32;
    memory_2[2695] = 110;
    memory_2[2696] = 97;
    memory_2[2697] = 109;
    memory_2[2698] = 101;
    memory_2[2699] = 61;
    memory_2[2700] = 34;
    memory_2[2701] = 108;
    memory_2[2702] = 101;
    memory_2[2703] = 100;
    memory_2[2704] = 49;
    memory_2[2705] = 34;
    memory_2[2706] = 32;
    memory_2[2707] = 118;
    memory_2[2708] = 97;
    memory_2[2709] = 108;
    memory_2[2710] = 117;
    memory_2[2711] = 101;
    memory_2[2712] = 61;
    memory_2[2713] = 34;
    memory_2[2714] = 65;
    memory_2[2715] = 34;
    memory_2[2716] = 62;
    memory_2[2717] = 108;
    memory_2[2718] = 101;
    memory_2[2719] = 100;
    memory_2[2720] = 32;
    memory_2[2721] = 48;
    memory_2[2722] = 60;
    memory_2[2723] = 47;
    memory_2[2724] = 105;
    memory_2[2725] = 110;
    memory_2[2726] = 112;
    memory_2[2727] = 117;
    memory_2[2728] = 116;
    memory_2[2729] = 62;
    memory_2[2730] = 9;
    memory_2[2731] = 60;
    memory_2[2732] = 105;
    memory_2[2733] = 110;
    memory_2[2734] = 112;
    memory_2[2735] = 117;
    memory_2[2736] = 116;
    memory_2[2737] = 32;
    memory_2[2738] = 116;
    memory_2[2739] = 121;
    memory_2[2740] = 112;
    memory_2[2741] = 101;
    memory_2[2742] = 61;
    memory_2[2743] = 34;
    memory_2[2744] = 99;
    memory_2[2745] = 104;
    memory_2[2746] = 101;
    memory_2[2747] = 99;
    memory_2[2748] = 107;
    memory_2[2749] = 98;
    memory_2[2750] = 111;
    memory_2[2751] = 120;
    memory_2[2752] = 34;
    memory_2[2753] = 32;
    memory_2[2754] = 110;
    memory_2[2755] = 97;
    memory_2[2756] = 109;
    memory_2[2757] = 101;
    memory_2[2758] = 61;
    memory_2[2759] = 34;
    memory_2[2760] = 108;
    memory_2[2761] = 101;
    memory_2[2762] = 100;
    memory_2[2763] = 50;
    memory_2[2764] = 34;
    memory_2[2765] = 32;
    memory_2[2766] = 118;
    memory_2[2767] = 97;
    memory_2[2768] = 108;
    memory_2[2769] = 117;
    memory_2[2770] = 101;
    memory_2[2771] = 61;
    memory_2[2772] = 34;
    memory_2[2773] = 66;
    memory_2[2774] = 34;
    memory_2[2775] = 62;
    memory_2[2776] = 108;
    memory_2[2777] = 101;
    memory_2[2778] = 100;
    memory_2[2779] = 32;
    memory_2[2780] = 49;
    memory_2[2781] = 60;
    memory_2[2782] = 47;
    memory_2[2783] = 105;
    memory_2[2784] = 110;
    memory_2[2785] = 112;
    memory_2[2786] = 117;
    memory_2[2787] = 116;
    memory_2[2788] = 62;
    memory_2[2789] = 9;
    memory_2[2790] = 60;
    memory_2[2791] = 105;
    memory_2[2792] = 110;
    memory_2[2793] = 112;
    memory_2[2794] = 117;
    memory_2[2795] = 116;
    memory_2[2796] = 32;
    memory_2[2797] = 116;
    memory_2[2798] = 121;
    memory_2[2799] = 112;
    memory_2[2800] = 101;
    memory_2[2801] = 61;
    memory_2[2802] = 34;
    memory_2[2803] = 99;
    memory_2[2804] = 104;
    memory_2[2805] = 101;
    memory_2[2806] = 99;
    memory_2[2807] = 107;
    memory_2[2808] = 98;
    memory_2[2809] = 111;
    memory_2[2810] = 120;
    memory_2[2811] = 34;
    memory_2[2812] = 32;
    memory_2[2813] = 110;
    memory_2[2814] = 97;
    memory_2[2815] = 109;
    memory_2[2816] = 101;
    memory_2[2817] = 61;
    memory_2[2818] = 34;
    memory_2[2819] = 108;
    memory_2[2820] = 101;
    memory_2[2821] = 100;
    memory_2[2822] = 51;
    memory_2[2823] = 34;
    memory_2[2824] = 32;
    memory_2[2825] = 118;
    memory_2[2826] = 97;
    memory_2[2827] = 108;
    memory_2[2828] = 117;
    memory_2[2829] = 101;
    memory_2[2830] = 61;
    memory_2[2831] = 34;
    memory_2[2832] = 67;
    memory_2[2833] = 34;
    memory_2[2834] = 62;
    memory_2[2835] = 108;
    memory_2[2836] = 101;
    memory_2[2837] = 100;
    memory_2[2838] = 32;
    memory_2[2839] = 50;
    memory_2[2840] = 60;
    memory_2[2841] = 47;
    memory_2[2842] = 105;
    memory_2[2843] = 110;
    memory_2[2844] = 112;
    memory_2[2845] = 117;
    memory_2[2846] = 116;
    memory_2[2847] = 62;
    memory_2[2848] = 9;
    memory_2[2849] = 60;
    memory_2[2850] = 105;
    memory_2[2851] = 110;
    memory_2[2852] = 112;
    memory_2[2853] = 117;
    memory_2[2854] = 116;
    memory_2[2855] = 32;
    memory_2[2856] = 116;
    memory_2[2857] = 121;
    memory_2[2858] = 112;
    memory_2[2859] = 101;
    memory_2[2860] = 61;
    memory_2[2861] = 34;
    memory_2[2862] = 99;
    memory_2[2863] = 104;
    memory_2[2864] = 101;
    memory_2[2865] = 99;
    memory_2[2866] = 107;
    memory_2[2867] = 98;
    memory_2[2868] = 111;
    memory_2[2869] = 120;
    memory_2[2870] = 34;
    memory_2[2871] = 32;
    memory_2[2872] = 110;
    memory_2[2873] = 97;
    memory_2[2874] = 109;
    memory_2[2875] = 101;
    memory_2[2876] = 61;
    memory_2[2877] = 34;
    memory_2[2878] = 108;
    memory_2[2879] = 101;
    memory_2[2880] = 100;
    memory_2[2881] = 52;
    memory_2[2882] = 34;
    memory_2[2883] = 32;
    memory_2[2884] = 118;
    memory_2[2885] = 97;
    memory_2[2886] = 108;
    memory_2[2887] = 117;
    memory_2[2888] = 101;
    memory_2[2889] = 61;
    memory_2[2890] = 34;
    memory_2[2891] = 68;
    memory_2[2892] = 34;
    memory_2[2893] = 62;
    memory_2[2894] = 108;
    memory_2[2895] = 101;
    memory_2[2896] = 100;
    memory_2[2897] = 32;
    memory_2[2898] = 51;
    memory_2[2899] = 60;
    memory_2[2900] = 47;
    memory_2[2901] = 105;
    memory_2[2902] = 110;
    memory_2[2903] = 112;
    memory_2[2904] = 117;
    memory_2[2905] = 116;
    memory_2[2906] = 62;
    memory_2[2907] = 9;
    memory_2[2908] = 60;
    memory_2[2909] = 98;
    memory_2[2910] = 117;
    memory_2[2911] = 116;
    memory_2[2912] = 116;
    memory_2[2913] = 111;
    memory_2[2914] = 110;
    memory_2[2915] = 32;
    memory_2[2916] = 116;
    memory_2[2917] = 121;
    memory_2[2918] = 112;
    memory_2[2919] = 101;
    memory_2[2920] = 61;
    memory_2[2921] = 34;
    memory_2[2922] = 115;
    memory_2[2923] = 117;
    memory_2[2924] = 109;
    memory_2[2925] = 98;
    memory_2[2926] = 105;
    memory_2[2927] = 116;
    memory_2[2928] = 34;
    memory_2[2929] = 32;
    memory_2[2930] = 118;
    memory_2[2931] = 97;
    memory_2[2932] = 108;
    memory_2[2933] = 117;
    memory_2[2934] = 101;
    memory_2[2935] = 61;
    memory_2[2936] = 34;
    memory_2[2937] = 83;
    memory_2[2938] = 117;
    memory_2[2939] = 98;
    memory_2[2940] = 109;
    memory_2[2941] = 105;
    memory_2[2942] = 116;
    memory_2[2943] = 34;
    memory_2[2944] = 62;
    memory_2[2945] = 85;
    memory_2[2946] = 112;
    memory_2[2947] = 100;
    memory_2[2948] = 97;
    memory_2[2949] = 116;
    memory_2[2950] = 101;
    memory_2[2951] = 32;
    memory_2[2952] = 76;
    memory_2[2953] = 69;
    memory_2[2954] = 68;
    memory_2[2955] = 115;
    memory_2[2956] = 60;
    memory_2[2957] = 47;
    memory_2[2958] = 98;
    memory_2[2959] = 117;
    memory_2[2960] = 116;
    memory_2[2961] = 116;
    memory_2[2962] = 111;
    memory_2[2963] = 110;
    memory_2[2964] = 62;
    memory_2[2965] = 60;
    memory_2[2966] = 47;
    memory_2[2967] = 102;
    memory_2[2968] = 111;
    memory_2[2969] = 114;
    memory_2[2970] = 109;
    memory_2[2971] = 62;
    memory_2[2972] = 60;
    memory_2[2973] = 112;
    memory_2[2974] = 62;
    memory_2[2975] = 84;
    memory_2[2976] = 104;
    memory_2[2977] = 105;
    memory_2[2978] = 115;
    memory_2[2979] = 32;
    memory_2[2980] = 60;
    memory_2[2981] = 97;
    memory_2[2982] = 32;
    memory_2[2983] = 104;
    memory_2[2984] = 114;
    memory_2[2985] = 101;
    memory_2[2986] = 102;
    memory_2[2987] = 61;
    memory_2[2988] = 34;
    memory_2[2989] = 104;
    memory_2[2990] = 116;
    memory_2[2991] = 116;
    memory_2[2992] = 112;
    memory_2[2993] = 115;
    memory_2[2994] = 58;
    memory_2[2995] = 47;
    memory_2[2996] = 47;
    memory_2[2997] = 103;
    memory_2[2998] = 105;
    memory_2[2999] = 116;
    memory_2[3000] = 104;
    memory_2[3001] = 117;
    memory_2[3002] = 98;
    memory_2[3003] = 46;
    memory_2[3004] = 99;
    memory_2[3005] = 111;
    memory_2[3006] = 109;
    memory_2[3007] = 47;
    memory_2[3008] = 97;
    memory_2[3009] = 109;
    memory_2[3010] = 101;
    memory_2[3011] = 114;
    memory_2[3012] = 99;
    memory_2[3013] = 47;
    memory_2[3014] = 112;
    memory_2[3015] = 104;
    memory_2[3016] = 105;
    memory_2[3017] = 109;
    memory_2[3018] = 105;
    memory_2[3019] = 105;
    memory_2[3020] = 34;
    memory_2[3021] = 62;
    memory_2[3022] = 112;
    memory_2[3023] = 114;
    memory_2[3024] = 111;
    memory_2[3025] = 106;
    memory_2[3026] = 101;
    memory_2[3027] = 99;
    memory_2[3028] = 116;
    memory_2[3029] = 60;
    memory_2[3030] = 47;
    memory_2[3031] = 97;
    memory_2[3032] = 62;
    memory_2[3033] = 32;
    memory_2[3034] = 105;
    memory_2[3035] = 115;
    memory_2[3036] = 32;
    memory_2[3037] = 112;
    memory_2[3038] = 111;
    memory_2[3039] = 119;
    memory_2[3040] = 101;
    memory_2[3041] = 114;
    memory_2[3042] = 101;
    memory_2[3043] = 100;
    memory_2[3044] = 32;
    memory_2[3045] = 98;
    memory_2[3046] = 121;
    memory_2[3047] = 32;
    memory_2[3048] = 60;
    memory_2[3049] = 97;
    memory_2[3050] = 32;
    memory_2[3051] = 104;
    memory_2[3052] = 114;
    memory_2[3053] = 101;
    memory_2[3054] = 102;
    memory_2[3055] = 61;
    memory_2[3056] = 34;
    memory_2[3057] = 104;
    memory_2[3058] = 116;
    memory_2[3059] = 116;
    memory_2[3060] = 112;
    memory_2[3061] = 58;
    memory_2[3062] = 47;
    memory_2[3063] = 47;
    memory_2[3064] = 112;
    memory_2[3065] = 121;
    memory_2[3066] = 97;
    memory_2[3067] = 110;
    memory_2[3068] = 100;
    memory_2[3069] = 99;
    memory_2[3070] = 104;
    memory_2[3071] = 105;
    memory_2[3072] = 112;
    memory_2[3073] = 115;
    memory_2[3074] = 46;
    memory_2[3075] = 111;
    memory_2[3076] = 114;
    memory_2[3077] = 103;
    memory_2[3078] = 34;
    memory_2[3079] = 62;
    memory_2[3080] = 67;
    memory_2[3081] = 104;
    memory_2[3082] = 105;
    memory_2[3083] = 112;
    memory_2[3084] = 115;
    memory_2[3085] = 45;
    memory_2[3086] = 50;
    memory_2[3087] = 46;
    memory_2[3088] = 48;
    memory_2[3089] = 60;
    memory_2[3090] = 47;
    memory_2[3091] = 97;
    memory_2[3092] = 62;
    memory_2[3093] = 46;
    memory_2[3094] = 60;
    memory_2[3095] = 98;
    memory_2[3096] = 114;
    memory_2[3097] = 62;
    memory_2[3098] = 65;
    memory_2[3099] = 109;
    memory_2[3100] = 101;
    memory_2[3101] = 114;
    memory_2[3102] = 32;
    memory_2[3103] = 65;
    memory_2[3104] = 108;
    memory_2[3105] = 45;
    memory_2[3106] = 67;
    memory_2[3107] = 97;
    memory_2[3108] = 110;
    memory_2[3109] = 97;
    memory_2[3110] = 97;
    memory_2[3111] = 110;
    memory_2[3112] = 32;
    memory_2[3113] = 40;
    memory_2[3114] = 67;
    memory_2[3115] = 41;
    memory_2[3116] = 32;
    memory_2[3117] = 50;
    memory_2[3118] = 48;
    memory_2[3119] = 49;
    memory_2[3120] = 52;
    memory_2[3121] = 60;
    memory_2[3122] = 47;
    memory_2[3123] = 112;
    memory_2[3124] = 62;
    memory_2[3125] = 60;
    memory_2[3126] = 47;
    memory_2[3127] = 98;
    memory_2[3128] = 111;
    memory_2[3129] = 100;
    memory_2[3130] = 121;
    memory_2[3131] = 62;
    memory_2[3132] = 60;
    memory_2[3133] = 47;
    memory_2[3134] = 104;
    memory_2[3135] = 116;
    memory_2[3136] = 109;
    memory_2[3137] = 108;
    memory_2[3138] = 62;
    memory_2[3139] = 0;
    memory_2[3140] = 87;
    memory_2[3141] = 101;
    memory_2[3142] = 108;
    memory_2[3143] = 99;
    memory_2[3144] = 111;
    memory_2[3145] = 109;
    memory_2[3146] = 101;
    memory_2[3147] = 32;
    memory_2[3148] = 116;
    memory_2[3149] = 111;
    memory_2[3150] = 32;
    memory_2[3151] = 116;
    memory_2[3152] = 104;
    memory_2[3153] = 101;
    memory_2[3154] = 32;
    memory_2[3155] = 78;
    memory_2[3156] = 101;
    memory_2[3157] = 120;
    memory_2[3158] = 121;
    memory_2[3159] = 115;
    memory_2[3160] = 51;
    memory_2[3161] = 32;
    memory_2[3162] = 67;
    memory_2[3163] = 104;
    memory_2[3164] = 105;
    memory_2[3165] = 112;
    memory_2[3166] = 115;
    memory_2[3167] = 45;
    memory_2[3168] = 50;
    memory_2[3169] = 46;
    memory_2[3170] = 48;
    memory_2[3171] = 32;
    memory_2[3172] = 100;
    memory_2[3173] = 101;
    memory_2[3174] = 109;
    memory_2[3175] = 111;
    memory_2[3176] = 33;
    memory_2[3177] = 10;
    memory_2[3178] = 0;
    memory_2[3179] = 67;
    memory_2[3180] = 111;
    memory_2[3181] = 110;
    memory_2[3182] = 110;
    memory_2[3183] = 101;
    memory_2[3184] = 99;
    memory_2[3185] = 116;
    memory_2[3186] = 32;
    memory_2[3187] = 121;
    memory_2[3188] = 111;
    memory_2[3189] = 117;
    memory_2[3190] = 114;
    memory_2[3191] = 32;
    memory_2[3192] = 87;
    memory_2[3193] = 101;
    memory_2[3194] = 98;
    memory_2[3195] = 32;
    memory_2[3196] = 98;
    memory_2[3197] = 114;
    memory_2[3198] = 111;
    memory_2[3199] = 119;
    memory_2[3200] = 115;
    memory_2[3201] = 101;
    memory_2[3202] = 114;
    memory_2[3203] = 32;
    memory_2[3204] = 116;
    memory_2[3205] = 111;
    memory_2[3206] = 32;
    memory_2[3207] = 49;
    memory_2[3208] = 57;
    memory_2[3209] = 50;
    memory_2[3210] = 46;
    memory_2[3211] = 49;
    memory_2[3212] = 54;
    memory_2[3213] = 56;
    memory_2[3214] = 46;
    memory_2[3215] = 48;
    memory_2[3216] = 46;
    memory_2[3217] = 49;
    memory_2[3218] = 49;
    memory_2[3219] = 57;
    memory_2[3220] = 10;
    memory_2[3221] = 0;
    memory_2[3222] = 72;
    memory_2[3223] = 84;
    memory_2[3224] = 84;
    memory_2[3225] = 80;
    memory_2[3226] = 47;
    memory_2[3227] = 49;
    memory_2[3228] = 46;
    memory_2[3229] = 49;
    memory_2[3230] = 32;
    memory_2[3231] = 50;
    memory_2[3232] = 48;
    memory_2[3233] = 48;
    memory_2[3234] = 32;
    memory_2[3235] = 79;
    memory_2[3236] = 75;
    memory_2[3237] = 13;
    memory_2[3238] = 10;
    memory_2[3239] = 68;
    memory_2[3240] = 97;
    memory_2[3241] = 116;
    memory_2[3242] = 101;
    memory_2[3243] = 58;
    memory_2[3244] = 32;
    memory_2[3245] = 84;
    memory_2[3246] = 104;
    memory_2[3247] = 117;
    memory_2[3248] = 32;
    memory_2[3249] = 79;
    memory_2[3250] = 99;
    memory_2[3251] = 116;
    memory_2[3252] = 32;
    memory_2[3253] = 51;
    memory_2[3254] = 49;
    memory_2[3255] = 32;
    memory_2[3256] = 49;
    memory_2[3257] = 57;
    memory_2[3258] = 58;
    memory_2[3259] = 49;
    memory_2[3260] = 54;
    memory_2[3261] = 58;
    memory_2[3262] = 48;
    memory_2[3263] = 48;
    memory_2[3264] = 32;
    memory_2[3265] = 50;
    memory_2[3266] = 48;
    memory_2[3267] = 49;
    memory_2[3268] = 51;
    memory_2[3269] = 13;
    memory_2[3270] = 10;
    memory_2[3271] = 83;
    memory_2[3272] = 101;
    memory_2[3273] = 114;
    memory_2[3274] = 118;
    memory_2[3275] = 101;
    memory_2[3276] = 114;
    memory_2[3277] = 58;
    memory_2[3278] = 32;
    memory_2[3279] = 99;
    memory_2[3280] = 104;
    memory_2[3281] = 105;
    memory_2[3282] = 112;
    memory_2[3283] = 115;
    memory_2[3284] = 45;
    memory_2[3285] = 119;
    memory_2[3286] = 101;
    memory_2[3287] = 98;
    memory_2[3288] = 47;
    memory_2[3289] = 48;
    memory_2[3290] = 46;
    memory_2[3291] = 48;
    memory_2[3292] = 13;
    memory_2[3293] = 10;
    memory_2[3294] = 67;
    memory_2[3295] = 111;
    memory_2[3296] = 110;
    memory_2[3297] = 116;
    memory_2[3298] = 101;
    memory_2[3299] = 110;
    memory_2[3300] = 116;
    memory_2[3301] = 45;
    memory_2[3302] = 84;
    memory_2[3303] = 121;
    memory_2[3304] = 112;
    memory_2[3305] = 101;
    memory_2[3306] = 58;
    memory_2[3307] = 32;
    memory_2[3308] = 97;
    memory_2[3309] = 112;
    memory_2[3310] = 112;
    memory_2[3311] = 108;
    memory_2[3312] = 105;
    memory_2[3313] = 99;
    memory_2[3314] = 97;
    memory_2[3315] = 116;
    memory_2[3316] = 105;
    memory_2[3317] = 111;
    memory_2[3318] = 110;
    memory_2[3319] = 47;
    memory_2[3320] = 111;
    memory_2[3321] = 99;
    memory_2[3322] = 116;
    memory_2[3323] = 101;
    memory_2[3324] = 116;
    memory_2[3325] = 45;
    memory_2[3326] = 115;
    memory_2[3327] = 116;
    memory_2[3328] = 114;
    memory_2[3329] = 101;
    memory_2[3330] = 97;
    memory_2[3331] = 109;
    memory_2[3332] = 13;
    memory_2[3333] = 10;
    memory_2[3334] = 67;
    memory_2[3335] = 111;
    memory_2[3336] = 110;
    memory_2[3337] = 116;
    memory_2[3338] = 101;
    memory_2[3339] = 110;
    memory_2[3340] = 116;
    memory_2[3341] = 45;
    memory_2[3342] = 76;
    memory_2[3343] = 101;
    memory_2[3344] = 110;
    memory_2[3345] = 103;
    memory_2[3346] = 116;
    memory_2[3347] = 104;
    memory_2[3348] = 58;
    memory_2[3349] = 32;
    memory_2[3350] = 0;
  end


  //////////////////////////////////////////////////////////////////////////////
  // INSTRUCTION INITIALIZATION                                                 
  //                                                                            
  // Initialise the contents of the instruction memory                          
  //
  // Intruction Set
  // ==============
  // 0 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': 'literal'}
  // 1 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': 'jmp_and_link'}
  // 2 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': 'stop'}
  // 3 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': 'move'}
  // 4 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': 'nop'}
  // 5 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'output': 'socket', 'op': 'write'}
  // 6 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': 'jmp_to_reg'}
  // 7 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'output': 'rs232_tx', 'op': 'write'}
  // 8 {'float': False, 'literal': False, 'right': False, 'unsigned': True, 'op': '+'}
  // 9 {'right': False, 'element_size': 2, 'float': False, 'unsigned': False, 'literal': False, 'op': 'memory_read_request'}
  // 10 {'right': False, 'element_size': 2, 'float': False, 'unsigned': False, 'literal': False, 'op': 'memory_read_wait'}
  // 11 {'right': False, 'element_size': 2, 'float': False, 'unsigned': False, 'literal': False, 'op': 'memory_read'}
  // 12 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': 'jmp_if_false'}
  // 13 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '+'}
  // 14 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': 'goto'}
  // 15 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '>='}
  // 16 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '-'}
  // 17 {'float': False, 'literal': False, 'right': False, 'unsigned': True, 'op': '|'}
  // 18 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '|'}
  // 19 {'float': False, 'literal': True, 'right': True, 'unsigned': False, 'op': '>='}
  // 20 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': '-'}
  // 21 {'float': False, 'literal': True, 'right': True, 'unsigned': False, 'op': '<<'}
  // 22 {'float': False, 'literal': True, 'right': True, 'unsigned': False, 'op': '&'}
  // 23 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '=='}
  // 24 {'float': False, 'literal': True, 'right': False, 'unsigned': True, 'op': '|'}
  // 25 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '>'}
  // 26 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '<'}
  // 27 {'float': False, 'literal': False, 'right': False, 'unsigned': True, 'op': '<'}
  // 28 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '>>'}
  // 29 {'float': False, 'literal': False, 'right': False, 'unsigned': True, 'op': '=='}
  // 30 {'float': False, 'literal': True, 'right': True, 'unsigned': False, 'op': '+'}
  // 31 {'right': False, 'element_size': 2, 'float': False, 'unsigned': False, 'literal': False, 'op': 'memory_write'}
  // 32 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'input': 'socket', 'op': 'read'}
  // 33 {'float': False, 'literal': True, 'right': True, 'unsigned': True, 'op': '&'}
  // 34 {'float': False, 'literal': True, 'right': False, 'unsigned': False, 'op': 'jmp_if_true'}
  // 35 {'float': False, 'literal': True, 'right': True, 'unsigned': False, 'op': '!='}
  // 36 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'output': 'leds', 'op': 'write'}
  // 37 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'input': 'switches', 'op': 'read'}
  // 38 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': '~'}
  // 39 {'float': False, 'literal': False, 'right': False, 'unsigned': False, 'op': '+'}
  // 40 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'input': 'buttons', 'op': 'read'}
  // 41 {'right': False, 'float': False, 'unsigned': False, 'literal': False, 'input': 'rs232_rx', 'op': 'read'}
  // Intructions
  // ===========
  
  initial
  begin
    instructions[0] = {6'd0, 7'd13, 7'd0, 32'd1};//{'dest': 13, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1] = {6'd0, 7'd14, 7'd0, 32'd0};//{'dest': 14, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2] = {6'd1, 7'd59, 7'd0, 32'd1128};//{'dest': 59, 'label': 1128, 'op': 'jmp_and_link'}
    instructions[3] = {6'd2, 7'd0, 7'd0, 32'd0};//{'op': 'stop'}
    instructions[4] = {6'd3, 7'd76, 7'd1, 32'd0};//{'dest': 76, 'src': 1, 'op': 'move'}
    instructions[5] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[6] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[7] = {6'd5, 7'd0, 7'd76, 32'd0};//{'src': 76, 'output': 'socket', 'op': 'write'}
    instructions[8] = {6'd6, 7'd0, 7'd0, 32'd0};//{'src': 0, 'op': 'jmp_to_reg'}
    instructions[9] = {6'd3, 7'd76, 7'd3, 32'd0};//{'dest': 76, 'src': 3, 'op': 'move'}
    instructions[10] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[11] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[12] = {6'd7, 7'd0, 7'd76, 32'd0};//{'src': 76, 'output': 'rs232_tx', 'op': 'write'}
    instructions[13] = {6'd6, 7'd0, 7'd2, 32'd0};//{'src': 2, 'op': 'jmp_to_reg'}
    instructions[14] = {6'd0, 7'd6, 7'd0, 32'd0};//{'dest': 6, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[15] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[16] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[17] = {6'd3, 7'd77, 7'd6, 32'd0};//{'dest': 77, 'src': 6, 'op': 'move'}
    instructions[18] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[19] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[20] = {6'd8, 7'd78, 7'd77, 32'd5};//{'dest': 78, 'src': 77, 'srcb': 5, 'signed': False, 'op': '+'}
    instructions[21] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[22] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[23] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347637784, 'op': 'memory_read_request'}
    instructions[24] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[25] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347637784, 'op': 'memory_read_wait'}
    instructions[26] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347637784, 'element_size': 2, 'op': 'memory_read'}
    instructions[27] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[28] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[29] = {6'd12, 7'd0, 7'd76, 32'd47};//{'src': 76, 'label': 47, 'op': 'jmp_if_false'}
    instructions[30] = {6'd3, 7'd78, 7'd6, 32'd0};//{'dest': 78, 'src': 6, 'op': 'move'}
    instructions[31] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[32] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[33] = {6'd8, 7'd80, 7'd78, 32'd5};//{'dest': 80, 'src': 78, 'srcb': 5, 'signed': False, 'op': '+'}
    instructions[34] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[35] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[36] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347671192, 'op': 'memory_read_request'}
    instructions[37] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[38] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347671192, 'op': 'memory_read_wait'}
    instructions[39] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347671192, 'element_size': 2, 'op': 'memory_read'}
    instructions[40] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[41] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[42] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[43] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[44] = {6'd3, 7'd76, 7'd6, 32'd0};//{'dest': 76, 'src': 6, 'op': 'move'}
    instructions[45] = {6'd13, 7'd6, 7'd6, 32'd1};//{'src': 6, 'right': 1, 'dest': 6, 'signed': False, 'op': '+', 'size': 2}
    instructions[46] = {6'd14, 7'd0, 7'd0, 32'd48};//{'label': 48, 'op': 'goto'}
    instructions[47] = {6'd14, 7'd0, 7'd0, 32'd49};//{'label': 49, 'op': 'goto'}
    instructions[48] = {6'd14, 7'd0, 7'd0, 32'd15};//{'label': 15, 'op': 'goto'}
    instructions[49] = {6'd6, 7'd0, 7'd4, 32'd0};//{'src': 4, 'op': 'jmp_to_reg'}
    instructions[50] = {6'd0, 7'd9, 7'd0, 32'd0};//{'dest': 9, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[51] = {6'd0, 7'd10, 7'd0, 32'd0};//{'dest': 10, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[52] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[53] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[54] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[55] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[56] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[57] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[58] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[59] = {6'd15, 7'd76, 7'd77, 32'd10000};//{'src': 77, 'right': 10000, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[60] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[61] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[62] = {6'd12, 7'd0, 7'd76, 32'd78};//{'src': 76, 'label': 78, 'op': 'jmp_if_false'}
    instructions[63] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[64] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[65] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[66] = {6'd16, 7'd76, 7'd77, 32'd10000};//{'src': 77, 'right': 10000, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[67] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[68] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[69] = {6'd3, 7'd8, 7'd76, 32'd0};//{'dest': 8, 'src': 76, 'op': 'move'}
    instructions[70] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[71] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[72] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[73] = {6'd13, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[74] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[75] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[76] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[77] = {6'd14, 7'd0, 7'd0, 32'd79};//{'label': 79, 'op': 'goto'}
    instructions[78] = {6'd14, 7'd0, 7'd0, 32'd80};//{'label': 80, 'op': 'goto'}
    instructions[79] = {6'd14, 7'd0, 7'd0, 32'd56};//{'label': 56, 'op': 'goto'}
    instructions[80] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[81] = {6'd3, 7'd78, 7'd10, 32'd0};//{'dest': 78, 'src': 10, 'op': 'move'}
    instructions[82] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[83] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[84] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[85] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[86] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[87] = {6'd12, 7'd0, 7'd76, 32'd101};//{'src': 76, 'label': 101, 'op': 'jmp_if_false'}
    instructions[88] = {6'd3, 7'd78, 7'd9, 32'd0};//{'dest': 78, 'src': 9, 'op': 'move'}
    instructions[89] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[90] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[91] = {6'd18, 7'd77, 7'd78, 32'd48};//{'src': 78, 'right': 48, 'dest': 77, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[92] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[93] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[94] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[95] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[96] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[97] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[98] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[99] = {6'd3, 7'd10, 7'd76, 32'd0};//{'dest': 10, 'src': 76, 'op': 'move'}
    instructions[100] = {6'd14, 7'd0, 7'd0, 32'd101};//{'label': 101, 'op': 'goto'}
    instructions[101] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[102] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[103] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[104] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[105] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[106] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[107] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[108] = {6'd15, 7'd76, 7'd77, 32'd1000};//{'src': 77, 'right': 1000, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[109] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[110] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[111] = {6'd12, 7'd0, 7'd76, 32'd127};//{'src': 76, 'label': 127, 'op': 'jmp_if_false'}
    instructions[112] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[113] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[114] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[115] = {6'd16, 7'd76, 7'd77, 32'd1000};//{'src': 77, 'right': 1000, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[116] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[117] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[118] = {6'd3, 7'd8, 7'd76, 32'd0};//{'dest': 8, 'src': 76, 'op': 'move'}
    instructions[119] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[120] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[121] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[122] = {6'd13, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[123] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[124] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[125] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[126] = {6'd14, 7'd0, 7'd0, 32'd128};//{'label': 128, 'op': 'goto'}
    instructions[127] = {6'd14, 7'd0, 7'd0, 32'd129};//{'label': 129, 'op': 'goto'}
    instructions[128] = {6'd14, 7'd0, 7'd0, 32'd105};//{'label': 105, 'op': 'goto'}
    instructions[129] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[130] = {6'd3, 7'd78, 7'd10, 32'd0};//{'dest': 78, 'src': 10, 'op': 'move'}
    instructions[131] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[132] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[133] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[134] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[135] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[136] = {6'd12, 7'd0, 7'd76, 32'd150};//{'src': 76, 'label': 150, 'op': 'jmp_if_false'}
    instructions[137] = {6'd3, 7'd78, 7'd9, 32'd0};//{'dest': 78, 'src': 9, 'op': 'move'}
    instructions[138] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[139] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[140] = {6'd18, 7'd77, 7'd78, 32'd48};//{'src': 78, 'right': 48, 'dest': 77, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[141] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[142] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[143] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[144] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[145] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[146] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[147] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[148] = {6'd3, 7'd10, 7'd76, 32'd0};//{'dest': 10, 'src': 76, 'op': 'move'}
    instructions[149] = {6'd14, 7'd0, 7'd0, 32'd150};//{'label': 150, 'op': 'goto'}
    instructions[150] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[151] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[152] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[153] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[154] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[155] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[156] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[157] = {6'd15, 7'd76, 7'd77, 32'd100};//{'src': 77, 'right': 100, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[158] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[159] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[160] = {6'd12, 7'd0, 7'd76, 32'd176};//{'src': 76, 'label': 176, 'op': 'jmp_if_false'}
    instructions[161] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[162] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[163] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[164] = {6'd16, 7'd76, 7'd77, 32'd100};//{'src': 77, 'right': 100, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[165] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[166] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[167] = {6'd3, 7'd8, 7'd76, 32'd0};//{'dest': 8, 'src': 76, 'op': 'move'}
    instructions[168] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[169] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[170] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[171] = {6'd13, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[172] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[173] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[174] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[175] = {6'd14, 7'd0, 7'd0, 32'd177};//{'label': 177, 'op': 'goto'}
    instructions[176] = {6'd14, 7'd0, 7'd0, 32'd178};//{'label': 178, 'op': 'goto'}
    instructions[177] = {6'd14, 7'd0, 7'd0, 32'd154};//{'label': 154, 'op': 'goto'}
    instructions[178] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[179] = {6'd3, 7'd78, 7'd10, 32'd0};//{'dest': 78, 'src': 10, 'op': 'move'}
    instructions[180] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[181] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[182] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[183] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[184] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[185] = {6'd12, 7'd0, 7'd76, 32'd199};//{'src': 76, 'label': 199, 'op': 'jmp_if_false'}
    instructions[186] = {6'd3, 7'd78, 7'd9, 32'd0};//{'dest': 78, 'src': 9, 'op': 'move'}
    instructions[187] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[188] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[189] = {6'd18, 7'd77, 7'd78, 32'd48};//{'src': 78, 'right': 48, 'dest': 77, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[190] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[191] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[192] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[193] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[194] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[195] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[196] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[197] = {6'd3, 7'd10, 7'd76, 32'd0};//{'dest': 10, 'src': 76, 'op': 'move'}
    instructions[198] = {6'd14, 7'd0, 7'd0, 32'd199};//{'label': 199, 'op': 'goto'}
    instructions[199] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[200] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[201] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[202] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[203] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[204] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[205] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[206] = {6'd15, 7'd76, 7'd77, 32'd10};//{'src': 77, 'right': 10, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[207] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[208] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[209] = {6'd12, 7'd0, 7'd76, 32'd225};//{'src': 76, 'label': 225, 'op': 'jmp_if_false'}
    instructions[210] = {6'd3, 7'd77, 7'd8, 32'd0};//{'dest': 77, 'src': 8, 'op': 'move'}
    instructions[211] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[212] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[213] = {6'd16, 7'd76, 7'd77, 32'd10};//{'src': 77, 'right': 10, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[214] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[215] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[216] = {6'd3, 7'd8, 7'd76, 32'd0};//{'dest': 8, 'src': 76, 'op': 'move'}
    instructions[217] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[218] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[219] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[220] = {6'd13, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[221] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[222] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[223] = {6'd3, 7'd9, 7'd76, 32'd0};//{'dest': 9, 'src': 76, 'op': 'move'}
    instructions[224] = {6'd14, 7'd0, 7'd0, 32'd226};//{'label': 226, 'op': 'goto'}
    instructions[225] = {6'd14, 7'd0, 7'd0, 32'd227};//{'label': 227, 'op': 'goto'}
    instructions[226] = {6'd14, 7'd0, 7'd0, 32'd203};//{'label': 203, 'op': 'goto'}
    instructions[227] = {6'd3, 7'd77, 7'd9, 32'd0};//{'dest': 77, 'src': 9, 'op': 'move'}
    instructions[228] = {6'd3, 7'd78, 7'd10, 32'd0};//{'dest': 78, 'src': 10, 'op': 'move'}
    instructions[229] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[230] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[231] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[232] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[233] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[234] = {6'd12, 7'd0, 7'd76, 32'd248};//{'src': 76, 'label': 248, 'op': 'jmp_if_false'}
    instructions[235] = {6'd3, 7'd78, 7'd9, 32'd0};//{'dest': 78, 'src': 9, 'op': 'move'}
    instructions[236] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[237] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[238] = {6'd18, 7'd77, 7'd78, 32'd48};//{'src': 78, 'right': 48, 'dest': 77, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[239] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[240] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[241] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[242] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[243] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[244] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[245] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[246] = {6'd3, 7'd10, 7'd76, 32'd0};//{'dest': 10, 'src': 76, 'op': 'move'}
    instructions[247] = {6'd14, 7'd0, 7'd0, 32'd248};//{'label': 248, 'op': 'goto'}
    instructions[248] = {6'd3, 7'd78, 7'd8, 32'd0};//{'dest': 78, 'src': 8, 'op': 'move'}
    instructions[249] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[250] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[251] = {6'd18, 7'd77, 7'd78, 32'd48};//{'src': 78, 'right': 48, 'dest': 77, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[252] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[253] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[254] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[255] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[256] = {6'd6, 7'd0, 7'd7, 32'd0};//{'src': 7, 'op': 'jmp_to_reg'}
    instructions[257] = {6'd3, 7'd77, 7'd12, 32'd0};//{'dest': 77, 'src': 12, 'op': 'move'}
    instructions[258] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[259] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[260] = {6'd19, 7'd76, 7'd77, 32'd0};//{'src': 77, 'right': 0, 'dest': 76, 'signed': True, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[261] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[262] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[263] = {6'd12, 7'd0, 7'd76, 32'd270};//{'src': 76, 'label': 270, 'op': 'jmp_if_false'}
    instructions[264] = {6'd3, 7'd77, 7'd12, 32'd0};//{'dest': 77, 'src': 12, 'op': 'move'}
    instructions[265] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[266] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[267] = {6'd3, 7'd8, 7'd77, 32'd0};//{'dest': 8, 'src': 77, 'op': 'move'}
    instructions[268] = {6'd1, 7'd7, 7'd0, 32'd50};//{'dest': 7, 'label': 50, 'op': 'jmp_and_link'}
    instructions[269] = {6'd14, 7'd0, 7'd0, 32'd283};//{'label': 283, 'op': 'goto'}
    instructions[270] = {6'd0, 7'd77, 7'd0, 32'd45};//{'dest': 77, 'literal': 45, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[271] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[272] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[273] = {6'd3, 7'd3, 7'd77, 32'd0};//{'dest': 3, 'src': 77, 'op': 'move'}
    instructions[274] = {6'd1, 7'd2, 7'd0, 32'd9};//{'dest': 2, 'label': 9, 'op': 'jmp_and_link'}
    instructions[275] = {6'd3, 7'd78, 7'd12, 32'd0};//{'dest': 78, 'src': 12, 'op': 'move'}
    instructions[276] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[277] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[278] = {6'd20, 7'd77, 7'd78, 32'd0};//{'src': 78, 'dest': 77, 'signed': True, 'op': '-', 'size': 2, 'type': 'int', 'left': 0}
    instructions[279] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[280] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[281] = {6'd3, 7'd8, 7'd77, 32'd0};//{'dest': 8, 'src': 77, 'op': 'move'}
    instructions[282] = {6'd1, 7'd7, 7'd0, 32'd50};//{'dest': 7, 'label': 50, 'op': 'jmp_and_link'}
    instructions[283] = {6'd6, 7'd0, 7'd11, 32'd0};//{'src': 11, 'op': 'jmp_to_reg'}
    instructions[284] = {6'd3, 7'd76, 7'd13, 32'd0};//{'dest': 76, 'src': 13, 'op': 'move'}
    instructions[285] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[286] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[287] = {6'd12, 7'd0, 7'd76, 32'd300};//{'src': 76, 'label': 300, 'op': 'jmp_if_false'}
    instructions[288] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[289] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[290] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[291] = {6'd3, 7'd13, 7'd76, 32'd0};//{'dest': 13, 'src': 76, 'op': 'move'}
    instructions[292] = {6'd3, 7'd77, 7'd16, 32'd0};//{'dest': 77, 'src': 16, 'op': 'move'}
    instructions[293] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[294] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[295] = {6'd21, 7'd76, 7'd77, 32'd8};//{'src': 77, 'right': 8, 'dest': 76, 'signed': True, 'op': '<<', 'type': 'int', 'size': 2}
    instructions[296] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[297] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[298] = {6'd3, 7'd14, 7'd76, 32'd0};//{'dest': 14, 'src': 76, 'op': 'move'}
    instructions[299] = {6'd14, 7'd0, 7'd0, 32'd322};//{'label': 322, 'op': 'goto'}
    instructions[300] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[301] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[302] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[303] = {6'd3, 7'd13, 7'd76, 32'd0};//{'dest': 13, 'src': 76, 'op': 'move'}
    instructions[304] = {6'd3, 7'd77, 7'd14, 32'd0};//{'dest': 77, 'src': 14, 'op': 'move'}
    instructions[305] = {6'd3, 7'd80, 7'd16, 32'd0};//{'dest': 80, 'src': 16, 'op': 'move'}
    instructions[306] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[307] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[308] = {6'd22, 7'd78, 7'd80, 32'd255};//{'src': 80, 'right': 255, 'dest': 78, 'signed': True, 'op': '&', 'type': 'int', 'size': 2}
    instructions[309] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[310] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[311] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[312] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[313] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[314] = {6'd3, 7'd14, 7'd76, 32'd0};//{'dest': 14, 'src': 76, 'op': 'move'}
    instructions[315] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[316] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[317] = {6'd3, 7'd77, 7'd14, 32'd0};//{'dest': 77, 'src': 14, 'op': 'move'}
    instructions[318] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[319] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[320] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[321] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[322] = {6'd6, 7'd0, 7'd15, 32'd0};//{'src': 15, 'op': 'jmp_to_reg'}
    instructions[323] = {6'd3, 7'd77, 7'd13, 32'd0};//{'dest': 77, 'src': 13, 'op': 'move'}
    instructions[324] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[325] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[326] = {6'd23, 7'd76, 7'd77, 32'd0};//{'src': 77, 'right': 0, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[327] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[328] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[329] = {6'd12, 7'd0, 7'd76, 32'd336};//{'src': 76, 'label': 336, 'op': 'jmp_if_false'}
    instructions[330] = {6'd3, 7'd77, 7'd14, 32'd0};//{'dest': 77, 'src': 14, 'op': 'move'}
    instructions[331] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[332] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[333] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[334] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[335] = {6'd14, 7'd0, 7'd0, 32'd336};//{'label': 336, 'op': 'goto'}
    instructions[336] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[337] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[338] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[339] = {6'd3, 7'd13, 7'd76, 32'd0};//{'dest': 13, 'src': 76, 'op': 'move'}
    instructions[340] = {6'd6, 7'd0, 7'd17, 32'd0};//{'src': 17, 'op': 'jmp_to_reg'}
    instructions[341] = {6'd0, 7'd20, 7'd0, 32'd0};//{'dest': 20, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[342] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[343] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[344] = {6'd3, 7'd77, 7'd20, 32'd0};//{'dest': 77, 'src': 20, 'op': 'move'}
    instructions[345] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[346] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[347] = {6'd8, 7'd78, 7'd77, 32'd19};//{'dest': 78, 'src': 77, 'srcb': 19, 'signed': False, 'op': '+'}
    instructions[348] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[349] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[350] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347791272, 'op': 'memory_read_request'}
    instructions[351] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[352] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347791272, 'op': 'memory_read_wait'}
    instructions[353] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347791272, 'element_size': 2, 'op': 'memory_read'}
    instructions[354] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[355] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[356] = {6'd12, 7'd0, 7'd76, 32'd374};//{'src': 76, 'label': 374, 'op': 'jmp_if_false'}
    instructions[357] = {6'd3, 7'd78, 7'd20, 32'd0};//{'dest': 78, 'src': 20, 'op': 'move'}
    instructions[358] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[359] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[360] = {6'd8, 7'd80, 7'd78, 32'd19};//{'dest': 80, 'src': 78, 'srcb': 19, 'signed': False, 'op': '+'}
    instructions[361] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[362] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[363] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347800040, 'op': 'memory_read_request'}
    instructions[364] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[365] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347800040, 'op': 'memory_read_wait'}
    instructions[366] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347800040, 'element_size': 2, 'op': 'memory_read'}
    instructions[367] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[368] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[369] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[370] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[371] = {6'd3, 7'd76, 7'd20, 32'd0};//{'dest': 76, 'src': 20, 'op': 'move'}
    instructions[372] = {6'd13, 7'd20, 7'd20, 32'd1};//{'src': 20, 'right': 1, 'dest': 20, 'signed': False, 'op': '+', 'size': 2}
    instructions[373] = {6'd14, 7'd0, 7'd0, 32'd375};//{'label': 375, 'op': 'goto'}
    instructions[374] = {6'd14, 7'd0, 7'd0, 32'd376};//{'label': 376, 'op': 'goto'}
    instructions[375] = {6'd14, 7'd0, 7'd0, 32'd342};//{'label': 342, 'op': 'goto'}
    instructions[376] = {6'd6, 7'd0, 7'd18, 32'd0};//{'src': 18, 'op': 'jmp_to_reg'}
    instructions[377] = {6'd0, 7'd23, 7'd0, 32'd0};//{'dest': 23, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[378] = {6'd0, 7'd24, 7'd0, 32'd0};//{'dest': 24, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[379] = {6'd0, 7'd25, 7'd0, 32'd0};//{'dest': 25, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[380] = {6'd0, 7'd26, 7'd0, 32'd0};//{'dest': 26, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[381] = {6'd0, 7'd27, 7'd0, 32'd0};//{'dest': 27, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[382] = {6'd0, 7'd28, 7'd0, 32'd0};//{'dest': 28, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[383] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[384] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[385] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[386] = {6'd15, 7'd76, 7'd77, 32'd10000};//{'src': 77, 'right': 10000, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[387] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[388] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[389] = {6'd12, 7'd0, 7'd76, 32'd400};//{'src': 76, 'label': 400, 'op': 'jmp_if_false'}
    instructions[390] = {6'd3, 7'd76, 7'd27, 32'd0};//{'dest': 76, 'src': 27, 'op': 'move'}
    instructions[391] = {6'd13, 7'd27, 7'd27, 32'd1};//{'src': 27, 'right': 1, 'dest': 27, 'signed': False, 'op': '+', 'size': 2}
    instructions[392] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[393] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[394] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[395] = {6'd16, 7'd76, 7'd77, 32'd10000};//{'src': 77, 'right': 10000, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[396] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[397] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[398] = {6'd3, 7'd22, 7'd76, 32'd0};//{'dest': 22, 'src': 76, 'op': 'move'}
    instructions[399] = {6'd14, 7'd0, 7'd0, 32'd401};//{'label': 401, 'op': 'goto'}
    instructions[400] = {6'd14, 7'd0, 7'd0, 32'd402};//{'label': 402, 'op': 'goto'}
    instructions[401] = {6'd14, 7'd0, 7'd0, 32'd383};//{'label': 383, 'op': 'goto'}
    instructions[402] = {6'd3, 7'd77, 7'd27, 32'd0};//{'dest': 77, 'src': 27, 'op': 'move'}
    instructions[403] = {6'd3, 7'd78, 7'd28, 32'd0};//{'dest': 78, 'src': 28, 'op': 'move'}
    instructions[404] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[405] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[406] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[407] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[408] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[409] = {6'd12, 7'd0, 7'd76, 32'd423};//{'src': 76, 'label': 423, 'op': 'jmp_if_false'}
    instructions[410] = {6'd3, 7'd78, 7'd27, 32'd0};//{'dest': 78, 'src': 27, 'op': 'move'}
    instructions[411] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[412] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[413] = {6'd24, 7'd77, 7'd78, 32'd48};//{'src': 78, 'dest': 77, 'signed': False, 'op': '|', 'size': 2, 'type': 'int', 'left': 48}
    instructions[414] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[415] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[416] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[417] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[418] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[419] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[420] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[421] = {6'd3, 7'd28, 7'd76, 32'd0};//{'dest': 28, 'src': 76, 'op': 'move'}
    instructions[422] = {6'd14, 7'd0, 7'd0, 32'd423};//{'label': 423, 'op': 'goto'}
    instructions[423] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[424] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[425] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[426] = {6'd15, 7'd76, 7'd77, 32'd1000};//{'src': 77, 'right': 1000, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[427] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[428] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[429] = {6'd12, 7'd0, 7'd76, 32'd440};//{'src': 76, 'label': 440, 'op': 'jmp_if_false'}
    instructions[430] = {6'd3, 7'd76, 7'd26, 32'd0};//{'dest': 76, 'src': 26, 'op': 'move'}
    instructions[431] = {6'd13, 7'd26, 7'd26, 32'd1};//{'src': 26, 'right': 1, 'dest': 26, 'signed': False, 'op': '+', 'size': 2}
    instructions[432] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[433] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[434] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[435] = {6'd16, 7'd76, 7'd77, 32'd1000};//{'src': 77, 'right': 1000, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[436] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[437] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[438] = {6'd3, 7'd22, 7'd76, 32'd0};//{'dest': 22, 'src': 76, 'op': 'move'}
    instructions[439] = {6'd14, 7'd0, 7'd0, 32'd441};//{'label': 441, 'op': 'goto'}
    instructions[440] = {6'd14, 7'd0, 7'd0, 32'd442};//{'label': 442, 'op': 'goto'}
    instructions[441] = {6'd14, 7'd0, 7'd0, 32'd423};//{'label': 423, 'op': 'goto'}
    instructions[442] = {6'd3, 7'd77, 7'd26, 32'd0};//{'dest': 77, 'src': 26, 'op': 'move'}
    instructions[443] = {6'd3, 7'd78, 7'd28, 32'd0};//{'dest': 78, 'src': 28, 'op': 'move'}
    instructions[444] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[445] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[446] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[447] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[448] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[449] = {6'd12, 7'd0, 7'd76, 32'd463};//{'src': 76, 'label': 463, 'op': 'jmp_if_false'}
    instructions[450] = {6'd3, 7'd78, 7'd26, 32'd0};//{'dest': 78, 'src': 26, 'op': 'move'}
    instructions[451] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[452] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[453] = {6'd24, 7'd77, 7'd78, 32'd48};//{'src': 78, 'dest': 77, 'signed': False, 'op': '|', 'size': 2, 'type': 'int', 'left': 48}
    instructions[454] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[455] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[456] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[457] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[458] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[459] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[460] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[461] = {6'd3, 7'd28, 7'd76, 32'd0};//{'dest': 28, 'src': 76, 'op': 'move'}
    instructions[462] = {6'd14, 7'd0, 7'd0, 32'd463};//{'label': 463, 'op': 'goto'}
    instructions[463] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[464] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[465] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[466] = {6'd15, 7'd76, 7'd77, 32'd100};//{'src': 77, 'right': 100, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[467] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[468] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[469] = {6'd12, 7'd0, 7'd76, 32'd480};//{'src': 76, 'label': 480, 'op': 'jmp_if_false'}
    instructions[470] = {6'd3, 7'd76, 7'd25, 32'd0};//{'dest': 76, 'src': 25, 'op': 'move'}
    instructions[471] = {6'd13, 7'd25, 7'd25, 32'd1};//{'src': 25, 'right': 1, 'dest': 25, 'signed': False, 'op': '+', 'size': 2}
    instructions[472] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[473] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[474] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[475] = {6'd16, 7'd76, 7'd77, 32'd100};//{'src': 77, 'right': 100, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[476] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[477] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[478] = {6'd3, 7'd22, 7'd76, 32'd0};//{'dest': 22, 'src': 76, 'op': 'move'}
    instructions[479] = {6'd14, 7'd0, 7'd0, 32'd481};//{'label': 481, 'op': 'goto'}
    instructions[480] = {6'd14, 7'd0, 7'd0, 32'd482};//{'label': 482, 'op': 'goto'}
    instructions[481] = {6'd14, 7'd0, 7'd0, 32'd463};//{'label': 463, 'op': 'goto'}
    instructions[482] = {6'd3, 7'd77, 7'd25, 32'd0};//{'dest': 77, 'src': 25, 'op': 'move'}
    instructions[483] = {6'd3, 7'd78, 7'd28, 32'd0};//{'dest': 78, 'src': 28, 'op': 'move'}
    instructions[484] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[485] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[486] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[487] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[488] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[489] = {6'd12, 7'd0, 7'd76, 32'd503};//{'src': 76, 'label': 503, 'op': 'jmp_if_false'}
    instructions[490] = {6'd3, 7'd78, 7'd25, 32'd0};//{'dest': 78, 'src': 25, 'op': 'move'}
    instructions[491] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[492] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[493] = {6'd24, 7'd77, 7'd78, 32'd48};//{'src': 78, 'dest': 77, 'signed': False, 'op': '|', 'size': 2, 'type': 'int', 'left': 48}
    instructions[494] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[495] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[496] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[497] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[498] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[499] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[500] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[501] = {6'd3, 7'd28, 7'd76, 32'd0};//{'dest': 28, 'src': 76, 'op': 'move'}
    instructions[502] = {6'd14, 7'd0, 7'd0, 32'd503};//{'label': 503, 'op': 'goto'}
    instructions[503] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[504] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[505] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[506] = {6'd15, 7'd76, 7'd77, 32'd10};//{'src': 77, 'right': 10, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[507] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[508] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[509] = {6'd12, 7'd0, 7'd76, 32'd520};//{'src': 76, 'label': 520, 'op': 'jmp_if_false'}
    instructions[510] = {6'd3, 7'd76, 7'd24, 32'd0};//{'dest': 76, 'src': 24, 'op': 'move'}
    instructions[511] = {6'd13, 7'd24, 7'd24, 32'd1};//{'src': 24, 'right': 1, 'dest': 24, 'signed': False, 'op': '+', 'size': 2}
    instructions[512] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[513] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[514] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[515] = {6'd16, 7'd76, 7'd77, 32'd10};//{'src': 77, 'right': 10, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[516] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[517] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[518] = {6'd3, 7'd22, 7'd76, 32'd0};//{'dest': 22, 'src': 76, 'op': 'move'}
    instructions[519] = {6'd14, 7'd0, 7'd0, 32'd521};//{'label': 521, 'op': 'goto'}
    instructions[520] = {6'd14, 7'd0, 7'd0, 32'd522};//{'label': 522, 'op': 'goto'}
    instructions[521] = {6'd14, 7'd0, 7'd0, 32'd503};//{'label': 503, 'op': 'goto'}
    instructions[522] = {6'd3, 7'd77, 7'd24, 32'd0};//{'dest': 77, 'src': 24, 'op': 'move'}
    instructions[523] = {6'd3, 7'd78, 7'd28, 32'd0};//{'dest': 78, 'src': 28, 'op': 'move'}
    instructions[524] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[525] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[526] = {6'd17, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[527] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[528] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[529] = {6'd12, 7'd0, 7'd76, 32'd543};//{'src': 76, 'label': 543, 'op': 'jmp_if_false'}
    instructions[530] = {6'd3, 7'd78, 7'd24, 32'd0};//{'dest': 78, 'src': 24, 'op': 'move'}
    instructions[531] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[532] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[533] = {6'd24, 7'd77, 7'd78, 32'd48};//{'src': 78, 'dest': 77, 'signed': False, 'op': '|', 'size': 2, 'type': 'int', 'left': 48}
    instructions[534] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[535] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[536] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[537] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[538] = {6'd0, 7'd76, 7'd0, 32'd1};//{'dest': 76, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[539] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[540] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[541] = {6'd3, 7'd28, 7'd76, 32'd0};//{'dest': 28, 'src': 76, 'op': 'move'}
    instructions[542] = {6'd14, 7'd0, 7'd0, 32'd543};//{'label': 543, 'op': 'goto'}
    instructions[543] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[544] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[545] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[546] = {6'd15, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[547] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[548] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[549] = {6'd12, 7'd0, 7'd76, 32'd560};//{'src': 76, 'label': 560, 'op': 'jmp_if_false'}
    instructions[550] = {6'd3, 7'd76, 7'd23, 32'd0};//{'dest': 76, 'src': 23, 'op': 'move'}
    instructions[551] = {6'd13, 7'd23, 7'd23, 32'd1};//{'src': 23, 'right': 1, 'dest': 23, 'signed': False, 'op': '+', 'size': 2}
    instructions[552] = {6'd3, 7'd77, 7'd22, 32'd0};//{'dest': 77, 'src': 22, 'op': 'move'}
    instructions[553] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[554] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[555] = {6'd16, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[556] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[557] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[558] = {6'd3, 7'd22, 7'd76, 32'd0};//{'dest': 22, 'src': 76, 'op': 'move'}
    instructions[559] = {6'd14, 7'd0, 7'd0, 32'd561};//{'label': 561, 'op': 'goto'}
    instructions[560] = {6'd14, 7'd0, 7'd0, 32'd562};//{'label': 562, 'op': 'goto'}
    instructions[561] = {6'd14, 7'd0, 7'd0, 32'd543};//{'label': 543, 'op': 'goto'}
    instructions[562] = {6'd3, 7'd78, 7'd23, 32'd0};//{'dest': 78, 'src': 23, 'op': 'move'}
    instructions[563] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[564] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[565] = {6'd24, 7'd77, 7'd78, 32'd48};//{'src': 78, 'dest': 77, 'signed': False, 'op': '|', 'size': 2, 'type': 'int', 'left': 48}
    instructions[566] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[567] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[568] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[569] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[570] = {6'd6, 7'd0, 7'd21, 32'd0};//{'src': 21, 'op': 'jmp_to_reg'}
    instructions[571] = {6'd0, 7'd30, 7'd0, 32'd0};//{'dest': 30, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[572] = {6'd0, 7'd31, 7'd0, 32'd4};//{'dest': 31, 'literal': 4, 'op': 'literal'}
    instructions[573] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[574] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[575] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[576] = {6'd3, 7'd30, 7'd76, 32'd0};//{'dest': 30, 'src': 76, 'op': 'move'}
    instructions[577] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[578] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[579] = {6'd3, 7'd77, 7'd30, 32'd0};//{'dest': 77, 'src': 30, 'op': 'move'}
    instructions[580] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[581] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[582] = {6'd8, 7'd78, 7'd77, 32'd31};//{'dest': 78, 'src': 77, 'srcb': 31, 'signed': False, 'op': '+'}
    instructions[583] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[584] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[585] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347344016, 'op': 'memory_read_request'}
    instructions[586] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[587] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347344016, 'op': 'memory_read_wait'}
    instructions[588] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347344016, 'element_size': 2, 'op': 'memory_read'}
    instructions[589] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[590] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[591] = {6'd12, 7'd0, 7'd76, 32'd595};//{'src': 76, 'label': 595, 'op': 'jmp_if_false'}
    instructions[592] = {6'd3, 7'd76, 7'd30, 32'd0};//{'dest': 76, 'src': 30, 'op': 'move'}
    instructions[593] = {6'd13, 7'd30, 7'd30, 32'd1};//{'src': 30, 'right': 1, 'dest': 30, 'signed': False, 'op': '+', 'size': 2}
    instructions[594] = {6'd14, 7'd0, 7'd0, 32'd596};//{'label': 596, 'op': 'goto'}
    instructions[595] = {6'd14, 7'd0, 7'd0, 32'd597};//{'label': 597, 'op': 'goto'}
    instructions[596] = {6'd14, 7'd0, 7'd0, 32'd577};//{'label': 577, 'op': 'goto'}
    instructions[597] = {6'd3, 7'd77, 7'd30, 32'd0};//{'dest': 77, 'src': 30, 'op': 'move'}
    instructions[598] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[599] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[600] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[601] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[602] = {6'd3, 7'd81, 7'd31, 32'd0};//{'dest': 81, 'src': 31, 'op': 'move'}
    instructions[603] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[604] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[605] = {6'd3, 7'd19, 7'd81, 32'd0};//{'dest': 19, 'src': 81, 'op': 'move'}
    instructions[606] = {6'd1, 7'd18, 7'd0, 32'd341};//{'dest': 18, 'label': 341, 'op': 'jmp_and_link'}
    instructions[607] = {6'd1, 7'd17, 7'd0, 32'd323};//{'dest': 17, 'label': 323, 'op': 'jmp_and_link'}
    instructions[608] = {6'd6, 7'd0, 7'd29, 32'd0};//{'src': 29, 'op': 'jmp_to_reg'}
    instructions[609] = {6'd0, 7'd34, 7'd0, 32'd0};//{'dest': 34, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[610] = {6'd0, 7'd35, 7'd0, 32'd0};//{'dest': 35, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[611] = {6'd0, 7'd36, 7'd0, 32'd0};//{'dest': 36, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[612] = {6'd0, 7'd37, 7'd0, 32'd0};//{'dest': 37, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[613] = {6'd0, 7'd38, 7'd0, 32'd0};//{'dest': 38, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[614] = {6'd0, 7'd39, 7'd0, 32'd132};//{'dest': 39, 'literal': 132, 'op': 'literal'}
    instructions[615] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[616] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[617] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[618] = {6'd3, 7'd35, 7'd76, 32'd0};//{'dest': 35, 'src': 76, 'op': 'move'}
    instructions[619] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[620] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[621] = {6'd3, 7'd77, 7'd35, 32'd0};//{'dest': 77, 'src': 35, 'op': 'move'}
    instructions[622] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[623] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[624] = {6'd8, 7'd78, 7'd77, 32'd33};//{'dest': 78, 'src': 77, 'srcb': 33, 'signed': False, 'op': '+'}
    instructions[625] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[626] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[627] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347355800, 'op': 'memory_read_request'}
    instructions[628] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[629] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347355800, 'op': 'memory_read_wait'}
    instructions[630] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347355800, 'element_size': 2, 'op': 'memory_read'}
    instructions[631] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[632] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[633] = {6'd12, 7'd0, 7'd76, 32'd637};//{'src': 76, 'label': 637, 'op': 'jmp_if_false'}
    instructions[634] = {6'd3, 7'd76, 7'd35, 32'd0};//{'dest': 76, 'src': 35, 'op': 'move'}
    instructions[635] = {6'd13, 7'd35, 7'd35, 32'd1};//{'src': 35, 'right': 1, 'dest': 35, 'signed': False, 'op': '+', 'size': 2}
    instructions[636] = {6'd14, 7'd0, 7'd0, 32'd638};//{'label': 638, 'op': 'goto'}
    instructions[637] = {6'd14, 7'd0, 7'd0, 32'd639};//{'label': 639, 'op': 'goto'}
    instructions[638] = {6'd14, 7'd0, 7'd0, 32'd619};//{'label': 619, 'op': 'goto'}
    instructions[639] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[640] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[641] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[642] = {6'd3, 7'd34, 7'd76, 32'd0};//{'dest': 34, 'src': 76, 'op': 'move'}
    instructions[643] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[644] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[645] = {6'd3, 7'd77, 7'd34, 32'd0};//{'dest': 77, 'src': 34, 'op': 'move'}
    instructions[646] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[647] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[648] = {6'd8, 7'd78, 7'd77, 32'd39};//{'dest': 78, 'src': 77, 'srcb': 39, 'signed': False, 'op': '+'}
    instructions[649] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[650] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[651] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347356664, 'op': 'memory_read_request'}
    instructions[652] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[653] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347356664, 'op': 'memory_read_wait'}
    instructions[654] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347356664, 'element_size': 2, 'op': 'memory_read'}
    instructions[655] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[656] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[657] = {6'd12, 7'd0, 7'd76, 32'd661};//{'src': 76, 'label': 661, 'op': 'jmp_if_false'}
    instructions[658] = {6'd3, 7'd76, 7'd34, 32'd0};//{'dest': 76, 'src': 34, 'op': 'move'}
    instructions[659] = {6'd13, 7'd34, 7'd34, 32'd1};//{'src': 34, 'right': 1, 'dest': 34, 'signed': False, 'op': '+', 'size': 2}
    instructions[660] = {6'd14, 7'd0, 7'd0, 32'd662};//{'label': 662, 'op': 'goto'}
    instructions[661] = {6'd14, 7'd0, 7'd0, 32'd663};//{'label': 663, 'op': 'goto'}
    instructions[662] = {6'd14, 7'd0, 7'd0, 32'd643};//{'label': 643, 'op': 'goto'}
    instructions[663] = {6'd3, 7'd77, 7'd34, 32'd0};//{'dest': 77, 'src': 34, 'op': 'move'}
    instructions[664] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[665] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[666] = {6'd13, 7'd76, 7'd77, 32'd5};//{'src': 77, 'right': 5, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[667] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[668] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[669] = {6'd3, 7'd36, 7'd76, 32'd0};//{'dest': 36, 'src': 76, 'op': 'move'}
    instructions[670] = {6'd3, 7'd77, 7'd35, 32'd0};//{'dest': 77, 'src': 35, 'op': 'move'}
    instructions[671] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[672] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[673] = {6'd25, 7'd76, 7'd77, 32'd9};//{'src': 77, 'right': 9, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[674] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[675] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[676] = {6'd12, 7'd0, 7'd76, 32'd680};//{'src': 76, 'label': 680, 'op': 'jmp_if_false'}
    instructions[677] = {6'd3, 7'd76, 7'd36, 32'd0};//{'dest': 76, 'src': 36, 'op': 'move'}
    instructions[678] = {6'd13, 7'd36, 7'd36, 32'd1};//{'src': 36, 'right': 1, 'dest': 36, 'signed': False, 'op': '+', 'size': 2}
    instructions[679] = {6'd14, 7'd0, 7'd0, 32'd680};//{'label': 680, 'op': 'goto'}
    instructions[680] = {6'd3, 7'd77, 7'd35, 32'd0};//{'dest': 77, 'src': 35, 'op': 'move'}
    instructions[681] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[682] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[683] = {6'd25, 7'd76, 7'd77, 32'd99};//{'src': 77, 'right': 99, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[684] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[685] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[686] = {6'd12, 7'd0, 7'd76, 32'd690};//{'src': 76, 'label': 690, 'op': 'jmp_if_false'}
    instructions[687] = {6'd3, 7'd76, 7'd36, 32'd0};//{'dest': 76, 'src': 36, 'op': 'move'}
    instructions[688] = {6'd13, 7'd36, 7'd36, 32'd1};//{'src': 36, 'right': 1, 'dest': 36, 'signed': False, 'op': '+', 'size': 2}
    instructions[689] = {6'd14, 7'd0, 7'd0, 32'd690};//{'label': 690, 'op': 'goto'}
    instructions[690] = {6'd3, 7'd77, 7'd35, 32'd0};//{'dest': 77, 'src': 35, 'op': 'move'}
    instructions[691] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[692] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[693] = {6'd25, 7'd76, 7'd77, 32'd999};//{'src': 77, 'right': 999, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[694] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[695] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[696] = {6'd12, 7'd0, 7'd76, 32'd700};//{'src': 76, 'label': 700, 'op': 'jmp_if_false'}
    instructions[697] = {6'd3, 7'd76, 7'd36, 32'd0};//{'dest': 76, 'src': 36, 'op': 'move'}
    instructions[698] = {6'd13, 7'd36, 7'd36, 32'd1};//{'src': 36, 'right': 1, 'dest': 36, 'signed': False, 'op': '+', 'size': 2}
    instructions[699] = {6'd14, 7'd0, 7'd0, 32'd700};//{'label': 700, 'op': 'goto'}
    instructions[700] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[701] = {6'd3, 7'd77, 7'd36, 32'd0};//{'dest': 77, 'src': 36, 'op': 'move'}
    instructions[702] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[703] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[704] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[705] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[706] = {6'd3, 7'd82, 7'd39, 32'd0};//{'dest': 82, 'src': 39, 'op': 'move'}
    instructions[707] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[708] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[709] = {6'd3, 7'd19, 7'd82, 32'd0};//{'dest': 19, 'src': 82, 'op': 'move'}
    instructions[710] = {6'd1, 7'd18, 7'd0, 32'd341};//{'dest': 18, 'label': 341, 'op': 'jmp_and_link'}
    instructions[711] = {6'd3, 7'd77, 7'd35, 32'd0};//{'dest': 77, 'src': 35, 'op': 'move'}
    instructions[712] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[713] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[714] = {6'd3, 7'd22, 7'd77, 32'd0};//{'dest': 22, 'src': 77, 'op': 'move'}
    instructions[715] = {6'd1, 7'd21, 7'd0, 32'd377};//{'dest': 21, 'label': 377, 'op': 'jmp_and_link'}
    instructions[716] = {6'd0, 7'd40, 7'd0, 32'd247};//{'dest': 40, 'literal': 247, 'op': 'literal'}
    instructions[717] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[718] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[719] = {6'd3, 7'd83, 7'd40, 32'd0};//{'dest': 83, 'src': 40, 'op': 'move'}
    instructions[720] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[721] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[722] = {6'd3, 7'd19, 7'd83, 32'd0};//{'dest': 19, 'src': 83, 'op': 'move'}
    instructions[723] = {6'd1, 7'd18, 7'd0, 32'd341};//{'dest': 18, 'label': 341, 'op': 'jmp_and_link'}
    instructions[724] = {6'd1, 7'd17, 7'd0, 32'd323};//{'dest': 17, 'label': 323, 'op': 'jmp_and_link'}
    instructions[725] = {6'd3, 7'd76, 7'd35, 32'd0};//{'dest': 76, 'src': 35, 'op': 'move'}
    instructions[726] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[727] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[728] = {6'd3, 7'd36, 7'd76, 32'd0};//{'dest': 36, 'src': 76, 'op': 'move'}
    instructions[729] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[730] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[731] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[732] = {6'd3, 7'd37, 7'd76, 32'd0};//{'dest': 37, 'src': 76, 'op': 'move'}
    instructions[733] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[734] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[735] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[736] = {6'd3, 7'd38, 7'd76, 32'd0};//{'dest': 38, 'src': 76, 'op': 'move'}
    instructions[737] = {6'd3, 7'd77, 7'd36, 32'd0};//{'dest': 77, 'src': 36, 'op': 'move'}
    instructions[738] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[739] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[740] = {6'd15, 7'd76, 7'd77, 32'd1046};//{'src': 77, 'right': 1046, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[741] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[742] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[743] = {6'd12, 7'd0, 7'd76, 32'd790};//{'src': 76, 'label': 790, 'op': 'jmp_if_false'}
    instructions[744] = {6'd3, 7'd77, 7'd36, 32'd0};//{'dest': 77, 'src': 36, 'op': 'move'}
    instructions[745] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[746] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[747] = {6'd16, 7'd76, 7'd77, 32'd1046};//{'src': 77, 'right': 1046, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[748] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[749] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[750] = {6'd3, 7'd36, 7'd76, 32'd0};//{'dest': 36, 'src': 76, 'op': 'move'}
    instructions[751] = {6'd0, 7'd77, 7'd0, 32'd1046};//{'dest': 77, 'literal': 1046, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[752] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[753] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[754] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[755] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[756] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[757] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[758] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[759] = {6'd3, 7'd38, 7'd76, 32'd0};//{'dest': 38, 'src': 76, 'op': 'move'}
    instructions[760] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[761] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[762] = {6'd3, 7'd77, 7'd38, 32'd0};//{'dest': 77, 'src': 38, 'op': 'move'}
    instructions[763] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[764] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[765] = {6'd26, 7'd76, 7'd77, 32'd1046};//{'src': 77, 'right': 1046, 'dest': 76, 'signed': False, 'op': '<', 'type': 'int', 'size': 2}
    instructions[766] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[767] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[768] = {6'd12, 7'd0, 7'd76, 32'd788};//{'src': 76, 'label': 788, 'op': 'jmp_if_false'}
    instructions[769] = {6'd3, 7'd78, 7'd37, 32'd0};//{'dest': 78, 'src': 37, 'op': 'move'}
    instructions[770] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[771] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[772] = {6'd8, 7'd80, 7'd78, 32'd33};//{'dest': 80, 'src': 78, 'srcb': 33, 'signed': False, 'op': '+'}
    instructions[773] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[774] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[775] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347404952, 'op': 'memory_read_request'}
    instructions[776] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[777] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347404952, 'op': 'memory_read_wait'}
    instructions[778] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347404952, 'element_size': 2, 'op': 'memory_read'}
    instructions[779] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[780] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[781] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[782] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[783] = {6'd3, 7'd76, 7'd37, 32'd0};//{'dest': 76, 'src': 37, 'op': 'move'}
    instructions[784] = {6'd13, 7'd37, 7'd37, 32'd1};//{'src': 37, 'right': 1, 'dest': 37, 'signed': False, 'op': '+', 'size': 2}
    instructions[785] = {6'd3, 7'd76, 7'd38, 32'd0};//{'dest': 76, 'src': 38, 'op': 'move'}
    instructions[786] = {6'd13, 7'd38, 7'd38, 32'd1};//{'src': 38, 'right': 1, 'dest': 38, 'signed': False, 'op': '+', 'size': 2}
    instructions[787] = {6'd14, 7'd0, 7'd0, 32'd760};//{'label': 760, 'op': 'goto'}
    instructions[788] = {6'd1, 7'd17, 7'd0, 32'd323};//{'dest': 17, 'label': 323, 'op': 'jmp_and_link'}
    instructions[789] = {6'd14, 7'd0, 7'd0, 32'd791};//{'label': 791, 'op': 'goto'}
    instructions[790] = {6'd14, 7'd0, 7'd0, 32'd792};//{'label': 792, 'op': 'goto'}
    instructions[791] = {6'd14, 7'd0, 7'd0, 32'd737};//{'label': 737, 'op': 'goto'}
    instructions[792] = {6'd3, 7'd77, 7'd36, 32'd0};//{'dest': 77, 'src': 36, 'op': 'move'}
    instructions[793] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[794] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[795] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[796] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[797] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[798] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[799] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[800] = {6'd3, 7'd38, 7'd76, 32'd0};//{'dest': 38, 'src': 76, 'op': 'move'}
    instructions[801] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[802] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[803] = {6'd3, 7'd77, 7'd38, 32'd0};//{'dest': 77, 'src': 38, 'op': 'move'}
    instructions[804] = {6'd3, 7'd78, 7'd36, 32'd0};//{'dest': 78, 'src': 36, 'op': 'move'}
    instructions[805] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[806] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[807] = {6'd27, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '<', 'type': 'int', 'size': 2}
    instructions[808] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[809] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[810] = {6'd12, 7'd0, 7'd76, 32'd830};//{'src': 76, 'label': 830, 'op': 'jmp_if_false'}
    instructions[811] = {6'd3, 7'd78, 7'd37, 32'd0};//{'dest': 78, 'src': 37, 'op': 'move'}
    instructions[812] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[813] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[814] = {6'd8, 7'd80, 7'd78, 32'd33};//{'dest': 80, 'src': 78, 'srcb': 33, 'signed': False, 'op': '+'}
    instructions[815] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[816] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[817] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347407112, 'op': 'memory_read_request'}
    instructions[818] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[819] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347407112, 'op': 'memory_read_wait'}
    instructions[820] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347407112, 'element_size': 2, 'op': 'memory_read'}
    instructions[821] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[822] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[823] = {6'd3, 7'd16, 7'd77, 32'd0};//{'dest': 16, 'src': 77, 'op': 'move'}
    instructions[824] = {6'd1, 7'd15, 7'd0, 32'd284};//{'dest': 15, 'label': 284, 'op': 'jmp_and_link'}
    instructions[825] = {6'd3, 7'd76, 7'd37, 32'd0};//{'dest': 76, 'src': 37, 'op': 'move'}
    instructions[826] = {6'd13, 7'd37, 7'd37, 32'd1};//{'src': 37, 'right': 1, 'dest': 37, 'signed': False, 'op': '+', 'size': 2}
    instructions[827] = {6'd3, 7'd76, 7'd38, 32'd0};//{'dest': 76, 'src': 38, 'op': 'move'}
    instructions[828] = {6'd13, 7'd38, 7'd38, 32'd1};//{'src': 38, 'right': 1, 'dest': 38, 'signed': False, 'op': '+', 'size': 2}
    instructions[829] = {6'd14, 7'd0, 7'd0, 32'd801};//{'label': 801, 'op': 'goto'}
    instructions[830] = {6'd1, 7'd17, 7'd0, 32'd323};//{'dest': 17, 'label': 323, 'op': 'jmp_and_link'}
    instructions[831] = {6'd6, 7'd0, 7'd32, 32'd0};//{'src': 32, 'op': 'jmp_to_reg'}
    instructions[832] = {6'd0, 7'd45, 7'd0, 32'd0};//{'dest': 45, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[833] = {6'd0, 7'd46, 7'd0, 32'd0};//{'dest': 46, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[834] = {6'd0, 7'd47, 7'd0, 32'd0};//{'dest': 47, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[835] = {6'd0, 7'd48, 7'd0, 32'd0};//{'dest': 48, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[836] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[837] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[838] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[839] = {6'd3, 7'd45, 7'd76, 32'd0};//{'dest': 45, 'src': 76, 'op': 'move'}
    instructions[840] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[841] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[842] = {6'd3, 7'd77, 7'd45, 32'd0};//{'dest': 77, 'src': 45, 'op': 'move'}
    instructions[843] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[844] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[845] = {6'd8, 7'd78, 7'd77, 32'd43};//{'dest': 78, 'src': 77, 'srcb': 43, 'signed': False, 'op': '+'}
    instructions[846] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[847] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[848] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347397552, 'op': 'memory_read_request'}
    instructions[849] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[850] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347397552, 'op': 'memory_read_wait'}
    instructions[851] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347397552, 'element_size': 2, 'op': 'memory_read'}
    instructions[852] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[853] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[854] = {6'd12, 7'd0, 7'd76, 32'd858};//{'src': 76, 'label': 858, 'op': 'jmp_if_false'}
    instructions[855] = {6'd3, 7'd76, 7'd45, 32'd0};//{'dest': 76, 'src': 45, 'op': 'move'}
    instructions[856] = {6'd13, 7'd45, 7'd45, 32'd1};//{'src': 45, 'right': 1, 'dest': 45, 'signed': False, 'op': '+', 'size': 2}
    instructions[857] = {6'd14, 7'd0, 7'd0, 32'd859};//{'label': 859, 'op': 'goto'}
    instructions[858] = {6'd14, 7'd0, 7'd0, 32'd860};//{'label': 860, 'op': 'goto'}
    instructions[859] = {6'd14, 7'd0, 7'd0, 32'd840};//{'label': 840, 'op': 'goto'}
    instructions[860] = {6'd3, 7'd77, 7'd45, 32'd0};//{'dest': 77, 'src': 45, 'op': 'move'}
    instructions[861] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[862] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[863] = {6'd13, 7'd76, 7'd77, 32'd5};//{'src': 77, 'right': 5, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[864] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[865] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[866] = {6'd3, 7'd46, 7'd76, 32'd0};//{'dest': 46, 'src': 76, 'op': 'move'}
    instructions[867] = {6'd3, 7'd77, 7'd44, 32'd0};//{'dest': 77, 'src': 44, 'op': 'move'}
    instructions[868] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[869] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[870] = {6'd25, 7'd76, 7'd77, 32'd9};//{'src': 77, 'right': 9, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[871] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[872] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[873] = {6'd12, 7'd0, 7'd76, 32'd877};//{'src': 76, 'label': 877, 'op': 'jmp_if_false'}
    instructions[874] = {6'd3, 7'd76, 7'd46, 32'd0};//{'dest': 76, 'src': 46, 'op': 'move'}
    instructions[875] = {6'd13, 7'd46, 7'd46, 32'd1};//{'src': 46, 'right': 1, 'dest': 46, 'signed': False, 'op': '+', 'size': 2}
    instructions[876] = {6'd14, 7'd0, 7'd0, 32'd877};//{'label': 877, 'op': 'goto'}
    instructions[877] = {6'd3, 7'd77, 7'd44, 32'd0};//{'dest': 77, 'src': 44, 'op': 'move'}
    instructions[878] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[879] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[880] = {6'd25, 7'd76, 7'd77, 32'd99};//{'src': 77, 'right': 99, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[881] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[882] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[883] = {6'd12, 7'd0, 7'd76, 32'd887};//{'src': 76, 'label': 887, 'op': 'jmp_if_false'}
    instructions[884] = {6'd3, 7'd76, 7'd46, 32'd0};//{'dest': 76, 'src': 46, 'op': 'move'}
    instructions[885] = {6'd13, 7'd46, 7'd46, 32'd1};//{'src': 46, 'right': 1, 'dest': 46, 'signed': False, 'op': '+', 'size': 2}
    instructions[886] = {6'd14, 7'd0, 7'd0, 32'd887};//{'label': 887, 'op': 'goto'}
    instructions[887] = {6'd3, 7'd77, 7'd44, 32'd0};//{'dest': 77, 'src': 44, 'op': 'move'}
    instructions[888] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[889] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[890] = {6'd25, 7'd76, 7'd77, 32'd999};//{'src': 77, 'right': 999, 'dest': 76, 'signed': False, 'op': '>', 'type': 'int', 'size': 2}
    instructions[891] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[892] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[893] = {6'd12, 7'd0, 7'd76, 32'd897};//{'src': 76, 'label': 897, 'op': 'jmp_if_false'}
    instructions[894] = {6'd3, 7'd76, 7'd46, 32'd0};//{'dest': 76, 'src': 46, 'op': 'move'}
    instructions[895] = {6'd13, 7'd46, 7'd46, 32'd1};//{'src': 46, 'right': 1, 'dest': 46, 'signed': False, 'op': '+', 'size': 2}
    instructions[896] = {6'd14, 7'd0, 7'd0, 32'd897};//{'label': 897, 'op': 'goto'}
    instructions[897] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[898] = {6'd3, 7'd77, 7'd46, 32'd0};//{'dest': 77, 'src': 46, 'op': 'move'}
    instructions[899] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[900] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[901] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[902] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[903] = {6'd3, 7'd79, 7'd43, 32'd0};//{'dest': 79, 'src': 43, 'op': 'move'}
    instructions[904] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[905] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[906] = {6'd3, 7'd19, 7'd79, 32'd0};//{'dest': 19, 'src': 79, 'op': 'move'}
    instructions[907] = {6'd1, 7'd18, 7'd0, 32'd341};//{'dest': 18, 'label': 341, 'op': 'jmp_and_link'}
    instructions[908] = {6'd3, 7'd77, 7'd44, 32'd0};//{'dest': 77, 'src': 44, 'op': 'move'}
    instructions[909] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[910] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[911] = {6'd3, 7'd22, 7'd77, 32'd0};//{'dest': 22, 'src': 77, 'op': 'move'}
    instructions[912] = {6'd1, 7'd21, 7'd0, 32'd377};//{'dest': 21, 'label': 377, 'op': 'jmp_and_link'}
    instructions[913] = {6'd0, 7'd49, 7'd0, 32'd256};//{'dest': 49, 'literal': 256, 'op': 'literal'}
    instructions[914] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[915] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[916] = {6'd3, 7'd83, 7'd49, 32'd0};//{'dest': 83, 'src': 49, 'op': 'move'}
    instructions[917] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[918] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[919] = {6'd3, 7'd19, 7'd83, 32'd0};//{'dest': 19, 'src': 83, 'op': 'move'}
    instructions[920] = {6'd1, 7'd18, 7'd0, 32'd341};//{'dest': 18, 'label': 341, 'op': 'jmp_and_link'}
    instructions[921] = {6'd1, 7'd17, 7'd0, 32'd323};//{'dest': 17, 'label': 323, 'op': 'jmp_and_link'}
    instructions[922] = {6'd3, 7'd76, 7'd44, 32'd0};//{'dest': 76, 'src': 44, 'op': 'move'}
    instructions[923] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[924] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[925] = {6'd3, 7'd46, 7'd76, 32'd0};//{'dest': 46, 'src': 76, 'op': 'move'}
    instructions[926] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[927] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[928] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[929] = {6'd3, 7'd47, 7'd76, 32'd0};//{'dest': 47, 'src': 76, 'op': 'move'}
    instructions[930] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[931] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[932] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[933] = {6'd3, 7'd48, 7'd76, 32'd0};//{'dest': 48, 'src': 76, 'op': 'move'}
    instructions[934] = {6'd3, 7'd77, 7'd46, 32'd0};//{'dest': 77, 'src': 46, 'op': 'move'}
    instructions[935] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[936] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[937] = {6'd15, 7'd76, 7'd77, 32'd1046};//{'src': 77, 'right': 1046, 'dest': 76, 'signed': False, 'op': '>=', 'type': 'int', 'size': 2}
    instructions[938] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[939] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[940] = {6'd12, 7'd0, 7'd76, 32'd986};//{'src': 76, 'label': 986, 'op': 'jmp_if_false'}
    instructions[941] = {6'd3, 7'd77, 7'd46, 32'd0};//{'dest': 77, 'src': 46, 'op': 'move'}
    instructions[942] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[943] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[944] = {6'd16, 7'd76, 7'd77, 32'd1046};//{'src': 77, 'right': 1046, 'dest': 76, 'signed': False, 'op': '-', 'type': 'int', 'size': 2}
    instructions[945] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[946] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[947] = {6'd3, 7'd46, 7'd76, 32'd0};//{'dest': 46, 'src': 76, 'op': 'move'}
    instructions[948] = {6'd0, 7'd77, 7'd0, 32'd1046};//{'dest': 77, 'literal': 1046, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[949] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[950] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[951] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[952] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[953] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[954] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[955] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[956] = {6'd3, 7'd48, 7'd76, 32'd0};//{'dest': 48, 'src': 76, 'op': 'move'}
    instructions[957] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[958] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[959] = {6'd3, 7'd77, 7'd48, 32'd0};//{'dest': 77, 'src': 48, 'op': 'move'}
    instructions[960] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[961] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[962] = {6'd26, 7'd76, 7'd77, 32'd523};//{'src': 77, 'right': 523, 'dest': 76, 'signed': False, 'op': '<', 'type': 'int', 'size': 2}
    instructions[963] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[964] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[965] = {6'd12, 7'd0, 7'd76, 32'd985};//{'src': 76, 'label': 985, 'op': 'jmp_if_false'}
    instructions[966] = {6'd3, 7'd78, 7'd47, 32'd0};//{'dest': 78, 'src': 47, 'op': 'move'}
    instructions[967] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[968] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[969] = {6'd8, 7'd80, 7'd78, 32'd42};//{'dest': 80, 'src': 78, 'srcb': 42, 'signed': False, 'op': '+'}
    instructions[970] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[971] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[972] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347404744, 'op': 'memory_read_request'}
    instructions[973] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[974] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347404744, 'op': 'memory_read_wait'}
    instructions[975] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347404744, 'element_size': 2, 'op': 'memory_read'}
    instructions[976] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[977] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[978] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[979] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[980] = {6'd3, 7'd76, 7'd47, 32'd0};//{'dest': 76, 'src': 47, 'op': 'move'}
    instructions[981] = {6'd13, 7'd47, 7'd47, 32'd1};//{'src': 47, 'right': 1, 'dest': 47, 'signed': False, 'op': '+', 'size': 2}
    instructions[982] = {6'd3, 7'd76, 7'd48, 32'd0};//{'dest': 76, 'src': 48, 'op': 'move'}
    instructions[983] = {6'd13, 7'd48, 7'd48, 32'd1};//{'src': 48, 'right': 1, 'dest': 48, 'signed': False, 'op': '+', 'size': 2}
    instructions[984] = {6'd14, 7'd0, 7'd0, 32'd957};//{'label': 957, 'op': 'goto'}
    instructions[985] = {6'd14, 7'd0, 7'd0, 32'd987};//{'label': 987, 'op': 'goto'}
    instructions[986] = {6'd14, 7'd0, 7'd0, 32'd988};//{'label': 988, 'op': 'goto'}
    instructions[987] = {6'd14, 7'd0, 7'd0, 32'd934};//{'label': 934, 'op': 'goto'}
    instructions[988] = {6'd3, 7'd77, 7'd46, 32'd0};//{'dest': 77, 'src': 46, 'op': 'move'}
    instructions[989] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[990] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[991] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[992] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[993] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[994] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[995] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[996] = {6'd3, 7'd48, 7'd76, 32'd0};//{'dest': 48, 'src': 76, 'op': 'move'}
    instructions[997] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[998] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[999] = {6'd3, 7'd77, 7'd48, 32'd0};//{'dest': 77, 'src': 48, 'op': 'move'}
    instructions[1000] = {6'd3, 7'd80, 7'd46, 32'd0};//{'dest': 80, 'src': 46, 'op': 'move'}
    instructions[1001] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1002] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1003] = {6'd28, 7'd78, 7'd80, 32'd1};//{'src': 80, 'right': 1, 'dest': 78, 'signed': False, 'op': '>>', 'type': 'int', 'size': 2}
    instructions[1004] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1005] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1006] = {6'd27, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '<', 'type': 'int', 'size': 2}
    instructions[1007] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1008] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1009] = {6'd12, 7'd0, 7'd76, 32'd1029};//{'src': 76, 'label': 1029, 'op': 'jmp_if_false'}
    instructions[1010] = {6'd3, 7'd78, 7'd47, 32'd0};//{'dest': 78, 'src': 47, 'op': 'move'}
    instructions[1011] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1012] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1013] = {6'd8, 7'd80, 7'd78, 32'd42};//{'dest': 80, 'src': 78, 'srcb': 42, 'signed': False, 'op': '+'}
    instructions[1014] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1015] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1016] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347468408, 'op': 'memory_read_request'}
    instructions[1017] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1018] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347468408, 'op': 'memory_read_wait'}
    instructions[1019] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347468408, 'element_size': 2, 'op': 'memory_read'}
    instructions[1020] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1021] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1022] = {6'd3, 7'd1, 7'd77, 32'd0};//{'dest': 1, 'src': 77, 'op': 'move'}
    instructions[1023] = {6'd1, 7'd0, 7'd0, 32'd4};//{'dest': 0, 'label': 4, 'op': 'jmp_and_link'}
    instructions[1024] = {6'd3, 7'd76, 7'd47, 32'd0};//{'dest': 76, 'src': 47, 'op': 'move'}
    instructions[1025] = {6'd13, 7'd47, 7'd47, 32'd1};//{'src': 47, 'right': 1, 'dest': 47, 'signed': False, 'op': '+', 'size': 2}
    instructions[1026] = {6'd3, 7'd76, 7'd48, 32'd0};//{'dest': 76, 'src': 48, 'op': 'move'}
    instructions[1027] = {6'd13, 7'd48, 7'd48, 32'd1};//{'src': 48, 'right': 1, 'dest': 48, 'signed': False, 'op': '+', 'size': 2}
    instructions[1028] = {6'd14, 7'd0, 7'd0, 32'd997};//{'label': 997, 'op': 'goto'}
    instructions[1029] = {6'd6, 7'd0, 7'd41, 32'd0};//{'src': 41, 'op': 'jmp_to_reg'}
    instructions[1030] = {6'd3, 7'd56, 7'd54, 32'd0};//{'dest': 56, 'src': 54, 'op': 'move'}
    instructions[1031] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1032] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1033] = {6'd3, 7'd77, 7'd56, 32'd0};//{'dest': 77, 'src': 56, 'op': 'move'}
    instructions[1034] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1035] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1036] = {6'd8, 7'd78, 7'd77, 32'd52};//{'dest': 78, 'src': 77, 'srcb': 52, 'signed': False, 'op': '+'}
    instructions[1037] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1038] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1039] = {6'd9, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347443760, 'op': 'memory_read_request'}
    instructions[1040] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1041] = {6'd10, 7'd0, 7'd78, 32'd0};//{'element_size': 2, 'src': 78, 'sequence': 140495347443760, 'op': 'memory_read_wait'}
    instructions[1042] = {6'd11, 7'd76, 7'd78, 32'd0};//{'dest': 76, 'src': 78, 'sequence': 140495347443760, 'element_size': 2, 'op': 'memory_read'}
    instructions[1043] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1044] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1045] = {6'd12, 7'd0, 7'd76, 32'd1121};//{'src': 76, 'label': 1121, 'op': 'jmp_if_false'}
    instructions[1046] = {6'd3, 7'd78, 7'd56, 32'd0};//{'dest': 78, 'src': 56, 'op': 'move'}
    instructions[1047] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1048] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1049] = {6'd8, 7'd80, 7'd78, 32'd52};//{'dest': 80, 'src': 78, 'srcb': 52, 'signed': False, 'op': '+'}
    instructions[1050] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1051] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1052] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347478968, 'op': 'memory_read_request'}
    instructions[1053] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1054] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347478968, 'op': 'memory_read_wait'}
    instructions[1055] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347478968, 'element_size': 2, 'op': 'memory_read'}
    instructions[1056] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1057] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1058] = {6'd3, 7'd12, 7'd77, 32'd0};//{'dest': 12, 'src': 77, 'op': 'move'}
    instructions[1059] = {6'd1, 7'd11, 7'd0, 32'd257};//{'dest': 11, 'label': 257, 'op': 'jmp_and_link'}
    instructions[1060] = {6'd0, 7'd57, 7'd0, 32'd263};//{'dest': 57, 'literal': 263, 'op': 'literal'}
    instructions[1061] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1062] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1063] = {6'd3, 7'd79, 7'd57, 32'd0};//{'dest': 79, 'src': 57, 'op': 'move'}
    instructions[1064] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1065] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1066] = {6'd3, 7'd5, 7'd79, 32'd0};//{'dest': 5, 'src': 79, 'op': 'move'}
    instructions[1067] = {6'd1, 7'd4, 7'd0, 32'd14};//{'dest': 4, 'label': 14, 'op': 'jmp_and_link'}
    instructions[1068] = {6'd3, 7'd77, 7'd56, 32'd0};//{'dest': 77, 'src': 56, 'op': 'move'}
    instructions[1069] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1070] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1071] = {6'd3, 7'd12, 7'd77, 32'd0};//{'dest': 12, 'src': 77, 'op': 'move'}
    instructions[1072] = {6'd1, 7'd11, 7'd0, 32'd257};//{'dest': 11, 'label': 257, 'op': 'jmp_and_link'}
    instructions[1073] = {6'd0, 7'd58, 7'd0, 32'd265};//{'dest': 58, 'literal': 265, 'op': 'literal'}
    instructions[1074] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1075] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1076] = {6'd3, 7'd79, 7'd58, 32'd0};//{'dest': 79, 'src': 58, 'op': 'move'}
    instructions[1077] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1078] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1079] = {6'd3, 7'd5, 7'd79, 32'd0};//{'dest': 5, 'src': 79, 'op': 'move'}
    instructions[1080] = {6'd1, 7'd4, 7'd0, 32'd14};//{'dest': 4, 'label': 14, 'op': 'jmp_and_link'}
    instructions[1081] = {6'd3, 7'd77, 7'd56, 32'd0};//{'dest': 77, 'src': 56, 'op': 'move'}
    instructions[1082] = {6'd3, 7'd78, 7'd55, 32'd0};//{'dest': 78, 'src': 55, 'op': 'move'}
    instructions[1083] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1084] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1085] = {6'd29, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1086] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1087] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1088] = {6'd12, 7'd0, 7'd76, 32'd1095};//{'src': 76, 'label': 1095, 'op': 'jmp_if_false'}
    instructions[1089] = {6'd0, 7'd76, 7'd0, -32'd1};//{'dest': 76, 'literal': -1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1090] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1091] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1092] = {6'd3, 7'd51, 7'd76, 32'd0};//{'dest': 51, 'src': 76, 'op': 'move'}
    instructions[1093] = {6'd6, 7'd0, 7'd50, 32'd0};//{'src': 50, 'op': 'jmp_to_reg'}
    instructions[1094] = {6'd14, 7'd0, 7'd0, 32'd1095};//{'label': 1095, 'op': 'goto'}
    instructions[1095] = {6'd3, 7'd78, 7'd56, 32'd0};//{'dest': 78, 'src': 56, 'op': 'move'}
    instructions[1096] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1097] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1098] = {6'd8, 7'd80, 7'd78, 32'd52};//{'dest': 80, 'src': 78, 'srcb': 52, 'signed': False, 'op': '+'}
    instructions[1099] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1100] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1101] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347441744, 'op': 'memory_read_request'}
    instructions[1102] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1103] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347441744, 'op': 'memory_read_wait'}
    instructions[1104] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347441744, 'element_size': 2, 'op': 'memory_read'}
    instructions[1105] = {6'd3, 7'd78, 7'd53, 32'd0};//{'dest': 78, 'src': 53, 'op': 'move'}
    instructions[1106] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1107] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1108] = {6'd29, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1109] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1110] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1111] = {6'd12, 7'd0, 7'd76, 32'd1118};//{'src': 76, 'label': 1118, 'op': 'jmp_if_false'}
    instructions[1112] = {6'd3, 7'd76, 7'd56, 32'd0};//{'dest': 76, 'src': 56, 'op': 'move'}
    instructions[1113] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1114] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1115] = {6'd3, 7'd51, 7'd76, 32'd0};//{'dest': 51, 'src': 76, 'op': 'move'}
    instructions[1116] = {6'd6, 7'd0, 7'd50, 32'd0};//{'src': 50, 'op': 'jmp_to_reg'}
    instructions[1117] = {6'd14, 7'd0, 7'd0, 32'd1118};//{'label': 1118, 'op': 'goto'}
    instructions[1118] = {6'd3, 7'd76, 7'd56, 32'd0};//{'dest': 76, 'src': 56, 'op': 'move'}
    instructions[1119] = {6'd30, 7'd56, 7'd56, 32'd1};//{'src': 56, 'right': 1, 'dest': 56, 'signed': True, 'op': '+', 'size': 2}
    instructions[1120] = {6'd14, 7'd0, 7'd0, 32'd1122};//{'label': 1122, 'op': 'goto'}
    instructions[1121] = {6'd14, 7'd0, 7'd0, 32'd1123};//{'label': 1123, 'op': 'goto'}
    instructions[1122] = {6'd14, 7'd0, 7'd0, 32'd1031};//{'label': 1031, 'op': 'goto'}
    instructions[1123] = {6'd0, 7'd76, 7'd0, -32'd1};//{'dest': 76, 'literal': -1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1124] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1125] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1126] = {6'd3, 7'd51, 7'd76, 32'd0};//{'dest': 51, 'src': 76, 'op': 'move'}
    instructions[1127] = {6'd6, 7'd0, 7'd50, 32'd0};//{'src': 50, 'op': 'jmp_to_reg'}
    instructions[1128] = {6'd0, 7'd60, 7'd0, 32'd267};//{'dest': 60, 'literal': 267, 'op': 'literal'}
    instructions[1129] = {6'd0, 7'd76, 7'd0, 32'd35152};//{'dest': 76, 'literal': 35152, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1130] = {6'd0, 7'd77, 7'd0, 32'd0};//{'dest': 77, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1131] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1132] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1133] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1134] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1135] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1136] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1137] = {6'd0, 7'd76, 7'd0, 32'd20039};//{'dest': 76, 'literal': 20039, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1138] = {6'd0, 7'd77, 7'd0, 32'd1};//{'dest': 77, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1139] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1140] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1141] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1142] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1143] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1144] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1145] = {6'd0, 7'd76, 7'd0, 32'd3338};//{'dest': 76, 'literal': 3338, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1146] = {6'd0, 7'd77, 7'd0, 32'd2};//{'dest': 77, 'literal': 2, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1147] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1148] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1149] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1150] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1151] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1152] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1153] = {6'd0, 7'd76, 7'd0, 32'd6666};//{'dest': 76, 'literal': 6666, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1154] = {6'd0, 7'd77, 7'd0, 32'd3};//{'dest': 77, 'literal': 3, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1155] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1156] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1157] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1158] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1159] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1160] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1161] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1162] = {6'd0, 7'd77, 7'd0, 32'd4};//{'dest': 77, 'literal': 4, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1163] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1164] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1165] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1166] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1167] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1168] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1169] = {6'd0, 7'd76, 7'd0, 32'd13};//{'dest': 76, 'literal': 13, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1170] = {6'd0, 7'd77, 7'd0, 32'd5};//{'dest': 77, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1171] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1172] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1173] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1174] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1175] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1176] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1177] = {6'd0, 7'd76, 7'd0, 32'd18760};//{'dest': 76, 'literal': 18760, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1178] = {6'd0, 7'd77, 7'd0, 32'd6};//{'dest': 77, 'literal': 6, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1179] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1180] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1181] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1182] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1183] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1184] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1185] = {6'd0, 7'd76, 7'd0, 32'd17490};//{'dest': 76, 'literal': 17490, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1186] = {6'd0, 7'd77, 7'd0, 32'd7};//{'dest': 77, 'literal': 7, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1187] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1188] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1189] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1190] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1191] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1192] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1193] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1194] = {6'd0, 7'd77, 7'd0, 32'd8};//{'dest': 77, 'literal': 8, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1195] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1196] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1197] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1198] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1199] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1200] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1201] = {6'd0, 7'd76, 7'd0, 32'd20};//{'dest': 76, 'literal': 20, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1202] = {6'd0, 7'd77, 7'd0, 32'd9};//{'dest': 77, 'literal': 9, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1203] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1204] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1205] = {6'd8, 7'd78, 7'd77, 32'd60};//{'dest': 78, 'src': 77, 'srcb': 60, 'signed': False, 'op': '+'}
    instructions[1206] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1207] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1208] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1209] = {6'd0, 7'd61, 7'd0, 32'd0};//{'dest': 61, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1210] = {6'd0, 7'd62, 7'd0, 32'd0};//{'dest': 62, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1211] = {6'd0, 7'd63, 7'd0, 32'd0};//{'dest': 63, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1212] = {6'd0, 7'd64, 7'd0, 32'd277};//{'dest': 64, 'literal': 277, 'op': 'literal'}
    instructions[1213] = {6'd0, 7'd65, 7'd0, 32'd0};//{'dest': 65, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1214] = {6'd0, 7'd66, 7'd0, 32'd0};//{'dest': 66, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1215] = {6'd0, 7'd67, 7'd0, 32'd0};//{'dest': 67, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1216] = {6'd0, 7'd68, 7'd0, 32'd0};//{'dest': 68, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1217] = {6'd0, 7'd69, 7'd0, 32'd0};//{'dest': 69, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1218] = {6'd0, 7'd70, 7'd0, 32'd0};//{'dest': 70, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1219] = {6'd0, 7'd71, 7'd0, 32'd1737};//{'dest': 71, 'literal': 1737, 'op': 'literal'}
    instructions[1220] = {6'd0, 7'd72, 7'd0, 32'd2361};//{'dest': 72, 'literal': 2361, 'op': 'literal'}
    instructions[1221] = {6'd0, 7'd73, 7'd0, 32'd3140};//{'dest': 73, 'literal': 3140, 'op': 'literal'}
    instructions[1222] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1223] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1224] = {6'd3, 7'd84, 7'd73, 32'd0};//{'dest': 84, 'src': 73, 'op': 'move'}
    instructions[1225] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1226] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1227] = {6'd3, 7'd5, 7'd84, 32'd0};//{'dest': 5, 'src': 84, 'op': 'move'}
    instructions[1228] = {6'd1, 7'd4, 7'd0, 32'd14};//{'dest': 4, 'label': 14, 'op': 'jmp_and_link'}
    instructions[1229] = {6'd0, 7'd74, 7'd0, 32'd3179};//{'dest': 74, 'literal': 3179, 'op': 'literal'}
    instructions[1230] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1231] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1232] = {6'd3, 7'd85, 7'd74, 32'd0};//{'dest': 85, 'src': 74, 'op': 'move'}
    instructions[1233] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1234] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1235] = {6'd3, 7'd5, 7'd85, 32'd0};//{'dest': 5, 'src': 85, 'op': 'move'}
    instructions[1236] = {6'd1, 7'd4, 7'd0, 32'd14};//{'dest': 4, 'label': 14, 'op': 'jmp_and_link'}
    instructions[1237] = {6'd32, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'input': 'socket', 'op': 'read'}
    instructions[1238] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1239] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1240] = {6'd3, 7'd61, 7'd76, 32'd0};//{'dest': 61, 'src': 76, 'op': 'move'}
    instructions[1241] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1242] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1243] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1244] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[1245] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1246] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1247] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1248] = {6'd3, 7'd62, 7'd76, 32'd0};//{'dest': 62, 'src': 76, 'op': 'move'}
    instructions[1249] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1250] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1251] = {6'd3, 7'd77, 7'd62, 32'd0};//{'dest': 77, 'src': 62, 'op': 'move'}
    instructions[1252] = {6'd3, 7'd78, 7'd61, 32'd0};//{'dest': 78, 'src': 61, 'op': 'move'}
    instructions[1253] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1254] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1255] = {6'd27, 7'd76, 7'd77, 32'd78};//{'srcb': 78, 'src': 77, 'dest': 76, 'signed': False, 'op': '<', 'type': 'int', 'size': 2}
    instructions[1256] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1257] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1258] = {6'd12, 7'd0, 7'd76, 32'd1302};//{'src': 76, 'label': 1302, 'op': 'jmp_if_false'}
    instructions[1259] = {6'd32, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'input': 'socket', 'op': 'read'}
    instructions[1260] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1261] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1262] = {6'd3, 7'd65, 7'd76, 32'd0};//{'dest': 65, 'src': 76, 'op': 'move'}
    instructions[1263] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1264] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1265] = {6'd3, 7'd86, 7'd65, 32'd0};//{'dest': 86, 'src': 65, 'op': 'move'}
    instructions[1266] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1267] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1268] = {6'd28, 7'd80, 7'd86, 32'd8};//{'src': 86, 'right': 8, 'dest': 80, 'signed': False, 'op': '>>', 'type': 'int', 'size': 2}
    instructions[1269] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1270] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1271] = {6'd33, 7'd76, 7'd80, 32'd255};//{'src': 80, 'right': 255, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1272] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1273] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1274] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1275] = {6'd8, 7'd78, 7'd77, 32'd64};//{'dest': 78, 'src': 77, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1276] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1277] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1278] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1279] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1280] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1281] = {6'd3, 7'd80, 7'd65, 32'd0};//{'dest': 80, 'src': 65, 'op': 'move'}
    instructions[1282] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1283] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1284] = {6'd33, 7'd76, 7'd80, 32'd255};//{'src': 80, 'right': 255, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1285] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1286] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1287] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1288] = {6'd8, 7'd78, 7'd77, 32'd64};//{'dest': 78, 'src': 77, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1289] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1290] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1291] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1292] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1293] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1294] = {6'd3, 7'd77, 7'd62, 32'd0};//{'dest': 77, 'src': 62, 'op': 'move'}
    instructions[1295] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1296] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1297] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[1298] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1299] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1300] = {6'd3, 7'd62, 7'd76, 32'd0};//{'dest': 62, 'src': 76, 'op': 'move'}
    instructions[1301] = {6'd14, 7'd0, 7'd0, 32'd1249};//{'label': 1249, 'op': 'goto'}
    instructions[1302] = {6'd0, 7'd78, 7'd0, 32'd0};//{'dest': 78, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1303] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1304] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1305] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1306] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1307] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1308] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347515048, 'op': 'memory_read_request'}
    instructions[1309] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1310] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347515048, 'op': 'memory_read_wait'}
    instructions[1311] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347515048, 'element_size': 2, 'op': 'memory_read'}
    instructions[1312] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1313] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1314] = {6'd23, 7'd76, 7'd77, 32'd71};//{'src': 77, 'right': 71, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1315] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1316] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1317] = {6'd12, 7'd0, 7'd76, 32'd1331};//{'src': 76, 'label': 1331, 'op': 'jmp_if_false'}
    instructions[1318] = {6'd0, 7'd78, 7'd0, 32'd1};//{'dest': 78, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1319] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1320] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1321] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1322] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1323] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1324] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347515336, 'op': 'memory_read_request'}
    instructions[1325] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1326] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347515336, 'op': 'memory_read_wait'}
    instructions[1327] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347515336, 'element_size': 2, 'op': 'memory_read'}
    instructions[1328] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1329] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1330] = {6'd23, 7'd76, 7'd77, 32'd69};//{'src': 77, 'right': 69, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1331] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1332] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1333] = {6'd12, 7'd0, 7'd76, 32'd1347};//{'src': 76, 'label': 1347, 'op': 'jmp_if_false'}
    instructions[1334] = {6'd0, 7'd78, 7'd0, 32'd2};//{'dest': 78, 'literal': 2, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1335] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1336] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1337] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1338] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1339] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1340] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347523952, 'op': 'memory_read_request'}
    instructions[1341] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1342] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347523952, 'op': 'memory_read_wait'}
    instructions[1343] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347523952, 'element_size': 2, 'op': 'memory_read'}
    instructions[1344] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1345] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1346] = {6'd23, 7'd76, 7'd77, 32'd84};//{'src': 77, 'right': 84, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1347] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1348] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1349] = {6'd12, 7'd0, 7'd76, 32'd1363};//{'src': 76, 'label': 1363, 'op': 'jmp_if_false'}
    instructions[1350] = {6'd0, 7'd78, 7'd0, 32'd3};//{'dest': 78, 'literal': 3, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1351] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1352] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1353] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1354] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1355] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1356] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347524312, 'op': 'memory_read_request'}
    instructions[1357] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1358] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347524312, 'op': 'memory_read_wait'}
    instructions[1359] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347524312, 'element_size': 2, 'op': 'memory_read'}
    instructions[1360] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1361] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1362] = {6'd23, 7'd76, 7'd77, 32'd32};//{'src': 77, 'right': 32, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1363] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1364] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1365] = {6'd12, 7'd0, 7'd76, 32'd1379};//{'src': 76, 'label': 1379, 'op': 'jmp_if_false'}
    instructions[1366] = {6'd0, 7'd78, 7'd0, 32'd4};//{'dest': 78, 'literal': 4, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1367] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1368] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1369] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1370] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1371] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1372] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347524672, 'op': 'memory_read_request'}
    instructions[1373] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1374] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347524672, 'op': 'memory_read_wait'}
    instructions[1375] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347524672, 'element_size': 2, 'op': 'memory_read'}
    instructions[1376] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1377] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1378] = {6'd23, 7'd76, 7'd77, 32'd47};//{'src': 77, 'right': 47, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1379] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1380] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1381] = {6'd12, 7'd0, 7'd76, 32'd1411};//{'src': 76, 'label': 1411, 'op': 'jmp_if_false'}
    instructions[1382] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1383] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1384] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1385] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1386] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1387] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1388] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347533368, 'op': 'memory_read_request'}
    instructions[1389] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1390] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347533368, 'op': 'memory_read_wait'}
    instructions[1391] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347533368, 'element_size': 2, 'op': 'memory_read'}
    instructions[1392] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1393] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1394] = {6'd23, 7'd76, 7'd77, 32'd63};//{'src': 77, 'right': 63, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1395] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1396] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1397] = {6'd34, 7'd0, 7'd76, 32'd1411};//{'src': 76, 'label': 1411, 'op': 'jmp_if_true'}
    instructions[1398] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1399] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1400] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1401] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1402] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1403] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1404] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347533656, 'op': 'memory_read_request'}
    instructions[1405] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1406] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495347533656, 'op': 'memory_read_wait'}
    instructions[1407] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495347533656, 'element_size': 2, 'op': 'memory_read'}
    instructions[1408] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1409] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1410] = {6'd23, 7'd76, 7'd77, 32'd32};//{'src': 77, 'right': 32, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1411] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1412] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1413] = {6'd12, 7'd0, 7'd76, 32'd1967};//{'src': 76, 'label': 1967, 'op': 'jmp_if_false'}
    instructions[1414] = {6'd0, 7'd76, 7'd0, 32'd5};//{'dest': 76, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1415] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1416] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1417] = {6'd3, 7'd69, 7'd76, 32'd0};//{'dest': 69, 'src': 76, 'op': 'move'}
    instructions[1418] = {6'd3, 7'd87, 7'd64, 32'd0};//{'dest': 87, 'src': 64, 'op': 'move'}
    instructions[1419] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1420] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1421] = {6'd3, 7'd52, 7'd87, 32'd0};//{'dest': 52, 'src': 87, 'op': 'move'}
    instructions[1422] = {6'd0, 7'd77, 7'd0, 32'd32};//{'dest': 77, 'literal': 32, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1423] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1424] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1425] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[1426] = {6'd3, 7'd77, 7'd69, 32'd0};//{'dest': 77, 'src': 69, 'op': 'move'}
    instructions[1427] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1428] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1429] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[1430] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1431] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1432] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1433] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[1434] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1435] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[1436] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1437] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1438] = {6'd3, 7'd70, 7'd76, 32'd0};//{'dest': 70, 'src': 76, 'op': 'move'}
    instructions[1439] = {6'd0, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1440] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1441] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1442] = {6'd3, 7'd68, 7'd76, 32'd0};//{'dest': 68, 'src': 76, 'op': 'move'}
    instructions[1443] = {6'd3, 7'd87, 7'd64, 32'd0};//{'dest': 87, 'src': 64, 'op': 'move'}
    instructions[1444] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1445] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1446] = {6'd3, 7'd52, 7'd87, 32'd0};//{'dest': 52, 'src': 87, 'op': 'move'}
    instructions[1447] = {6'd0, 7'd78, 7'd0, 32'd65};//{'dest': 78, 'literal': 65, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1448] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1449] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1450] = {6'd3, 7'd53, 7'd78, 32'd0};//{'dest': 53, 'src': 78, 'op': 'move'}
    instructions[1451] = {6'd3, 7'd78, 7'd69, 32'd0};//{'dest': 78, 'src': 69, 'op': 'move'}
    instructions[1452] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1453] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1454] = {6'd3, 7'd54, 7'd78, 32'd0};//{'dest': 54, 'src': 78, 'op': 'move'}
    instructions[1455] = {6'd3, 7'd78, 7'd70, 32'd0};//{'dest': 78, 'src': 70, 'op': 'move'}
    instructions[1456] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1457] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1458] = {6'd3, 7'd55, 7'd78, 32'd0};//{'dest': 55, 'src': 78, 'op': 'move'}
    instructions[1459] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1460] = {6'd3, 7'd77, 7'd51, 32'd0};//{'dest': 77, 'src': 51, 'op': 'move'}
    instructions[1461] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1462] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1463] = {6'd35, 7'd76, 7'd77, -32'd1};//{'src': 77, 'right': -1, 'dest': 76, 'signed': True, 'op': '!=', 'type': 'int', 'size': 2}
    instructions[1464] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1465] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1466] = {6'd12, 7'd0, 7'd76, 32'd1475};//{'src': 76, 'label': 1475, 'op': 'jmp_if_false'}
    instructions[1467] = {6'd3, 7'd77, 7'd68, 32'd0};//{'dest': 77, 'src': 68, 'op': 'move'}
    instructions[1468] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1469] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1470] = {6'd18, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[1471] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1472] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1473] = {6'd3, 7'd68, 7'd76, 32'd0};//{'dest': 68, 'src': 76, 'op': 'move'}
    instructions[1474] = {6'd14, 7'd0, 7'd0, 32'd1475};//{'label': 1475, 'op': 'goto'}
    instructions[1475] = {6'd3, 7'd87, 7'd64, 32'd0};//{'dest': 87, 'src': 64, 'op': 'move'}
    instructions[1476] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1477] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1478] = {6'd3, 7'd52, 7'd87, 32'd0};//{'dest': 52, 'src': 87, 'op': 'move'}
    instructions[1479] = {6'd0, 7'd78, 7'd0, 32'd66};//{'dest': 78, 'literal': 66, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1480] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1481] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1482] = {6'd3, 7'd53, 7'd78, 32'd0};//{'dest': 53, 'src': 78, 'op': 'move'}
    instructions[1483] = {6'd3, 7'd78, 7'd69, 32'd0};//{'dest': 78, 'src': 69, 'op': 'move'}
    instructions[1484] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1485] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1486] = {6'd3, 7'd54, 7'd78, 32'd0};//{'dest': 54, 'src': 78, 'op': 'move'}
    instructions[1487] = {6'd3, 7'd78, 7'd70, 32'd0};//{'dest': 78, 'src': 70, 'op': 'move'}
    instructions[1488] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1489] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1490] = {6'd3, 7'd55, 7'd78, 32'd0};//{'dest': 55, 'src': 78, 'op': 'move'}
    instructions[1491] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1492] = {6'd3, 7'd77, 7'd51, 32'd0};//{'dest': 77, 'src': 51, 'op': 'move'}
    instructions[1493] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1494] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1495] = {6'd35, 7'd76, 7'd77, -32'd1};//{'src': 77, 'right': -1, 'dest': 76, 'signed': True, 'op': '!=', 'type': 'int', 'size': 2}
    instructions[1496] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1497] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1498] = {6'd12, 7'd0, 7'd76, 32'd1507};//{'src': 76, 'label': 1507, 'op': 'jmp_if_false'}
    instructions[1499] = {6'd3, 7'd77, 7'd68, 32'd0};//{'dest': 77, 'src': 68, 'op': 'move'}
    instructions[1500] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1501] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1502] = {6'd18, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[1503] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1504] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1505] = {6'd3, 7'd68, 7'd76, 32'd0};//{'dest': 68, 'src': 76, 'op': 'move'}
    instructions[1506] = {6'd14, 7'd0, 7'd0, 32'd1507};//{'label': 1507, 'op': 'goto'}
    instructions[1507] = {6'd3, 7'd87, 7'd64, 32'd0};//{'dest': 87, 'src': 64, 'op': 'move'}
    instructions[1508] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1509] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1510] = {6'd3, 7'd52, 7'd87, 32'd0};//{'dest': 52, 'src': 87, 'op': 'move'}
    instructions[1511] = {6'd0, 7'd78, 7'd0, 32'd67};//{'dest': 78, 'literal': 67, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1512] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1513] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1514] = {6'd3, 7'd53, 7'd78, 32'd0};//{'dest': 53, 'src': 78, 'op': 'move'}
    instructions[1515] = {6'd3, 7'd78, 7'd69, 32'd0};//{'dest': 78, 'src': 69, 'op': 'move'}
    instructions[1516] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1517] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1518] = {6'd3, 7'd54, 7'd78, 32'd0};//{'dest': 54, 'src': 78, 'op': 'move'}
    instructions[1519] = {6'd3, 7'd78, 7'd70, 32'd0};//{'dest': 78, 'src': 70, 'op': 'move'}
    instructions[1520] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1521] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1522] = {6'd3, 7'd55, 7'd78, 32'd0};//{'dest': 55, 'src': 78, 'op': 'move'}
    instructions[1523] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1524] = {6'd3, 7'd77, 7'd51, 32'd0};//{'dest': 77, 'src': 51, 'op': 'move'}
    instructions[1525] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1526] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1527] = {6'd35, 7'd76, 7'd77, -32'd1};//{'src': 77, 'right': -1, 'dest': 76, 'signed': True, 'op': '!=', 'type': 'int', 'size': 2}
    instructions[1528] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1529] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1530] = {6'd12, 7'd0, 7'd76, 32'd1539};//{'src': 76, 'label': 1539, 'op': 'jmp_if_false'}
    instructions[1531] = {6'd3, 7'd77, 7'd68, 32'd0};//{'dest': 77, 'src': 68, 'op': 'move'}
    instructions[1532] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1533] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1534] = {6'd18, 7'd76, 7'd77, 32'd4};//{'src': 77, 'right': 4, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[1535] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1536] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1537] = {6'd3, 7'd68, 7'd76, 32'd0};//{'dest': 68, 'src': 76, 'op': 'move'}
    instructions[1538] = {6'd14, 7'd0, 7'd0, 32'd1539};//{'label': 1539, 'op': 'goto'}
    instructions[1539] = {6'd3, 7'd87, 7'd64, 32'd0};//{'dest': 87, 'src': 64, 'op': 'move'}
    instructions[1540] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1541] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1542] = {6'd3, 7'd52, 7'd87, 32'd0};//{'dest': 52, 'src': 87, 'op': 'move'}
    instructions[1543] = {6'd0, 7'd78, 7'd0, 32'd68};//{'dest': 78, 'literal': 68, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1544] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1545] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1546] = {6'd3, 7'd53, 7'd78, 32'd0};//{'dest': 53, 'src': 78, 'op': 'move'}
    instructions[1547] = {6'd3, 7'd78, 7'd69, 32'd0};//{'dest': 78, 'src': 69, 'op': 'move'}
    instructions[1548] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1549] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1550] = {6'd3, 7'd54, 7'd78, 32'd0};//{'dest': 54, 'src': 78, 'op': 'move'}
    instructions[1551] = {6'd3, 7'd78, 7'd70, 32'd0};//{'dest': 78, 'src': 70, 'op': 'move'}
    instructions[1552] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1553] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1554] = {6'd3, 7'd55, 7'd78, 32'd0};//{'dest': 55, 'src': 78, 'op': 'move'}
    instructions[1555] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1556] = {6'd3, 7'd77, 7'd51, 32'd0};//{'dest': 77, 'src': 51, 'op': 'move'}
    instructions[1557] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1558] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1559] = {6'd35, 7'd76, 7'd77, -32'd1};//{'src': 77, 'right': -1, 'dest': 76, 'signed': True, 'op': '!=', 'type': 'int', 'size': 2}
    instructions[1560] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1561] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1562] = {6'd12, 7'd0, 7'd76, 32'd1571};//{'src': 76, 'label': 1571, 'op': 'jmp_if_false'}
    instructions[1563] = {6'd3, 7'd77, 7'd68, 32'd0};//{'dest': 77, 'src': 68, 'op': 'move'}
    instructions[1564] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1565] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1566] = {6'd18, 7'd76, 7'd77, 32'd8};//{'src': 77, 'right': 8, 'dest': 76, 'signed': False, 'op': '|', 'type': 'int', 'size': 2}
    instructions[1567] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1568] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1569] = {6'd3, 7'd68, 7'd76, 32'd0};//{'dest': 68, 'src': 76, 'op': 'move'}
    instructions[1570] = {6'd14, 7'd0, 7'd0, 32'd1571};//{'label': 1571, 'op': 'goto'}
    instructions[1571] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1572] = {6'd3, 7'd76, 7'd68, 32'd0};//{'dest': 76, 'src': 68, 'op': 'move'}
    instructions[1573] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1574] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1575] = {6'd36, 7'd0, 7'd76, 32'd0};//{'src': 76, 'output': 'leds', 'op': 'write'}
    instructions[1576] = {6'd37, 7'd77, 7'd0, 32'd0};//{'dest': 77, 'input': 'switches', 'op': 'read'}
    instructions[1577] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1578] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1579] = {6'd38, 7'd76, 7'd77, 32'd0};//{'dest': 76, 'src': 77, 'op': '~'}
    instructions[1580] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1581] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1582] = {6'd3, 7'd66, 7'd76, 32'd0};//{'dest': 66, 'src': 76, 'op': 'move'}
    instructions[1583] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[1584] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1585] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1586] = {6'd3, 7'd52, 7'd88, 32'd0};//{'dest': 52, 'src': 88, 'op': 'move'}
    instructions[1587] = {6'd0, 7'd77, 7'd0, 32'd58};//{'dest': 77, 'literal': 58, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1588] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1589] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1590] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[1591] = {6'd0, 7'd77, 7'd0, 32'd0};//{'dest': 77, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1592] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1593] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1594] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[1595] = {6'd0, 7'd77, 7'd0, 32'd1460};//{'dest': 77, 'literal': 1460, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1596] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1597] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1598] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[1599] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1600] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[1601] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1602] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1603] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[1604] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1605] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1606] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1607] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1608] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1609] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[1610] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1611] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1612] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[1613] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1614] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1615] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1616] = {6'd33, 7'd76, 7'd77, 32'd128};//{'src': 77, 'right': 128, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1617] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1618] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1619] = {6'd12, 7'd0, 7'd76, 32'd1629};//{'src': 76, 'label': 1629, 'op': 'jmp_if_false'}
    instructions[1620] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1621] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1622] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1623] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1624] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1625] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1626] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1627] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1628] = {6'd14, 7'd0, 7'd0, 32'd1637};//{'label': 1637, 'op': 'goto'}
    instructions[1629] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1630] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1631] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1632] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1633] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1634] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1635] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1636] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1637] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1638] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1639] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1640] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1641] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1642] = {6'd33, 7'd76, 7'd77, 32'd64};//{'src': 77, 'right': 64, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1643] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1644] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1645] = {6'd12, 7'd0, 7'd76, 32'd1655};//{'src': 76, 'label': 1655, 'op': 'jmp_if_false'}
    instructions[1646] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1647] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1648] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1649] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1650] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1651] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1652] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1653] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1654] = {6'd14, 7'd0, 7'd0, 32'd1663};//{'label': 1663, 'op': 'goto'}
    instructions[1655] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1656] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1657] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1658] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1659] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1660] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1661] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1662] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1663] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1664] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1665] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1666] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1667] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1668] = {6'd33, 7'd76, 7'd77, 32'd32};//{'src': 77, 'right': 32, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1669] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1670] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1671] = {6'd12, 7'd0, 7'd76, 32'd1681};//{'src': 76, 'label': 1681, 'op': 'jmp_if_false'}
    instructions[1672] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1673] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1674] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1675] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1676] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1677] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1678] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1679] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1680] = {6'd14, 7'd0, 7'd0, 32'd1689};//{'label': 1689, 'op': 'goto'}
    instructions[1681] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1682] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1683] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1684] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1685] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1686] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1687] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1688] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1689] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1690] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1691] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1692] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1693] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1694] = {6'd33, 7'd76, 7'd77, 32'd16};//{'src': 77, 'right': 16, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1695] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1696] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1697] = {6'd12, 7'd0, 7'd76, 32'd1707};//{'src': 76, 'label': 1707, 'op': 'jmp_if_false'}
    instructions[1698] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1699] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1700] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1701] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1702] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1703] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1704] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1705] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1706] = {6'd14, 7'd0, 7'd0, 32'd1715};//{'label': 1715, 'op': 'goto'}
    instructions[1707] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1708] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1709] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1710] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1711] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1712] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1713] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1714] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1715] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1716] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1717] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1718] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1719] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1720] = {6'd33, 7'd76, 7'd77, 32'd8};//{'src': 77, 'right': 8, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1721] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1722] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1723] = {6'd12, 7'd0, 7'd76, 32'd1733};//{'src': 76, 'label': 1733, 'op': 'jmp_if_false'}
    instructions[1724] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1725] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1726] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1727] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1728] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1729] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1730] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1731] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1732] = {6'd14, 7'd0, 7'd0, 32'd1741};//{'label': 1741, 'op': 'goto'}
    instructions[1733] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1734] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1735] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1736] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1737] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1738] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1739] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1740] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1741] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1742] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1743] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1744] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1745] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1746] = {6'd33, 7'd76, 7'd77, 32'd4};//{'src': 77, 'right': 4, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1747] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1748] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1749] = {6'd12, 7'd0, 7'd76, 32'd1759};//{'src': 76, 'label': 1759, 'op': 'jmp_if_false'}
    instructions[1750] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1751] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1752] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1753] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1754] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1755] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1756] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1757] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1758] = {6'd14, 7'd0, 7'd0, 32'd1767};//{'label': 1767, 'op': 'goto'}
    instructions[1759] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1760] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1761] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1762] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1763] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1764] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1765] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1766] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1767] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1768] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1769] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1770] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1771] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1772] = {6'd33, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1773] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1774] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1775] = {6'd12, 7'd0, 7'd76, 32'd1785};//{'src': 76, 'label': 1785, 'op': 'jmp_if_false'}
    instructions[1776] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1777] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1778] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1779] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1780] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1781] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1782] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1783] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1784] = {6'd14, 7'd0, 7'd0, 32'd1793};//{'label': 1793, 'op': 'goto'}
    instructions[1785] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1786] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1787] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1788] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1789] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1790] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1791] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1792] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1793] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1794] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1795] = {6'd3, 7'd77, 7'd66, 32'd0};//{'dest': 77, 'src': 66, 'op': 'move'}
    instructions[1796] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1797] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1798] = {6'd33, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1799] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1800] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1801] = {6'd12, 7'd0, 7'd76, 32'd1811};//{'src': 76, 'label': 1811, 'op': 'jmp_if_false'}
    instructions[1802] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1803] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1804] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1805] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1806] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1807] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1808] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1809] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1810] = {6'd14, 7'd0, 7'd0, 32'd1819};//{'label': 1819, 'op': 'goto'}
    instructions[1811] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1812] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1813] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1814] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1815] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1816] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1817] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1818] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1819] = {6'd40, 7'd77, 7'd0, 32'd0};//{'dest': 77, 'input': 'buttons', 'op': 'read'}
    instructions[1820] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1821] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1822] = {6'd38, 7'd76, 7'd77, 32'd0};//{'dest': 76, 'src': 77, 'op': '~'}
    instructions[1823] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1824] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1825] = {6'd3, 7'd67, 7'd76, 32'd0};//{'dest': 67, 'src': 76, 'op': 'move'}
    instructions[1826] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[1827] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1828] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1829] = {6'd3, 7'd52, 7'd88, 32'd0};//{'dest': 52, 'src': 88, 'op': 'move'}
    instructions[1830] = {6'd0, 7'd77, 7'd0, 32'd58};//{'dest': 77, 'literal': 58, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1831] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1832] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1833] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[1834] = {6'd3, 7'd78, 7'd63, 32'd0};//{'dest': 78, 'src': 63, 'op': 'move'}
    instructions[1835] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1836] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1837] = {6'd13, 7'd77, 7'd78, 32'd1};//{'src': 78, 'right': 1, 'dest': 77, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[1838] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1839] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1840] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[1841] = {6'd0, 7'd77, 7'd0, 32'd1460};//{'dest': 77, 'literal': 1460, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1842] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1843] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1844] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[1845] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[1846] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[1847] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1848] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1849] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[1850] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1851] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1852] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1853] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1854] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1855] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[1856] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1857] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1858] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[1859] = {6'd3, 7'd77, 7'd67, 32'd0};//{'dest': 77, 'src': 67, 'op': 'move'}
    instructions[1860] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1861] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1862] = {6'd33, 7'd76, 7'd77, 32'd1};//{'src': 77, 'right': 1, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1863] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1864] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1865] = {6'd12, 7'd0, 7'd76, 32'd1875};//{'src': 76, 'label': 1875, 'op': 'jmp_if_false'}
    instructions[1866] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1867] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1868] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1869] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1870] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1871] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1872] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1873] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1874] = {6'd14, 7'd0, 7'd0, 32'd1883};//{'label': 1883, 'op': 'goto'}
    instructions[1875] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1876] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1877] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1878] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1879] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1880] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1881] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1882] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1883] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1884] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1885] = {6'd3, 7'd77, 7'd67, 32'd0};//{'dest': 77, 'src': 67, 'op': 'move'}
    instructions[1886] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1887] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1888] = {6'd33, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1889] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1890] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1891] = {6'd12, 7'd0, 7'd76, 32'd1901};//{'src': 76, 'label': 1901, 'op': 'jmp_if_false'}
    instructions[1892] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1893] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1894] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1895] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1896] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1897] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1898] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1899] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1900] = {6'd14, 7'd0, 7'd0, 32'd1909};//{'label': 1909, 'op': 'goto'}
    instructions[1901] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1902] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1903] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1904] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1905] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1906] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1907] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1908] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1909] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1910] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1911] = {6'd3, 7'd77, 7'd67, 32'd0};//{'dest': 77, 'src': 67, 'op': 'move'}
    instructions[1912] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1913] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1914] = {6'd33, 7'd76, 7'd77, 32'd4};//{'src': 77, 'right': 4, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1915] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1916] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1917] = {6'd12, 7'd0, 7'd76, 32'd1927};//{'src': 76, 'label': 1927, 'op': 'jmp_if_false'}
    instructions[1918] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1919] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1920] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1921] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1922] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1923] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1924] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1925] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1926] = {6'd14, 7'd0, 7'd0, 32'd1935};//{'label': 1935, 'op': 'goto'}
    instructions[1927] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1928] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1929] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1930] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1931] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1932] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1933] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1934] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1935] = {6'd3, 7'd76, 7'd63, 32'd0};//{'dest': 76, 'src': 63, 'op': 'move'}
    instructions[1936] = {6'd13, 7'd63, 7'd63, 32'd1};//{'src': 63, 'right': 1, 'dest': 63, 'signed': False, 'op': '+', 'size': 2}
    instructions[1937] = {6'd3, 7'd77, 7'd67, 32'd0};//{'dest': 77, 'src': 67, 'op': 'move'}
    instructions[1938] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1939] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1940] = {6'd33, 7'd76, 7'd77, 32'd8};//{'src': 77, 'right': 8, 'dest': 76, 'signed': False, 'op': '&', 'type': 'int', 'size': 2}
    instructions[1941] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1942] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1943] = {6'd12, 7'd0, 7'd76, 32'd1953};//{'src': 76, 'label': 1953, 'op': 'jmp_if_false'}
    instructions[1944] = {6'd0, 7'd76, 7'd0, 32'd48};//{'dest': 76, 'literal': 48, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1945] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1946] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1947] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1948] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1949] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1950] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1951] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1952] = {6'd14, 7'd0, 7'd0, 32'd1961};//{'label': 1961, 'op': 'goto'}
    instructions[1953] = {6'd0, 7'd76, 7'd0, 32'd49};//{'dest': 76, 'literal': 49, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1954] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[1955] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1956] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1957] = {6'd39, 7'd78, 7'd77, 32'd72};//{'dest': 78, 'src': 77, 'srcb': 72, 'signed': True, 'op': '+'}
    instructions[1958] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1959] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1960] = {6'd31, 7'd0, 7'd78, 32'd76};//{'srcb': 76, 'src': 78, 'element_size': 2, 'op': 'memory_write'}
    instructions[1961] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[1962] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1963] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1964] = {6'd3, 7'd33, 7'd88, 32'd0};//{'dest': 33, 'src': 88, 'op': 'move'}
    instructions[1965] = {6'd1, 7'd32, 7'd0, 32'd609};//{'dest': 32, 'label': 609, 'op': 'jmp_and_link'}
    instructions[1966] = {6'd14, 7'd0, 7'd0, 32'd2309};//{'label': 2309, 'op': 'goto'}
    instructions[1967] = {6'd0, 7'd78, 7'd0, 32'd0};//{'dest': 78, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1968] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1969] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1970] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1971] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1972] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1973] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348339776, 'op': 'memory_read_request'}
    instructions[1974] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1975] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348339776, 'op': 'memory_read_wait'}
    instructions[1976] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348339776, 'element_size': 2, 'op': 'memory_read'}
    instructions[1977] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1978] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1979] = {6'd23, 7'd76, 7'd77, 32'd71};//{'src': 77, 'right': 71, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1980] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1981] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1982] = {6'd12, 7'd0, 7'd76, 32'd1996};//{'src': 76, 'label': 1996, 'op': 'jmp_if_false'}
    instructions[1983] = {6'd0, 7'd78, 7'd0, 32'd1};//{'dest': 78, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[1984] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1985] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1986] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[1987] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1988] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1989] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340064, 'op': 'memory_read_request'}
    instructions[1990] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1991] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340064, 'op': 'memory_read_wait'}
    instructions[1992] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348340064, 'element_size': 2, 'op': 'memory_read'}
    instructions[1993] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1994] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1995] = {6'd23, 7'd76, 7'd77, 32'd69};//{'src': 77, 'right': 69, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[1996] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1997] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[1998] = {6'd12, 7'd0, 7'd76, 32'd2012};//{'src': 76, 'label': 2012, 'op': 'jmp_if_false'}
    instructions[1999] = {6'd0, 7'd78, 7'd0, 32'd2};//{'dest': 78, 'literal': 2, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2000] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2001] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2002] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2003] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2004] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2005] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340424, 'op': 'memory_read_request'}
    instructions[2006] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2007] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340424, 'op': 'memory_read_wait'}
    instructions[2008] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348340424, 'element_size': 2, 'op': 'memory_read'}
    instructions[2009] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2010] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2011] = {6'd23, 7'd76, 7'd77, 32'd84};//{'src': 77, 'right': 84, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2012] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2013] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2014] = {6'd12, 7'd0, 7'd76, 32'd2028};//{'src': 76, 'label': 2028, 'op': 'jmp_if_false'}
    instructions[2015] = {6'd0, 7'd78, 7'd0, 32'd3};//{'dest': 78, 'literal': 3, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2016] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2017] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2018] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2019] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2020] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2021] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340784, 'op': 'memory_read_request'}
    instructions[2022] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2023] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348340784, 'op': 'memory_read_wait'}
    instructions[2024] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348340784, 'element_size': 2, 'op': 'memory_read'}
    instructions[2025] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2026] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2027] = {6'd23, 7'd76, 7'd77, 32'd32};//{'src': 77, 'right': 32, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2028] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2029] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2030] = {6'd12, 7'd0, 7'd76, 32'd2044};//{'src': 76, 'label': 2044, 'op': 'jmp_if_false'}
    instructions[2031] = {6'd0, 7'd78, 7'd0, 32'd4};//{'dest': 78, 'literal': 4, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2032] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2033] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2034] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2035] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2036] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2037] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348341144, 'op': 'memory_read_request'}
    instructions[2038] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2039] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348341144, 'op': 'memory_read_wait'}
    instructions[2040] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348341144, 'element_size': 2, 'op': 'memory_read'}
    instructions[2041] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2042] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2043] = {6'd23, 7'd76, 7'd77, 32'd47};//{'src': 77, 'right': 47, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2044] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2045] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2046] = {6'd12, 7'd0, 7'd76, 32'd2076};//{'src': 76, 'label': 2076, 'op': 'jmp_if_false'}
    instructions[2047] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2048] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2049] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2050] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2051] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2052] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2053] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346895760, 'op': 'memory_read_request'}
    instructions[2054] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2055] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346895760, 'op': 'memory_read_wait'}
    instructions[2056] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346895760, 'element_size': 2, 'op': 'memory_read'}
    instructions[2057] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2058] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2059] = {6'd23, 7'd76, 7'd77, 32'd66};//{'src': 77, 'right': 66, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2060] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2061] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2062] = {6'd34, 7'd0, 7'd76, 32'd2076};//{'src': 76, 'label': 2076, 'op': 'jmp_if_true'}
    instructions[2063] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2064] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2065] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2066] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2067] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2068] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2069] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346896048, 'op': 'memory_read_request'}
    instructions[2070] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2071] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346896048, 'op': 'memory_read_wait'}
    instructions[2072] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346896048, 'element_size': 2, 'op': 'memory_read'}
    instructions[2073] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2074] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2075] = {6'd23, 7'd76, 7'd77, 32'd98};//{'src': 77, 'right': 98, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2076] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2077] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2078] = {6'd12, 7'd0, 7'd76, 32'd2085};//{'src': 76, 'label': 2085, 'op': 'jmp_if_false'}
    instructions[2079] = {6'd3, 7'd89, 7'd71, 32'd0};//{'dest': 89, 'src': 71, 'op': 'move'}
    instructions[2080] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2081] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2082] = {6'd3, 7'd33, 7'd89, 32'd0};//{'dest': 33, 'src': 89, 'op': 'move'}
    instructions[2083] = {6'd1, 7'd32, 7'd0, 32'd609};//{'dest': 32, 'label': 609, 'op': 'jmp_and_link'}
    instructions[2084] = {6'd14, 7'd0, 7'd0, 32'd2309};//{'label': 2309, 'op': 'goto'}
    instructions[2085] = {6'd0, 7'd78, 7'd0, 32'd0};//{'dest': 78, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2086] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2087] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2088] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2089] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2090] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2091] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348341432, 'op': 'memory_read_request'}
    instructions[2092] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2093] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348341432, 'op': 'memory_read_wait'}
    instructions[2094] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348341432, 'element_size': 2, 'op': 'memory_read'}
    instructions[2095] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2096] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2097] = {6'd23, 7'd76, 7'd77, 32'd71};//{'src': 77, 'right': 71, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2098] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2099] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2100] = {6'd12, 7'd0, 7'd76, 32'd2114};//{'src': 76, 'label': 2114, 'op': 'jmp_if_false'}
    instructions[2101] = {6'd0, 7'd78, 7'd0, 32'd1};//{'dest': 78, 'literal': 1, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2102] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2103] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2104] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2105] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2106] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2107] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348342728, 'op': 'memory_read_request'}
    instructions[2108] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2109] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495348342728, 'op': 'memory_read_wait'}
    instructions[2110] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495348342728, 'element_size': 2, 'op': 'memory_read'}
    instructions[2111] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2112] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2113] = {6'd23, 7'd76, 7'd77, 32'd69};//{'src': 77, 'right': 69, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2114] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2115] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2116] = {6'd12, 7'd0, 7'd76, 32'd2130};//{'src': 76, 'label': 2130, 'op': 'jmp_if_false'}
    instructions[2117] = {6'd0, 7'd78, 7'd0, 32'd2};//{'dest': 78, 'literal': 2, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2118] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2119] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2120] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2121] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2122] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2123] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893024, 'op': 'memory_read_request'}
    instructions[2124] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2125] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893024, 'op': 'memory_read_wait'}
    instructions[2126] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346893024, 'element_size': 2, 'op': 'memory_read'}
    instructions[2127] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2128] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2129] = {6'd23, 7'd76, 7'd77, 32'd84};//{'src': 77, 'right': 84, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2130] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2131] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2132] = {6'd12, 7'd0, 7'd76, 32'd2146};//{'src': 76, 'label': 2146, 'op': 'jmp_if_false'}
    instructions[2133] = {6'd0, 7'd78, 7'd0, 32'd3};//{'dest': 78, 'literal': 3, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2134] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2135] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2136] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2137] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2138] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2139] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893888, 'op': 'memory_read_request'}
    instructions[2140] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2141] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893888, 'op': 'memory_read_wait'}
    instructions[2142] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346893888, 'element_size': 2, 'op': 'memory_read'}
    instructions[2143] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2144] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2145] = {6'd23, 7'd76, 7'd77, 32'd32};//{'src': 77, 'right': 32, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2146] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2147] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2148] = {6'd12, 7'd0, 7'd76, 32'd2162};//{'src': 76, 'label': 2162, 'op': 'jmp_if_false'}
    instructions[2149] = {6'd0, 7'd78, 7'd0, 32'd4};//{'dest': 78, 'literal': 4, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2150] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2151] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2152] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2153] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2154] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2155] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893816, 'op': 'memory_read_request'}
    instructions[2156] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2157] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346893816, 'op': 'memory_read_wait'}
    instructions[2158] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346893816, 'element_size': 2, 'op': 'memory_read'}
    instructions[2159] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2160] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2161] = {6'd23, 7'd76, 7'd77, 32'd47};//{'src': 77, 'right': 47, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2162] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2163] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2164] = {6'd12, 7'd0, 7'd76, 32'd2194};//{'src': 76, 'label': 2194, 'op': 'jmp_if_false'}
    instructions[2165] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2166] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2167] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2168] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2169] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2170] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2171] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346902872, 'op': 'memory_read_request'}
    instructions[2172] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2173] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346902872, 'op': 'memory_read_wait'}
    instructions[2174] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346902872, 'element_size': 2, 'op': 'memory_read'}
    instructions[2175] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2176] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2177] = {6'd23, 7'd76, 7'd77, 32'd67};//{'src': 77, 'right': 67, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2178] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2179] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2180] = {6'd34, 7'd0, 7'd76, 32'd2194};//{'src': 76, 'label': 2194, 'op': 'jmp_if_true'}
    instructions[2181] = {6'd0, 7'd78, 7'd0, 32'd5};//{'dest': 78, 'literal': 5, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2182] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2183] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2184] = {6'd8, 7'd80, 7'd78, 32'd64};//{'dest': 80, 'src': 78, 'srcb': 64, 'signed': False, 'op': '+'}
    instructions[2185] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2186] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2187] = {6'd9, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346903160, 'op': 'memory_read_request'}
    instructions[2188] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2189] = {6'd10, 7'd0, 7'd80, 32'd0};//{'element_size': 2, 'src': 80, 'sequence': 140495346903160, 'op': 'memory_read_wait'}
    instructions[2190] = {6'd11, 7'd77, 7'd80, 32'd0};//{'dest': 77, 'src': 80, 'sequence': 140495346903160, 'element_size': 2, 'op': 'memory_read'}
    instructions[2191] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2192] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2193] = {6'd23, 7'd76, 7'd77, 32'd99};//{'src': 77, 'right': 99, 'dest': 76, 'signed': False, 'op': '==', 'type': 'int', 'size': 2}
    instructions[2194] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2195] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2196] = {6'd12, 7'd0, 7'd76, 32'd2308};//{'src': 76, 'label': 2308, 'op': 'jmp_if_false'}
    instructions[2197] = {6'd0, 7'd75, 7'd0, 32'd3222};//{'dest': 75, 'literal': 3222, 'op': 'literal'}
    instructions[2198] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[2199] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2200] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2201] = {6'd3, 7'd52, 7'd88, 32'd0};//{'dest': 52, 'src': 88, 'op': 'move'}
    instructions[2202] = {6'd0, 7'd77, 7'd0, 32'd58};//{'dest': 77, 'literal': 58, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2203] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2204] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2205] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[2206] = {6'd0, 7'd77, 7'd0, 32'd0};//{'dest': 77, 'literal': 0, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2207] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2208] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2209] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[2210] = {6'd0, 7'd77, 7'd0, 32'd1460};//{'dest': 77, 'literal': 1460, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2211] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2212] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2213] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[2214] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[2215] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[2216] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2217] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2218] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2219] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2220] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2221] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[2222] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2223] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2224] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[2225] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2226] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2227] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2228] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[2229] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2230] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2231] = {6'd3, 7'd52, 7'd88, 32'd0};//{'dest': 52, 'src': 88, 'op': 'move'}
    instructions[2232] = {6'd0, 7'd77, 7'd0, 32'd58};//{'dest': 77, 'literal': 58, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2233] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2234] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2235] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[2236] = {6'd3, 7'd78, 7'd63, 32'd0};//{'dest': 78, 'src': 63, 'op': 'move'}
    instructions[2237] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2238] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2239] = {6'd13, 7'd77, 7'd78, 32'd1};//{'src': 78, 'right': 1, 'dest': 77, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[2240] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2241] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2242] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[2243] = {6'd0, 7'd77, 7'd0, 32'd1460};//{'dest': 77, 'literal': 1460, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2244] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2245] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2246] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[2247] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[2248] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[2249] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2250] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2251] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2252] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2253] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2254] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[2255] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2256] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2257] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[2258] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2259] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2260] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2261] = {6'd3, 7'd88, 7'd72, 32'd0};//{'dest': 88, 'src': 72, 'op': 'move'}
    instructions[2262] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2263] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2264] = {6'd3, 7'd52, 7'd88, 32'd0};//{'dest': 52, 'src': 88, 'op': 'move'}
    instructions[2265] = {6'd0, 7'd77, 7'd0, 32'd58};//{'dest': 77, 'literal': 58, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2266] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2267] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2268] = {6'd3, 7'd53, 7'd77, 32'd0};//{'dest': 53, 'src': 77, 'op': 'move'}
    instructions[2269] = {6'd3, 7'd78, 7'd63, 32'd0};//{'dest': 78, 'src': 63, 'op': 'move'}
    instructions[2270] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2271] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2272] = {6'd13, 7'd77, 7'd78, 32'd1};//{'src': 78, 'right': 1, 'dest': 77, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[2273] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2274] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2275] = {6'd3, 7'd54, 7'd77, 32'd0};//{'dest': 54, 'src': 77, 'op': 'move'}
    instructions[2276] = {6'd0, 7'd77, 7'd0, 32'd1460};//{'dest': 77, 'literal': 1460, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2277] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2278] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2279] = {6'd3, 7'd55, 7'd77, 32'd0};//{'dest': 55, 'src': 77, 'op': 'move'}
    instructions[2280] = {6'd1, 7'd50, 7'd0, 32'd1030};//{'dest': 50, 'label': 1030, 'op': 'jmp_and_link'}
    instructions[2281] = {6'd3, 7'd76, 7'd51, 32'd0};//{'dest': 76, 'src': 51, 'op': 'move'}
    instructions[2282] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2283] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2284] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2285] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2286] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2287] = {6'd3, 7'd77, 7'd63, 32'd0};//{'dest': 77, 'src': 63, 'op': 'move'}
    instructions[2288] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2289] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2290] = {6'd13, 7'd76, 7'd77, 32'd2};//{'src': 77, 'right': 2, 'dest': 76, 'signed': False, 'op': '+', 'type': 'int', 'size': 2}
    instructions[2291] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2292] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2293] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2294] = {6'd3, 7'd90, 7'd60, 32'd0};//{'dest': 90, 'src': 60, 'op': 'move'}
    instructions[2295] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2296] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2297] = {6'd3, 7'd42, 7'd90, 32'd0};//{'dest': 42, 'src': 90, 'op': 'move'}
    instructions[2298] = {6'd3, 7'd91, 7'd75, 32'd0};//{'dest': 91, 'src': 75, 'op': 'move'}
    instructions[2299] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2300] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2301] = {6'd3, 7'd43, 7'd91, 32'd0};//{'dest': 43, 'src': 91, 'op': 'move'}
    instructions[2302] = {6'd0, 7'd77, 7'd0, 32'd10};//{'dest': 77, 'literal': 10, 'size': 2, 'signed': 2, 'op': 'literal'}
    instructions[2303] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2304] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2305] = {6'd3, 7'd44, 7'd77, 32'd0};//{'dest': 44, 'src': 77, 'op': 'move'}
    instructions[2306] = {6'd1, 7'd41, 7'd0, 32'd832};//{'dest': 41, 'label': 832, 'op': 'jmp_and_link'}
    instructions[2307] = {6'd14, 7'd0, 7'd0, 32'd2309};//{'label': 2309, 'op': 'goto'}
    instructions[2308] = {6'd1, 7'd29, 7'd0, 32'd571};//{'dest': 29, 'label': 571, 'op': 'jmp_and_link'}
    instructions[2309] = {6'd14, 7'd0, 7'd0, 32'd1237};//{'label': 1237, 'op': 'goto'}
    instructions[2310] = {6'd41, 7'd76, 7'd0, 32'd0};//{'dest': 76, 'input': 'rs232_rx', 'op': 'read'}
    instructions[2311] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2312] = {6'd4, 7'd0, 7'd0, 32'd0};//{'op': 'nop'}
    instructions[2313] = {6'd3, 7'd63, 7'd76, 32'd0};//{'dest': 63, 'src': 76, 'op': 'move'}
    instructions[2314] = {6'd6, 7'd0, 7'd59, 32'd0};//{'src': 59, 'op': 'jmp_to_reg'}
  end


  //////////////////////////////////////////////////////////////////////////////
  // CPU IMPLEMENTAION OF C PROCESS                                             
  //                                                                            
  // This section of the file contains a CPU implementing the C process.        
  
  always @(posedge clk)
  begin

    //implement memory for 2 byte x n arrays
    if (memory_enable_2 == 1'b1) begin
      memory_2[address_2] <= data_in_2;
    end
    data_out_2 <= memory_2[address_2];
    memory_enable_2 <= 1'b0;

    write_enable_2 <= 0;
    //stage 0 instruction fetch
    if (stage_0_enable) begin
      stage_1_enable <= 1;
      instruction_0 <= instructions[program_counter];
      opcode_0 = instruction_0[51:46];
      dest_0 = instruction_0[45:39];
      src_0 = instruction_0[38:32];
      srcb_0 = instruction_0[6:0];
      literal_0 = instruction_0[31:0];
      if(write_enable_2) begin
        registers[dest_2] <= result_2;
      end
      program_counter_0 <= program_counter;
      program_counter <= program_counter + 1;
    end

    //stage 1 opcode fetch
    if (stage_1_enable) begin
      stage_2_enable <= 1;
      register_1 <= registers[src_0];
      registerb_1 <= registers[srcb_0];
      dest_1 <= dest_0;
      literal_1 <= literal_0;
      opcode_1 <= opcode_0;
      program_counter_1 <= program_counter_0;
    end

    //stage 2 opcode fetch
    if (stage_2_enable) begin
      dest_2 <= dest_1;
      case(opcode_1)

        16'd0:
        begin
          result_2 <= literal_1;
          write_enable_2 <= 1;
        end

        16'd1:
        begin
          program_counter <= literal_1;
          result_2 <= program_counter_1 + 1;
          write_enable_2 <= 1;
          stage_0_enable <= 1;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
        end

        16'd2:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
        end

        16'd3:
        begin
          result_2 <= register_1;
          write_enable_2 <= 1;
        end

        16'd5:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_output_socket_stb <= 1'b1;
          s_output_socket <= register_1;
        end

        16'd6:
        begin
          program_counter <= register_1;
          stage_0_enable <= 1;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
        end

        16'd7:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_output_rs232_tx_stb <= 1'b1;
          s_output_rs232_tx <= register_1;
        end

        16'd8:
        begin
          result_2 <= $unsigned(register_1) + $unsigned(registerb_1);
          write_enable_2 <= 1;
        end

        16'd9:
        begin
          address_2 <= register_1;
        end

        16'd11:
        begin
          result_2 <= data_out_2;
          write_enable_2 <= 1;
        end

        16'd12:
        begin
          if (register_1 == 0) begin
            program_counter <= literal_1;
            stage_0_enable <= 1;
            stage_1_enable <= 0;
            stage_2_enable <= 0;
          end
        end

        16'd13:
        begin
          result_2 <= $unsigned(register_1) + $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd14:
        begin
          program_counter <= literal_1;
          stage_0_enable <= 1;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
        end

        16'd15:
        begin
          result_2 <= $unsigned(register_1) >= $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd16:
        begin
          result_2 <= $unsigned(register_1) - $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd17:
        begin
          result_2 <= $unsigned(register_1) | $unsigned(registerb_1);
          write_enable_2 <= 1;
        end

        16'd18:
        begin
          result_2 <= $unsigned(register_1) | $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd19:
        begin
          result_2 <= $signed(register_1) >= $signed(literal_1);
          write_enable_2 <= 1;
        end

        16'd20:
        begin
          result_2 <= $signed(literal_1) - $signed(register_1);
          write_enable_2 <= 1;
        end

        16'd21:
        begin
          result_2 <= $signed(register_1) << $signed(literal_1);
          write_enable_2 <= 1;
        end

        16'd22:
        begin
          result_2 <= $signed(register_1) & $signed(literal_1);
          write_enable_2 <= 1;
        end

        16'd23:
        begin
          result_2 <= $unsigned(register_1) == $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd24:
        begin
          result_2 <= $unsigned(literal_1) | $unsigned(register_1);
          write_enable_2 <= 1;
        end

        16'd25:
        begin
          result_2 <= $unsigned(register_1) > $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd26:
        begin
          result_2 <= $unsigned(register_1) < $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd27:
        begin
          result_2 <= $unsigned(register_1) < $unsigned(registerb_1);
          write_enable_2 <= 1;
        end

        16'd28:
        begin
          result_2 <= $unsigned(register_1) >> $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd29:
        begin
          result_2 <= $unsigned(register_1) == $unsigned(registerb_1);
          write_enable_2 <= 1;
        end

        16'd30:
        begin
          result_2 <= $signed(register_1) + $signed(literal_1);
          write_enable_2 <= 1;
        end

        16'd31:
        begin
          address_2 <= register_1;
          data_in_2 <= registerb_1;
          memory_enable_2 <= 1'b1;
        end

        16'd32:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_input_socket_ack <= 1'b1;
        end

        16'd33:
        begin
          result_2 <= $unsigned(register_1) & $unsigned(literal_1);
          write_enable_2 <= 1;
        end

        16'd34:
        begin
          if (register_1 != 0) begin
            program_counter <= literal_1;
            stage_0_enable <= 1;
            stage_1_enable <= 0;
            stage_2_enable <= 0;
          end
        end

        16'd35:
        begin
          result_2 <= $signed(register_1) != $signed(literal_1);
          write_enable_2 <= 1;
        end

        16'd36:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_output_leds_stb <= 1'b1;
          s_output_leds <= register_1;
        end

        16'd37:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_input_switches_ack <= 1'b1;
        end

        16'd38:
        begin
          result_2 <= ~register_1;
          write_enable_2 <= 1;
        end

        16'd39:
        begin
          result_2 <= $signed(register_1) + $signed(registerb_1);
          write_enable_2 <= 1;
        end

        16'd40:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_input_buttons_ack <= 1'b1;
        end

        16'd41:
        begin
          stage_0_enable <= 0;
          stage_1_enable <= 0;
          stage_2_enable <= 0;
          s_input_rs232_rx_ack <= 1'b1;
        end

       endcase
    end
     if (s_output_socket_stb == 1'b1 && output_socket_ack == 1'b1) begin
       s_output_socket_stb <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

     if (s_output_rs232_tx_stb == 1'b1 && output_rs232_tx_ack == 1'b1) begin
       s_output_rs232_tx_stb <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

    if (s_input_socket_ack == 1'b1 && input_socket_stb == 1'b1) begin
       result_2 <= input_socket;
       write_enable_2 <= 1;
       s_input_socket_ack <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

     if (s_output_leds_stb == 1'b1 && output_leds_ack == 1'b1) begin
       s_output_leds_stb <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

    if (s_input_switches_ack == 1'b1 && input_switches_stb == 1'b1) begin
       result_2 <= input_switches;
       write_enable_2 <= 1;
       s_input_switches_ack <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

    if (s_input_buttons_ack == 1'b1 && input_buttons_stb == 1'b1) begin
       result_2 <= input_buttons;
       write_enable_2 <= 1;
       s_input_buttons_ack <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

    if (s_input_rs232_rx_ack == 1'b1 && input_rs232_rx_stb == 1'b1) begin
       result_2 <= input_rs232_rx;
       write_enable_2 <= 1;
       s_input_rs232_rx_ack <= 1'b0;
       stage_0_enable <= 1;
       stage_1_enable <= 1;
       stage_2_enable <= 1;
     end

    if (timer == 0) begin
      if (timer_enable) begin
         stage_0_enable <= 1;
         stage_1_enable <= 1;
         stage_2_enable <= 1;
         timer_enable <= 0;
      end
    end else begin
      timer <= timer - 1;
    end

    if (rst == 1'b1) begin
      stage_0_enable <= 1;
      stage_1_enable <= 0;
      stage_2_enable <= 0;
      timer <= 0;
      timer_enable <= 0;
      program_counter <= 0;
      s_input_switches_ack <= 0;
      s_input_buttons_ack <= 0;
      s_input_socket_ack <= 0;
      s_input_rs232_rx_ack <= 0;
      s_output_rs232_tx_stb <= 0;
      s_output_leds_stb <= 0;
      s_output_socket_stb <= 0;
    end
  end
  assign input_switches_ack = s_input_switches_ack;
  assign input_buttons_ack = s_input_buttons_ack;
  assign input_socket_ack = s_input_socket_ack;
  assign input_rs232_rx_ack = s_input_rs232_rx_ack;
  assign output_rs232_tx_stb = s_output_rs232_tx_stb;
  assign output_rs232_tx = s_output_rs232_tx;
  assign output_leds_stb = s_output_leds_stb;
  assign output_leds = s_output_leds;
  assign output_socket_stb = s_output_socket_stb;
  assign output_socket = s_output_socket;

endmodule
