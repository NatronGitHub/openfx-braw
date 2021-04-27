PLUGINNAME = BlackmagicRAW

PLUGINOBJECTS = \
    BlackmagicRAWHandler.o \
    BlackmagicRAWPlugin.o \
    BlackmagicRawAPIDispatch.o

PLUGINOBJECTS += \
    GenericReader.o \
    GenericOCIO.o \
    ofxsMultiPlane.o \
    SequenceParsing.o

RESOURCES = \
    net.sf.openfx.BlackmagicRAW.png \
    net.sf.openfx.BlackmagicRAW.svg

PATHTOROOT = ofx/Support
include $(PATHTOROOT)/Plugins/Makefile.master
CXXFLAGS += -DOFX_EXTENSIONS_VEGAS -DOFX_EXTENSIONS_NUKE -DOFX_EXTENSIONS_TUTTLE -DOFX_EXTENSIONS_NATRON -DOFX_SUPPORTS_OPENGLRENDER -Iext -std=c++11

CXXFLAGS += -Iio/IOSupport -Iext/glad
VPATH += io/IOSupport io/IOSupport/SequenceParsing ext ext/glad
CXXFLAGS += $(shell pkg-config --cflags OpenColorIO)
CXXFLAGS += -DOFX_IO_USING_OCIO
LINKFLAGS += $(shell pkg-config --libs OpenColorIO)

BRAW_VERSION := v1.8

ifeq ($(OS),Linux)
VPATH += sdk/Linux/$(BRAW_VERSION)/Include
CXXFLAGS += -Isdk/Linux/$(BRAW_VERSION)/Include
LINKFLAGS += -Wl,-rpath,`pkg-config --variable=libdir OpenColorIO`
endif
ifeq ($(OS),Darwin)
VPATH += sdk/Mac/$(BRAW_VERSION)/Include
CXXFLAGS += -Isdk/Mac/$(BRAW_VERSION)/Include
LINKFLAGS += -framework CoreFoundation
endif
ifeq ($(OS:MINGW%=MINGW),MINGW)
VPATH += sdk/Win/$(BRAW_VERSION)/Include
CXXFLAGS += -Isdk/Win/$(BRAW_VERSION)/Include
LINKFLAGS += -lole32 -loleaut32
endif
