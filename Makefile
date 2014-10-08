# This Makefile compiles a C Statechart for the iRobot Navigation Simulator.
TARGET = irobotNavigationStatechart

# C compiler
CC = gcc
CFLAGS = -Wall
LIBS =
OBJ = irobotNavigationStatechart.o
INC = -Iirobot 

# path to C Statechart (CSC) source and solution folders
STATECHARTSRCFILE = $(TARGET).c
STATECHARTSLNDIR = libstatechart
STATECHARTPROJECTOUTDIR = $(STATECHARTSLNDIR)/Release
STATECHARTPROJECTOUTPATH = $(STATECHARTPROJECTOUTDIR)/libstatechart.a


%.o : %.c
	$(CC) -c $(CFLAGS) $(INC) $< -o $@

test : $(OBJ)
	$(CC) -o $(STATECHARTPROJECTOUTDIR)/$@ $^ $(CFLAGS) $(INC) $(LIBS)
	$(STATECHARTPROJECTOUTDIR)/$@
