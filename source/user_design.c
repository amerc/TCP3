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
//<p>&#x0639;&#x0627;&#x0645;&#x0631;<br></p>\

void user_design()
{
	//simple echo application
	unsigned length, datout;
	unsigned i, index, pageint;
	unsigned data[1460];
	unsigned word;
	unsigned switches = 0;
	unsigned buttons = 0;
	unsigned leds = 0;
	unsigned start, end;
	unsigned imgBytes[100];
	imgBytes[0]=0x5089u;
	imgBytes[1]=0x474eu;
	imgBytes[3]=0x0a0du;///
	imgBytes[4]=0x0a1au;
	imgBytes[5]=0x0000u;
	imgBytes[6]=0x0d00u;
	imgBytes[7]=0x4849u;
	imgBytes[8]=0x5244u;
	imgBytes[9]=0x0000u;
	imgBytes[10]=0x0100u;
	imgBytes[11]=0x0000u;
	imgBytes[12]=0x0100u;
	imgBytes[13]=0x0208u;
	imgBytes[14]=0x0000u;
	imgBytes[15]=0x9000u;
	imgBytes[16]=0x5377u;
	imgBytes[17]=0x00deu;
	imgBytes[18]=0x0000u;
	imgBytes[19]=0x490cu;
	imgBytes[20]=0x4144u;
	imgBytes[21]=0x0854u;
	imgBytes[22]=0x63d7u;
	imgBytes[23]=0x22f8u;
	imgBytes[24]=0x0727u;
	imgBytes[25]=0x0300u;
	imgBytes[26]=0x013au;
	imgBytes[27]=0xa231u;
	imgBytes[28]=0x1feau;
	imgBytes[29]=0x006au;
	imgBytes[30]=0x0000u;
	imgBytes[31]=0x5089u;
	imgBytes[32]=0x474eu;
	imgBytes[33]=0x0a0du;///
	imgBytes[34]=0x4900u;
	imgBytes[35]=0x4e45u;
	imgBytes[36]=0xae44u;
	imgBytes[37]=0x6042u;
	imgBytes[38]=0x0082u;
	
	unsigned page1[] =
"<!DOCTYPE html><html>\
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
	unsigned page[] = 
"<html>\
<head>\
<title>Service Web multim&eacute;dia, Chips-2.0 Nexys3</title>\
</head>\
<body>\
<h1>Service Web multim&eacute;dia </h1>\
<p>Welcome to the MWS on FPGA Nexys3 board!</p>\
<p>Par Amer Al-Canaan, juin 2014</p>\
<p>Switch Status: 00000000</p>\
<p>Button Status: 0000 </p>\
<form>\
	<input type=\"checkbox\" name=\"led1\" value=\"A\">led 0</input>\
	<input type=\"checkbox\" name=\"led2\" value=\"B\">led 1</input>\
	<input type=\"checkbox\" name=\"led3\" value=\"C\">led 2</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"D\">led 3</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"E\">led 4</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"F\">led 5</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"G\">led 6</input>\
	<input type=\"checkbox\" name=\"led4\" value=\"H\">led 7</input>\
	<button type=\"sumbit\" value=\"Submit\">Update LEDs</button>\
</form>\
<p>This <a href=\"https://github.com/amerc/phimii\">project</a>\
 is powered by <a href=\"http://pyandchips.org\">Chips-2.0</a>.<br>\
<br><br><br>Amer Al-Canaan (C) 2014</p>\
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
		   && (data[5] == '?' || data[5] == ' ')){
			start=5;
			end=find(data, ' ', start, index);
			leds = 0;
			if(find(data, 'A', start, end) != -1) leds |= 1;
			if(find(data, 'B', start, end) != -1) leds |= 2;
			if(find(data, 'C', start, end) != -1) leds |= 4;
			if(find(data, 'D', start, end) != -1) leds |= 8;
			if(find(data, 'E', start, end) != -1) leds |= 16;
			if(find(data, 'F', start, end) != -1) leds |= 32;
			if(find(data, 'G', start, end) != -1) leds |= 64;
			if(find(data, 'H', start, end) != -1) leds |= 128;
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
			if(buttons & 8) page[index] = '0';
			else page[index] = '1';  
			unsigned header[] = 
"HTTP/1.1 200 OK\r\n\
Date: Thu Oct 31 19:16:00 2013\r\n\
Server: chips-web/0.0\r\n\
Content-Type: text/html\r\n\
Content-Length: ";                      
                        
			HTTP_OK(page, header);
                        
		} // send an image
		else if(   data[0] == 'G' 
				&& data[1] == 'E' 
				&& data[2] == 'T' 
				&& data[3] == ' ' 
				&& data[4] == '/'
				&& (data[5] == 'B' || data[5] == 'b')){
				unsigned header[] = 
"HTTP/1.1 200 OK\r\n\
Date: Thu Oct 31 19:16:00 2013\r\n\
Server: chips-web/0.0\r\n\
Content-Type: text/html\r\n\
Content-Length: ";

			HTTP_OK(page1, header);
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
Content-Type: img/png\r\n\
Content-Length: ";

			HTTP_OK2(imgBytes, header);
		}
		else {
			HTTP_Not_Found();
		}

	}

        //dummy access to peripherals
	index = input_rs232_rx();
}
