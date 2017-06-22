
#include "cursorClass.h"
#include <unistd.h>
#include <string.h>
#include <stdio.h>

 cursorClass::cursorClass()
 {
	 XWindowAttributes window_attributes_return;
	 //Get system window
	 dpy = XOpenDisplay(0);
	 root_window = XRootWindow(dpy, 0);
	 XSelectInput(dpy, root_window, KeyReleaseMask);

	 XGetWindowAttributes(dpy, root_window, &window_attributes_return);
	 maxwidth=window_attributes_return.width;
	 maxheight=window_attributes_return.height;
	 printf("max width %d, ",maxwidth);
	 printf("max height %d. ",maxheight);
 }
 cursorClass::~cursorClass()
 {
	 dpy=0;
	 root_window=0;
 }
 void cursorClass::MoveCursor(int x,int y)
 {
	 if(dpy!=0 && root_window!=0)
	 {
		 XWarpPointer(dpy, None, root_window, 0, 0, 0, 0, x, y);
		 XFlush(dpy);	//update cursor's position
	 }
 }
 void cursorClass::Click()
 {
	 XEvent event;
	 int button=1;

	 if(dpy != 0)
	 {
		 memset(&event, 0x00, sizeof(event));
	 	 event.type = ButtonPress;
	 	 event.xbutton.button = button;
	 	 event.xbutton.same_screen = True;
	 	 XQueryPointer(dpy, root_window, &event.xbutton.root, &event.xbutton.window, &event.xbutton.x_root, &event.xbutton.y_root, &event.xbutton.x, &event.xbutton.y, &event.xbutton.state);
	 	 event.xbutton.subwindow = event.xbutton.window;
	 	 while(event.xbutton.subwindow)
	 	 {
	 		 event.xbutton.window = event.xbutton.subwindow;
	 		 XQueryPointer(dpy, event.xbutton.window, &event.xbutton.root, &event.xbutton.subwindow, &event.xbutton.x_root, &event.xbutton.y_root, &event.xbutton.x, &event.xbutton.y, &event.xbutton.state);
	 	 }
	 	 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
	 	 XFlush(dpy);
	 	 usleep(100000);
	 	 event.type = ButtonRelease;
	 	 event.xbutton.state = 0x100;
	 	 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
	 	 XFlush(dpy);
	 }
 }
 void cursorClass::DoubleClick()
 {
	 XEvent event;
	 int button=1;

	 if(dpy != 0)
	 {
		 memset(&event, 0x00, sizeof(event));
		 event.type = ButtonPress;
		 event.xbutton.button = button;
		 event.xbutton.same_screen = True;
		 XQueryPointer(dpy, root_window, &event.xbutton.root, &event.xbutton.window, &event.xbutton.x_root, &event.xbutton.y_root, &event.xbutton.x, &event.xbutton.y, &event.xbutton.state);
		 event.xbutton.subwindow = event.xbutton.window;
		 while(event.xbutton.subwindow)
		 {
			 event.xbutton.window = event.xbutton.subwindow;
			 XQueryPointer(dpy, event.xbutton.window, &event.xbutton.root, &event.xbutton.subwindow, &event.xbutton.x_root, &event.xbutton.y_root, &event.xbutton.x, &event.xbutton.y, &event.xbutton.state);
		 }
		 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
		 XFlush(dpy);
		 usleep(100000);
		 event.type = ButtonRelease;
		 event.xbutton.state = 0x100;
		 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
		 XFlush(dpy);
		 usleep(100000);
		 event.type = ButtonPress;
		 event.xbutton.state = 0x100;
		 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
		 XFlush(dpy);
		 usleep(100000);
		 event.type = ButtonRelease;
		 event.xbutton.state = 0x100;
		 XSendEvent(dpy, event.xbutton.window, True, 0xfff, &event);
		 XFlush(dpy);
	 }
 }
