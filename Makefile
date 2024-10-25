CXX = g++
CXXFLAGS = -Icpputest/include -Wall -Werror -std=c++11 -coverage

CPPUTEST_HOME = ./cpputest
CPPUTEST_LIBS = $(CPPUTEST_HOME)/lib/libCppUTest.a $(CPPUTEST_HOME)/lib/libCppUTestExt.a

TARGET = sum

SOURCES = $(wildcard *.cpp ../*.cpp)

$(TARGET): $(SOURCES) 
	$(CXX) $(CXXFLAGS) -L$(CPPUTEST_HOME)/lib -o $(TARGET) $(SOURCES) $(CPPUTEST_LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)	
