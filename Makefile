PREFIX = $(HOME)

TARGET = Release/libMie_scattering.so
HEADERS = Mie_scattering.h

INSTALL_LIB_DIR = $(PREFIX)/lib
INSTALL_INC_DIR = $(PREFIX)/include

install: $(TARGET)
	@if [ ! -d $(INSTALL_LIB_DIR) ]; then \
	  mkdir -p $(INSTALL_LIB_DIR); \
	fi
	cp $(TARGET) $(INSTALL_LIB_DIR)

	@if [ ! -d $(INSTALL_INC_DIR) ]; then \
	  mkdir -p $(INSTALL_INC_DIR); \
	fi
	cp $(HEADERS) $(INSTALL_INC_DIR)

