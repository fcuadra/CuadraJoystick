build: pre compile asm linker run clean

pre:
	cpp main_app.cpp > main_app.i
	cpp drivers/cursor/cursorClass.cpp > cursorClass.i
	cpp hal/gpio/GPIOClass.cpp > GPIOClass.i
	cpp hal/joystick/joystickClass.cpp > joystickClass.i
compile:
	g++ -S main_app.i 
	g++ -S -c cursorClass.i
	g++ -S -c GPIOClass.i
	g++ -S -c joystickClass.i
	
asm:
	as -o main_app.o main_app.s 
	as -o cursorClass.o cursorClass.s
	as -o GPIOClass.o GPIOClass.s
	as -o joystickClass.o joystickClass.s
linker:
	g++ -lX11 -lpigpio -lrt -lpthread -Wall -o Joystick.exe main_app.o cursorClass.o GPIOClass.o joystickClass.o
run:
	./Joystick.exe
clean:
	rm *.i *.s *.o Joystick.exe
