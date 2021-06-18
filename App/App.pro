QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

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
QTMATHFX_INC_FILES = $$PWD/include/
QTMATHFX_SRC_FILES = $$PWD/src/
#QTMATHFX_UIX_FILES = $$PWD/uix/

INCLUDEPATH += $$PWD
INCLUDEPATH += $${QTMATHFX_INC_FILES}
INCLUDEPATH += $${QTMATHFX_SRC_FILES}
#INCLUDEPATH += $${QTMATHFX_UIX_FILES}


INCLUDEPATH += $$PWD/../Lib/AlgebraFx/include
DEPENDPATH += $$PWD/../Lib/AlgebraFx

INCLUDEPATH += $$PWD/../Lib/TrigoFx/include
DEPENDPATH += $$PWD/../Lib/TrigoFx


HEADERS += \
    $${QTMATHFX_INC_FILES}*.h \



SOURCES += \
        $${QTMATHFX_SRC_FILES}*.cpp \

#FORMS += \
#    $${TXT2EXCEL_UIX_FILES}txt2excelui.ui

#RESOURCES += \
#    resource/Txt2Excel.qrc


LIBS += -L../build -lAlgebraFx
LIBS += -L../build -lTrigoFx

TARGET = ../build/QtMathFxApp
