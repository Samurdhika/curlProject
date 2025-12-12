OBJ = main.o sendData.o
APPNAME = curlProj

$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ) -lcurl

%.o : %.c
	gcc -c -o $@ $<

clean :
	rm $(OBJ) $(APPNAME)