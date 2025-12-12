#pragma once

#define N 20	// length of user name

typedef struct{
	int min, max;
	char rname[N];
}rock;

// function declaration
void send_data(rock);