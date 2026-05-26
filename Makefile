# KallistiOS ##version##
#
# libconio Makefile
# Copyright (C) 2002 Megan Potter

TARGET = libconio.a
OBJS =  conio.o input.o draw.o
KOS_CFLAGS += -Iinclude -DBUILD_LIBCONIO

defaultall: create_kos_link $(OBJS) subdirs linklib

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f $(KOS_PORTS)/include/conio
	ln -s $(CURDIR)/include $(KOS_PORTS)/include/conio
