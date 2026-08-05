CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -MMD -MP
SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
DEPS = $(OBJ:.o=.d)
TARGET = bin/app

all: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) -o $@ $^

-include $(DEPS)

clean:
	rm -f $(OBJ) $(DEPS) $(TARGET)