

OBJS = Cookie.o Board.o ListBoardObjects.o Player.o Wall.o myprogram.o
CFLAGS=-g -Wall

default: myprogram

myprogram :$(OBJS)
	g++ $(CFLAGS) $(OBJS) -o myprogram

myprogram.o :ListBoardObjectsH.h BoardObjectH.h WallH.h main.cpp
	g++ $(CFLAGS) -c main.cpp -o myprogram.o

Player.o : PlayerH.h BoardObjectH.h Player.cpp
	g++ $(CFLAGS) -c Player.cpp -o Player.o 

Wall.o : WallH.h BoardObjectH.h Wall.cpp
	g++ $(CFLAGS) -c Wall.cpp -o Wall.o 

Cookie.o : CookieH.h BoardObjectH.h Cookie.cpp
	g++ $(CFLAGS) -c Cookie.cpp -o Cookie.o 

Board.o : BoardH.h Board.cpp BoardObjectH.h ListBoardObjectsH.h PlayerH.h WallH.h CookieH.h
	g++ $(CFLAGS) -c Board.cpp -o Board.o 

ListBoardObjects.o : ListBoardObjectsH.h BoardObjectH.h ListBoardObjects.cpp PlayerH.h CookieH.h
	g++ $(CFLAGS) -c ListBoardObjects.cpp -o ListBoardObjects.o 


clean :
	rm *.o myprogram

