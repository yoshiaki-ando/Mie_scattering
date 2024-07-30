PREFIX = $(HOME)

TARGET = libMie_scattering.so
HEADERS = Mie_scattering.h
OBJS = Mie_scattering.o  associated_legendre.o

INSTALL_LIB_DIR = $(PREFIX)/lib
INSTALL_INC_DIR = $(PREFIX)/include
BUILD_LIB = $(TARGET)
BUILD_OPT = -shared -fPIC
OPTS = -Wall -O3 -I$(PREFIX)/include -shared -fPIC

.PHONY: all install clean

all: $(TARGET)

$(TARGET): $(OBJS)
	g++ -o $@ $(BUILD_OPT) $(OBJS)

%.o: %.cpp $(HEADERS)
	g++ -c $< $(OPTS)

install: $(INSTALL_LIB_DIR)/$(TARGET) $(INSTALL_INC_DIR)/$(HEADERS)

$(INSTALL_LIB_DIR)/$(TARGET): $(BUILD_LIB)
	@if [ ! -d $(INSTALL_LIB_DIR) ]; then \
	  mkdir -p $(INSTALL_LIB_DIR); \
	fi
	cp $(BUILD_LIB) $(INSTALL_LIB_DIR)

$(INSTALL_INC_DIR)/$(HEADERS): $(HEADERS)
	@if [ ! -d $(INSTALL_INC_DIR) ]; then \
	  mkdir -p $(INSTALL_INC_DIR); \
	fi
	cp $(HEADERS) $(INSTALL_INC_DIR)

clean:
	rm -rf *.o $(TARGET)
