QT -= gui

TEMPLATE = lib
DEFINES += NUMERICFX_LIBRARY

CONFIG += c++11

# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    numericfx.cpp

HEADERS += \
    NumericFx_global.h \
    numericfx.h

# Default rules for deployment.
#unix {
#    target.path = /usr/lib
#}
#!isEmpty(target.path): INSTALLS += target

TARGET = ../NumericFx
