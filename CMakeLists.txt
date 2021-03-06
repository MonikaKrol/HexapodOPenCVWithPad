cmake_minimum_required(VERSION 2.8)
project( hex )

set(CMAKE_CXX_STANDARD 14)

set(OpenCV_INCLUDE_DIRS
	/usr/local/include
	/usr/local/include/opencv2
)

set(OpenCV_LIB_DIR
	/usr/local/lib
)

set(OpenCV_LIBS
        pthread
	opencv_core
	opencv_highgui
        opencv_imgproc
	curses
	udev
)

set(SOURCES
	src/main.cpp

	src/Robot/leg.h src/Robot/leg.cpp
	src/Robot/robot.h src/Robot/robot.cpp
	src/Robot/robotwalk.h src/Robot/robotwalk.cpp
	src/Robot/robotcontroler.h src/Robot/robotcontroler.cpp
	
	src/util.h src/util.cpp

	src/GUI/gui.h src/GUI/gui.cpp
	src/GUI/viewer.h src/GUI/viewer.cpp
	src/GUI/perspectiveprojection.h src/GUI/perspectiveprojection.cpp
	src/Gamepad/gamepad.h src/Gamepad/gamepad.c

	src/TCP/tcpconnector.h src/TCP/tcpconnector.cpp
	src/TCP/tcpacceptor.h src/TCP/tcpacceptor.cpp
	src/TCP/tcpstream.h src/TCP/tcpstream.cpp)


include_directories( ${OpenCV_INCLUDE_DIRS} ${PROJECT_SOURCE_DIR})
link_directories( ${OpenCV_LIB_DIR} )
add_executable( hex ${SOURCES} )
target_link_libraries( hex ${OpenCV_LIBS} )
