QT -= gui

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#Define custom storage of compile time files
MOC_DIR +=generated/mocs
UI_DIR  +=generated/uis
RCC_DIR +=generated/rccs
OBJECTS_DIR +=generated/objs

#Define custom directories to hold project files
TRIGOFX_INC_FILES = $$PWD/include/
TRIGOFX_SRC_FILES = $$PWD/src/
#QTMATHFX_UIX_FILES = $$PWD/uix/

INCLUDEPATH += $$PWD
INCLUDEPATH += $${TRIGOFX_INC_FILES}
INCLUDEPATH += $${TRIGOFX_SRC_FILES}

HEADERS += \
    $${TRIGOFX_INC_FILES}*.h \

SOURCES += \
        $${TRIGOFX_SRC_FILES}*.cpp \

TARGET = ../../build/TrigoFx
