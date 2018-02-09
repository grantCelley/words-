

all: obj
	if [! -d "bin"]; then\
		mkdir bin;\
	fi
	g++  obj -o bin/words

	
obj:$(wildcard src/*.cpp) $(wildcard src/*.h) $(wildcard dict/*)
	if [! -d "obj" ]; then\
		mkdir obj;\
	fi
	g++ -c src/*.cpp
	mv *.o obj/*.o

clean:
	rm -rf bin/ obj/
