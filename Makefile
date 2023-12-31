# KallistiOS ##version##
#
# libconio Makefile
# Copyright (C) 2002 Megan Potter

TARGET = libconio.a
OBJS =  conio.o input.o draw.o
KOS_CFLAGS += -Iinclude -DBUILD_LIBCONIO

all: create_kos_link defaultall

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/conio
	ln -s ../libconio/include ../include/conio
