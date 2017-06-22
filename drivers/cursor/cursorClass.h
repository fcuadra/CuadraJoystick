/***********************************************************************
 * cursor
 * ****************************************************************************/
#ifndef CURSOR_H
    #define CURSOR_H


#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>

class cursorClass{

public:
	cursorClass();
    ~cursorClass();
    void MoveCursor(int x,int y);
    void Click();
    void DoubleClick();
    int maxwidth;
    int maxheight;
private:
    Display *dpy;
    Window root_window;
};

#endif
