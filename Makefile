# KallistiOS ##version##
#
# addons/libconio Makefile
# (c)2002 Dan Potter

TARGET = libconio.a
OBJS =  conio.o input.o draw.o

defaultall: create_kos_link $(OBJS) subdirs linklib

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/conio
	ln -s ../libconio/include ../include/conio
