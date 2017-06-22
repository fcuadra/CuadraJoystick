#ifndef JOYSTICKCLASS_H
#define JOYSTICKCLASS_H

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>
#include <string>
#include <sstream>
#include <sys/ioctl.h>
#include <linux/joystick.h>

enum BUTTONNAMES{
	TRIANGLE_BUTTON=0,
	CIRCLE_BUTTON=1,
	X_BUTTON=2,
	SQUARE_BUTTON=3,
	L2_BUTTON=4,
	R2_BUTTON=5,
	L1_BUTTON=6,
	R1_BUTTON=7,
	SELECT_BUTTON=8,
	START_BUTTON=9,
	LEFTJOY_BUTTON=10,
	RIGTHJOY_BUTTON=11
};

enum Axis
{
	XAXIS1=0,
	YAXIS1=1,
	YAXIS2=2,
	XAXIS2=3,
	XAXIS3=4,
	YAXIS3=5
};



class JoystickClass
{
public:
	JoystickClass();
	~JoystickClass();
	js_event EventRead();

	js_event e;
	char number_of_axes;
private:
    int fd;
    //fd_set rfds;
	struct timeval tv;
	static const short MIN_AXES_VALUE = -32768;
    static const short MAX_AXES_VALUE = 32767;
};

#endif
