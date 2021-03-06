/*
 * before compile visit:
	http://wiki.ros.org/joy/Tutorials/ConfiguringALinuxJoystick
 * 	this has to be done before using this code:
 * 	sudo apt-get install joystick
 *  sudo jstest /dev/input/js0
 *  ls -l /dev/input/js0
 *  sudo chmod a+rw /dev/input/js0
 *
 */

#include "drivers/cursor/cursorClass.h"
#include "hal/joystick/joystickClass.h"
#include <time.h>
#include <pigpio.h>
#include <sys/socket.h>
#include <bluetooth/bluetooth.h>
#include <bluetooth/rfcomm.h>
#include <stdio.h>
#include <unistd.h>


#define GPIOIZQ 26
#define GPIODER 19
#define PWMFREQ 60

cursorClass* MousePtr;

using namespace std;
int i=100;
js_event jsread;
JoystickClass *js;
int xtemp=100, ytemp=100;

void InitializeMotor(void);
void Bluetooth();


int main()
{
	unsigned int filter=0, xprevInc=0, yprevInc=0;
	unsigned char xbuttonprev=0,squarebuttonprev=0, startbuttonprev=0, trianglebuttonprev=0;
	MousePtr=new cursorClass();
	js=new JoystickClass();
	InitializeMotor();
	printf("\nBegin\n");
	sleep(1);
	while(1)
	{
		jsread=js->EventRead();
		printf("type=%d,number=%d, value=%d\n",jsread.type,jsread.number,jsread.value);    // value
		if ((jsread.type&JS_EVENT_BUTTON)== JS_EVENT_BUTTON)
		{
			if(jsread.number==X_BUTTON)
			{
				if(jsread.value==1 && xbuttonprev==0)
				{
					printf("button x pressed\n");
					MousePtr->Click();
				}
				xbuttonprev=jsread.value;
			}
			else if(jsread.number== SQUARE_BUTTON)
			{
				if(jsread.value==1 && squarebuttonprev==0)
				{
					printf("button square pressed\n");
					MousePtr->DoubleClick();
				}
				squarebuttonprev=jsread.value;
			}
			else if(jsread.number== START_BUTTON)
			{
				if(jsread.value==1 && startbuttonprev==0)
				{
					printf("button start pressed\n");
					MousePtr->MoveCursor(10,10);
					MousePtr->Click();
				}
				startbuttonprev=jsread.value;
			}
			else if(jsread.number== TRIANGLE_BUTTON)
			{
				if(jsread.value==1 && trianglebuttonprev==0)
				{
					printf("button triangle pressed\nBluetooth\n");
					Bluetooth();
				}
				trianglebuttonprev=jsread.value;
			}
			else if(jsread.number== SELECT_BUTTON && jsread.value==1)
			{
				printf("button select pressed\n");
				break;	//exits from application
			}

		}
		if((jsread.type&JS_EVENT_AXIS)== JS_EVENT_AXIS)
		{
			if(jsread.number==XAXIS1 || jsread.number==XAXIS3)
			{
				if((filter++)%10==0)
				{
					xtemp=xtemp+(jsread.value/3276); //to get max increments of 10 by 10 pixels
					if(xtemp<0){xtemp=0;}
					if(xtemp>MousePtr->maxwidth){xtemp=MousePtr->maxwidth;}
					ytemp=ytemp+yprevInc;
					if(ytemp<0){ytemp=0;}
					if(ytemp>MousePtr->maxheight){ytemp=MousePtr->maxheight;}
					MousePtr->MoveCursor(xtemp,ytemp);
					xprevInc=jsread.value/3276;
				}
				if(jsread.value=0){xprevInc=0;}
			}
			if(jsread.number==YAXIS1 || jsread.number==YAXIS3)
			{
				if((filter++)%10==0)
				{
					ytemp=ytemp+(jsread.value/3276); //to get max increments of 10 by 10 pixels
					if(ytemp<0){ytemp=0;}
					if(ytemp>MousePtr->maxheight){ytemp=MousePtr->maxheight;}
					xtemp=xtemp+xprevInc;
					if(xtemp<0){xtemp=0;}
					if(xtemp>MousePtr->maxwidth){xtemp=MousePtr->maxwidth;}
					MousePtr->MoveCursor(xtemp,ytemp);
					yprevInc=jsread.value/3276;
				}
				if(jsread.value=0){yprevInc=0;}
			}

			if(jsread.number==XAXIS2 )//moving DC motor
			{
				if(jsread.value>0)
				{
					gpioPWM(GPIOIZQ,0);
					gpioPWM(GPIODER,jsread.value);
				}
				else if (jsread.value<0)
				{
					gpioPWM(GPIOIZQ,(-1*jsread.value));
					gpioPWM(GPIODER,0);
				}
			}
			if(jsread.number==YAXIS1 || jsread.number==YAXIS3)
			{
				//do nothing
			}

		}
		//sleep(1);
		usleep(1000); //wait 1ms
		fflush(stdout);
	}
	delete js;
	gpioTerminate();
	return 0;
}



void InitializeMotor(void)
{
	gpioInitialise();
	gpioSetPWMfrequency(GPIOIZQ,PWMFREQ);
	gpioSetPWMfrequency(GPIODER,PWMFREQ);
	gpioSetPWMrange(GPIOIZQ,32767);
	gpioSetPWMrange(GPIODER,32767);
	gpioPWM(GPIOIZQ,0);
	gpioPWM(GPIODER,0);
}


void Bluetooth()
{
	bdaddr_t my_bdaddress={0};
	struct sockaddr_rc loc_addr = { 0 }, rem_addr = { 0 };
	char buf[1024] = { 0 };
	int s, client, bytes_read;
	socklen_t opt = sizeof(rem_addr);

	// allocate socket
	s = socket(AF_BLUETOOTH, SOCK_STREAM, BTPROTO_RFCOMM);

	// bind socket to port 1 of the first available
	// local bluetooth adapter
	loc_addr.rc_family = AF_BLUETOOTH;
	//loc_addr.rc_bdaddr = *BDADDR_ANY;
	loc_addr.rc_bdaddr = my_bdaddress;
	loc_addr.rc_channel = (uint8_t) 1;
	bind(s, (struct sockaddr *)&loc_addr, sizeof(loc_addr));

	// put socket into listening mode
	listen(s, 1);

	// accept one connection
	client = accept(s, (struct sockaddr *)&rem_addr, &opt);

	ba2str( &rem_addr.rc_bdaddr, buf );
	fprintf(stderr, "accepted connection from %s\n", buf);
	memset(buf, 0, sizeof(buf));

	// read data from the client
	while (!strstr(buf,"R"))
	{
		bytes_read = read(client, buf, sizeof(buf));
		if( bytes_read > 0 ) {
			printf("[%s]\n", buf);
			if(strchr(buf,'1'))
			{
				ytemp=ytemp-10;
				if(ytemp<0){ytemp=0;}
				if(ytemp>MousePtr->maxheight){ytemp=MousePtr->maxheight;}
				MousePtr->MoveCursor(xtemp,ytemp);
			}
			if(strchr(buf,'2'))
			{
				xtemp=xtemp+10;
				if(xtemp<0){xtemp=0;}
				if(xtemp>MousePtr->maxwidth){xtemp=MousePtr->maxwidth;}
				MousePtr->MoveCursor(xtemp,ytemp);
			}
			if(strchr(buf,'3'))
			{
				ytemp=ytemp+10;
				if(ytemp<0){ytemp=0;}
				if(ytemp>MousePtr->maxheight){ytemp=MousePtr->maxheight;}
				MousePtr->MoveCursor(xtemp,ytemp);
			}
			if(strchr(buf,'4'))
			{
				xtemp=xtemp-10;
				if(xtemp<0){xtemp=0;}
				if(xtemp>MousePtr->maxwidth){xtemp=MousePtr->maxwidth;}
				MousePtr->MoveCursor(xtemp,ytemp);
			}
		}


	}
	// close connection
	close(client);
	close(s);
}
