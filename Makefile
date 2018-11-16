CC=g++
FORTRAN=gfortran
CFLAGS=-std=c++11

INCLUDES=
LIBRARIES=-lpgplot -lcpgplot -lX11

all: pgplot_example.o pgplot_example

pgplot_example.o: pgplot_example.cpp
	$(CC) $(CFLAGS) -o $@ -c $^

pgplot_example: pgplot_example.o
	$(FORTRAN) -o $@ $^ $(INCLUDES) $(LIBRARIES)

clean:
	rm pgplot_example.o
