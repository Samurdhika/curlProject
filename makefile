# Makefile for curlProject

CC      := gcc
CFLAGS  := -Wall -Wextra -std=c11 -O2
LDLIBS  := -lcurl

TARGET  := appdev
SRCS    := main.c sendData.c
OBJS    := $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDLIBS)

%.o: %.c appdev.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
