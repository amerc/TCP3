////////////////////////////////////////////////////////////////////////////////
//
//  CHIPS-2.0 USER DESIGN
//
//  :Author: Jonathan P Dawson
//  :Date: 17/10/2013
//  :email: chips@jondawson.org.uk
//  :license: MIT
//  :Copyright: Copyright (C) Jonathan P Dawson 2013
//
//  Simple web app demo.
//
////////////////////////////////////////////////////////////////////////////////

void put_socket(unsigned i){
	output_socket(i);
}
void stdout_put_char(unsigned i){
	output_rs232_tx(i);
}

#include "print.h"
#include "HTTP.h"

int find(unsigned string[], unsigned search, unsigned start, unsigned end){
	int value = start;
	while(string[value]){
	       print_decimal(string[value]); print_string("\n");
	       print_decimal(value); print_string("\n");
	       if(value == end) return -1;
	       if(string[value] == search) return value;
	       value++;
	}
	return -1;
}

void user_design()
{
unsigned img2 [10]; //[273]; 
img2[0]=0x8950u;
img2[1]=0x4e47u;
img2[2]=0x0d0au;
img2[3]=0x1a0au;
img2[4]=0x0000u;
img2[5]=0x000du;
img2[6]=0x4948u;
img2[7]=0x4452u;
img2[8]=0x0000u;
img2[9]=0x0014u;
//img2[10]=0x0000u;
//img2[11]=0x001du;
//img2[12]=0x0806u;
//img2[13]=0x0000u;
//img2[14]=0x00aau;
//img2[15]=0x864cu;
//img2[16]=0xc500u;
//img2[17]=0x0000u;
//img2[18]=0x0970u;
//img2[19]=0x4859u;
//img2[20]=0x7300u;
//img2[21]=0x000bu;
//img2[22]=0x1300u;
//img2[23]=0x000bu;
//img2[24]=0x1301u;
//img2[25]=0x009au;
//img2[26]=0x9c18u;
//img2[27]=0x0000u;
//img2[28]=0x01d4u;
//img2[29]=0x4944u;
//img2[30]=0x4154u;
//img2[31]=0x4889u;
//img2[32]=0xcd96u;
//img2[33]=0x3f4au;
//img2[34]=0x0341u;
//img2[35]=0x14c6u;
//img2[36]=0x7f1bu;
//img2[37]=0xd29au;
//img2[38]=0x4248u;
//img2[39]=0x2b9bu;
//img2[40]=0x6c11u;
//img2[41]=0xb408u;
//img2[42]=0x88a4u;
//img2[43]=0x89c1u;
//img2[44]=0x03ecu;
//img2[45]=0x0984u;
//img2[46]=0x10acu;
//img2[47]=0xace2u;
//img2[48]=0xe219u;
//img2[49]=0xbc81u;
//img2[50]=0xb85au;
//img2[51]=0x0942u;
//img2[52]=0x8882u;
//img2[53]=0x1730u;
//img2[54]=0x6061u;
//img2[55]=0x23d1u;
//img2[56]=0x466cu;
//img2[57]=0xd288u;
//img2[58]=0x4534u;
//img2[59]=0xa4b0u;
//img2[60]=0x3062u;
//img2[61]=0x2182u;
//img2[62]=0xdd8eu;
//img2[63]=0xc566u;
//img2[64]=0x7667u;
//img2[65]=0x269bu;
//img2[66]=0x4525u;
//img2[67]=0x01bfu;
//img2[68]=0xea0du;
//img2[69]=0x6fe6u;
//img2[70]=0x9bf7u;
//img2[71]=0x77deu;
//img2[72]=0x5817u;
//img2[73]=0xabb6u;
//img2[74]=0x600cu;
//img2[75]=0xf7f8u;
//img2[76]=0x0cd6u;
//img2[77]=0xaae1u;
//img2[78]=0xe2feu;
//img2[79]=0x1615u;
//img2[80]=0x7eb7u;
//img2[81]=0x1ac9u;
//img2[82]=0x8f7du;
//img2[83]=0x4bd3u;
//img2[84]=0x1df9u;
//img2[85]=0xb16cu;
//img2[86]=0xbd9eu;
//img2[87]=0x14c5u;
//img2[88]=0x9d1fu;
//img2[89]=0xc484u;
//img2[90]=0x0904u;
//img2[91]=0x004eu;
//img2[92]=0xab40u;
//img2[93]=0xa736u;
//img2[94]=0x200du;
//img2[95]=0x473eu;
//img2[96]=0x6452u;
//img2[97]=0x77fcu;
//img2[98]=0x01d9u;
//img2[99]=0x7cb9u;
//img2[100]=0x0dd4u;
//img2[101]=0x272cu;
//img2[102]=0x735au;
//img2[103]=0x85c8u;
//img2[104]=0xe251u;
//img2[105]=0xaf01u;
//img2[106]=0x5e06u;
//img2[107]=0xb77cu;
//img2[108]=0x0340u;
//img2[109]=0x67bbu;
//img2[110]=0x3ed5u;
//img2[111]=0x5a4bu;
//img2[112]=0x8da1u;
//img2[113]=0x0ad5u;
//img2[114]=0xfd34u;
//img2[115]=0xecb4u;
//img2[116]=0xd623u;
//img2[117]=0x793eu;
//img2[118]=0x2e9bu;
//img2[119]=0xa697u;
//img2[120]=0x1c69u;
//img2[121]=0xf0edu;
//img2[122]=0xc4e6u;
//img2[123]=0x2494u;
//img2[124]=0x1ca1u;
//img2[125]=0x653du;
//img2[126]=0x6b6eu;
//img2[127]=0xf06au;
//img2[128]=0x3f23u;
//img2[129]=0x92d8u;
//img2[130]=0xcc39u;
//img2[131]=0xec29u;
//img2[132]=0xeb99u;
//img2[133]=0xbbfcu;
//img2[134]=0xff09u;
//img2[135]=0xb300u;
//img2[136]=0xcb4fu;
//img2[137]=0x8b00u;
//img2[138]=0x3c14u;
//img2[139]=0xdf35u;
//img2[140]=0xe5e7u;
//img2[141]=0xcb29u;
//img2[142]=0x00c3u;
//img2[143]=0x6bc1u;
//img2[144]=0xd246u;
//img2[145]=0x1cf8u;
//img2[146]=0xe175u;
//img2[147]=0x5c69u;
//img2[148]=0x5f6fu;
//img2[149]=0x012cu;
//img2[150]=0x1884u;
//img2[151]=0x8597u;
//img2[152]=0x5c22u;
//img2[153]=0xe1d7u;
//img2[154]=0xdb25u;
//img2[155]=0x0083u;
//img2[156]=0xab80u;
//img2[157]=0xfc4au;
//img2[158]=0xecccu;
//img2[159]=0xe02au;
//img2[160]=0xd0cdu;
//img2[161]=0xaac5u;
//img2[162]=0xa2f5u;
//img2[163]=0x7a52u;
//img2[164]=0x1461u;
//img2[165]=0xb784u;
//img2[166]=0x1da0u;
//img2[167]=0x1674u;
//img2[168]=0x67bbu;
//img2[169]=0xae9du;
//img2[170]=0x933au;
//img2[171]=0xb598u;
//img2[172]=0x5594u;
//img2[173]=0x1c81u;
//img2[174]=0x75b0u;
//img2[175]=0x2fc4u;
//img2[176]=0x6f4bu;
//img2[177]=0xc5bcu;
//img2[178]=0x48a2u;
//img2[179]=0xbff5u;
//img2[180]=0x3ca7u;
//img2[181]=0xa4fcu;
//img2[182]=0x0549u;
//img2[183]=0xa1d9u;
//img2[184]=0xcc39u;
//img2[185]=0x584du;
//img2[186]=0x0f71u;
//img2[187]=0xb875u;
//img2[188]=0x9378u;
//img2[189]=0x68d4u;
//img2[190]=0x6b00u;
//img2[191]=0x902fu;
//img2[192]=0xb7a7u;
//img2[193]=0xba69u;
//img2[194]=0x62f6u;
//img2[195]=0x855du;
//img2[196]=0x7204u;
//img2[197]=0x3badu;
//img2[198]=0xf5a9u;
//img2[199]=0x9983u;
//img2[200]=0xd0d2u;
//img2[201]=0x8a17u;
//img2[202]=0xdf6du;
//img2[203]=0x3e28u;
//img2[204]=0x152fu;
//img2[205]=0x13e9u;
//img2[206]=0x5363u;
//img2[207]=0x28cbu;
//img2[208]=0x293eu;
//img2[209]=0x1886u;
//img2[210]=0x00dfu;
//img2[211]=0xd6c8u;
//img2[212]=0x2b14u;
//img2[213]=0x23e2u;
//img2[214]=0xd967u;
//img2[215]=0xd99cu;
//img2[216]=0x603fu;
//img2[217]=0x8574u;
//img2[218]=0xdbedu;
//img2[219]=0xdab0u;
//img2[220]=0xaa10u;
//img2[221]=0xba5du;
//img2[222]=0x5b2bu;
//img2[223]=0x0199u;
//img2[224]=0x5980u;
//img2[225]=0xf38fu;
//img2[226]=0x3e90u;
//img2[227]=0xfe46u;
//img2[228]=0xaab1u;
//img2[229]=0x05c6u;
//img2[230]=0x6573u;
//img2[231]=0xa08cu;
//img2[232]=0x95f1u;
//img2[233]=0x3c1eu;
//img2[234]=0xf51au;
//img2[235]=0xc8f1u;
//img2[236]=0x9a34u;
//img2[237]=0x90dcu;
//img2[238]=0xae3du;
//img2[239]=0x417au;
//img2[240]=0xe707u;
//img2[241]=0xf3eau;
//img2[242]=0x14f9u;
//img2[243]=0x4b58u;
//img2[244]=0xab46u;
//img2[245]=0x3f87u;
//img2[246]=0x3c6du;
//img2[247]=0x2dabu;
//img2[248]=0xa695u;
//img2[249]=0xda5au;
//img2[250]=0xc9bau;
//img2[251]=0xd5f4u;
//img2[252]=0x1072u;
//img2[253]=0x3079u;
//img2[254]=0xbbc6u;
//img2[255]=0x7586u;
//img2[256]=0xfb92u;
//img2[257]=0x441du;
//img2[258]=0x4ceau;
//img2[259]=0x37a4u;
//img2[260]=0xe9cdu;
//img2[261]=0xa153u;
//img2[262]=0xbe01u;
//img2[263]=0x9de4u;
//img2[264]=0xb279u;
//img2[265]=0xe79du;
//img2[266]=0x7cfeu;
//img2[267]=0x0000u;
//img2[268]=0x0000u;
//img2[269]=0x4945u;
//img2[270]=0x4e44u;
//img2[271]=0xae42u;
//img2[272]=0x6082u;

////327-55
	//simple echo application
	unsigned length, datout;
	unsigned i, index, resptime;
	unsigned data[1460];
	unsigned word;
	unsigned switches = 0;
	unsigned buttons = 0;
	unsigned leds = 0;
	unsigned start, end;
	unsigned resp = 0;
	// This is a tiny image 1x1 pixel red dot sent as binary
	//unsigned imgBytes[36];
	//imgBytes[0]=0x5089u;
	////imgBytes[1]=0x89;//u;
	//imgBytes[1]=0x474eu;
	////imgBytes[2]=0x4e;//u;
	//imgBytes[2]=0x0a0du;
	//////imgBytes[4]=0x0d;//u;///
	////imgBytes[3]=0x0a1au;
	////imgBytes[6]=0x1a;//u;
	//imgBytes[4]=0x0000u;
	////imgBytes[8]=0x00;//u;
	//imgBytes[5]=0x0d00u;
	////imgBytes[10]=0x00;//u;
	//imgBytes[6]=0x4849u;
	////imgBytes[12]=0x49;//u;
	//imgBytes[7]=0x5244u;
	////imgBytes[14]=0x44;//u;
	//imgBytes[8]=0x0000u;
	////imgBytes[16]=0x00;//u;
	//imgBytes[9]=0x0100u;
	////imgBytes[18]=0x00;//u;
	//imgBytes[10]=0x0000u;
	////imgBytes[20]=0x00;
	//imgBytes[11]=0x0100u;
	////imgBytes[22]=0x00;
	//imgBytes[12]=0x0208u;
	////imgBytes[24]=0x08;
	//imgBytes[13]=0x0000u;
	////imgBytes[26]=0x00;
	//imgBytes[14]=0x9000u;
	////imgBytes[28]=0x00;
	//imgBytes[15]=0x5377u;
	//imgBytes[16]=0x00deu;
	//imgBytes[17]=0x0000u;
	//imgBytes[18]=0x490cu;
	//imgBytes[19]=0x4144u;
	//imgBytes[20]=0x0854u;
	//imgBytes[21]=0x63d7u;
	//imgBytes[22]=0x22f8u;
	//imgBytes[23]=0x0727u;
	//imgBytes[24]=0x0300u;
	//imgBytes[25]=0x013au;
	//imgBytes[26]=0xa231u;
	//imgBytes[27]=0x1feau;
	//imgBytes[28]=0x006au;
	//imgBytes[29]=0x0000u;
	//imgBytes[30]=0x4900u;
	//imgBytes[31]=0x4e45u;
	//imgBytes[32]=0xae44u;//
	//imgBytes[33]=0x6042u;
	//imgBytes[34]=0x0082u;
    //imgBytes[35]=0xffffu;

	// A HTML page with an imbedded tiny image (base-64)
	unsigned page1[] =
"<html>\
<head>\
<title>Service Web multim&eacute;dia, Chips-2.0 Nexys3 ...</title>\
</head>\
<body>\
<h1>Service Web multim&eacute;dia sur la carte Nexys3 </h1>\
<img src=\"data:image/gif;base64,R0lGODlhFAAdAMIGAAAAAIAAAICAAICA//+AAP+\
AgP///////yH+GkNyZWF0ZWQgd2l0aCBHSU1QIG9uIGEgTWFjACH5BAEKAAcALAAAAAAUAB0A\
AAOdGGrcNlBIASpZDMIwO71Bow2cJwHGsjEEwZQToMyhY8c0ZjdxB+2OwakDtBGGk6LjSCEqW\
UjJE9pMMgrYbJYJECgEjVagBfp+Xg0aw/Sb5gLt5zuurKXGYKPrTcsv93wKQn4GZCBeCmKDRW\
JfZItAjRxkVjtiEmNiYS1tlwKGhIVmEzOXRqOYiRehhasmMwJ0LCWDFV2xA5a0JxUCCQA7\" alt\
=\"AM9.gif\" WIDTH=60 HEIGHT=90/>\
<p style=\"font-size:16px\"><br><br>Amer Al-Canaan (C) 2014  </p>\
</body>\
</html>";
	//main HTML page
	unsigned page[] = 
"<html>\
<head>\
<title>Service Web multim&eacute;dia, Chips-2.0 Nexys3</title>\
</head>\
<body>\
<h1>Service Web multim&eacute;dia </h1>\
<p>Welcome to the MWS on FPGA Nexys3 board!</p>\
<p>Par Amer Al-Canaan, juin 2014</p>\
<h3>Switch Status: 00000000</h3>\
<h3>Button Status: 0000</h3>\
<h3>Response time: 00000000 ns</h3>\
<form>\
	<input type=\"checkbox\" name=\"led1\" value=\"A\">led 0</input>\
	<input type=\"checkbox\" name=\"led2\" value=\"B\">led 1</input>\
	<input type=\"checkbox\" name=\"led3\" value=\"C\">led 2</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"D\">led 3</input>\
	<button type=\"sumbit\" value=\"Submit\">Update LEDs</button>\
</form>\
<p>This <a href=\"https://github.com/amerc/phimii\">project</a>\
 is powered by <a href=\"http://pyandchips.org\">Chips-2.0</a>.<br>\
Amer Al-Canaan (C) 2014</p>\
</body>\
</html>";

	print_string("Welcome to the Nexys3 Chips-2.0 demo!\n");
	print_string("Connect your Web browser to 192.168.0.119\n");
	while(1){
		// Read request from socket
		length = input_socket();
		index = 0;
		for(i=0;i<length;i+=2){
			word = input_socket();
			data[index] = (word >> 8) & 0xff;
			index++;
			data[index] = (word) & 0xff;
			index++;
		}

		//Get LED values
		//==============

		if(   data[0] == 'G' 
		   && data[1] == 'E' 
		   && data[2] == 'T' 
		   && data[3] == ' ' 
		   && data[4] == '/'
		   && (data[5] == '?' || data[5] == ' ')){////////////////////////////
			start=5;
			end=find(data, ' ', start, index);
			leds = 0;
			if(find(data, 'A', start, end) != -1) leds |= 1;
			if(find(data, 'B', start, end) != -1) leds |= 2;
			if(find(data, 'C', start, end) != -1) leds |= 4;
			if(find(data, 'D', start, end) != -1) leds |= 8;

			output_leds(leds);

			//read switch values
			//==================
			switches = ~input_switches();
			//find first ':'
			index = find(page, ':', 0, 1460);
			index+=2;
			//insert switch values
			if(switches & 128) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 64) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 32) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 16) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 8) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 4) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 2) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(switches & 1) page[index] = '0';
			else page[index] = '1';

			//read button values
			//==================
			buttons = ~input_buttons();
			//find next ':'
			index = find(page, ':', index+1, 1460);
			index+=2;
			//insert button values
			if(buttons & 1) page[index] = '0';				
			else page[index] = '1';
			index ++;
			if(buttons & 2) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(buttons & 4) page[index] = '0';
			else page[index] = '1';
			index ++;
			if(buttons & 8)	page[index] = '0';
			else page[index] = '1'; 
			//send main HTML page
			HTTP_OK(page);
                        
		} // send an image
		else if(   data[0] == 'G' 
				&& data[1] == 'E' 
				&& data[2] == 'T' 
				&& data[3] == ' ' 
				&& data[4] == '/'
				&& (data[5] == 'B' || data[5] == 'b')){
			// send HTML page with an embedded image
			HTTP_OK(page1);
		}
		else if(   data[0] == 'G' 
				&& data[1] == 'E' 
				&& data[2] == 'T' 
				&& data[3] == ' ' 
				&& data[4] == '/'
				&& (data[5] == 'C' || data[5] == 'c')){
				unsigned header[] = 
"HTTP/1.1 200 OK\r\n\
Date: Thu Oct 31 19:16:00 2013\r\n\
Server: chips-web/0.0\r\n\
Content-Type: application/octet-stream\r\n\
Content-Length: ";
			//find first ':'
			index = find(page, ':', 0, 1460);
			index+=2;
			//find 2nd ':'
			index = find(page, ':', index+1, 1460);
			index+=2;
			//find 3rd ':'
			index = find(page, ':', index+1, 1460);
			index+=2;
			//send a binary image
			HTTP_OK2(img2, header, 10);//546);						 
		}
		else {
			HTTP_Not_Found();
		}

	}

        //dummy access to peripherals
	index = input_rs232_rx();
}
