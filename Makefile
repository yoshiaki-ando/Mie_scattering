PREFIX = $(HOME)

TARGET = libMie_scattering.so
HEADERS = Mie_scattering.h

INSTALL_LIB_DIR = $(PREFIX)/lib
INSTALL_INC_DIR = $(PREFIX)/include
BUILD_LIB = Release/$(TARGET)

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
