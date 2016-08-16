export CPLUS_INCLUDE_PATH=/opt/intel/opencl/include
export LIBRARY_PATH=/opt/intel/opencl

HEADERS=
SOURCES=main.cpp

ifeq ($(CONFIG),debug)
	OPT =-O0 -g
else
	OPT =
endif

all: harris

harris: $(HEADERS) $(SOURCES) Makefile
	g++ -o harris $(SOURCES) -I -lOpenCL -std=gnu++0x $(OPT)

clean:
	rm -f harris
