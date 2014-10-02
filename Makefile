CC = gcc
CFLAGS = -Wall -O2 -pg
# CFLAGS = -Wall -g -pg -pg
# CFLAGS = -Wall -O2 -fprofile-arcs -ftest-coverage
LIBS = -lm

DRIVER_CPE_OBJS = driver_cpe.o kernels.o fcyc.o clock.o 

all: driver_cpe

driver_cpe: $(DRIVER_CPE_OBJS) config.h defs.h fcyc.h
	$(CC) $(CFLAGS) $(DRIVER_CPE_OBJS) $(LIBS) -o driver_cpe

clean: 
	-rm -f $(OBJS) driver_cpe core *~ *.o

