

#include "joystickClass.h"


JoystickClass::JoystickClass()
{
	fd = open ("/dev/input/js0", O_RDONLY);
	ioctl (fd, JSIOCGAXES, &number_of_axes);
	printf("%d",number_of_axes);
	sleep(1);
	//FD_ZERO(&rfds);
    //FD_SET(fd, &rfds);
	//tv.tv_sec = 0;
    //tv.tv_usec = 10000; //wait 10ms per read
	//select(1, &rfds, NULL, NULL, &tv);
	fcntl(fd, F_SETFL, O_NONBLOCK );	/* use non-blocking mode */
}
JoystickClass::~JoystickClass()
{
	close (fd);
}

js_event JoystickClass::EventRead()
{
	read (fd, &e, sizeof(e));
	return e;
}
