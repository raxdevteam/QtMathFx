QT += testlib
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

#Define custom storage of compile time files
MOC_DIR +=generated/mocs
OBJECTS_DIR +=generated/objs

#Define custom directories to hold project files
TEST_SRC_FILES = $$PWD/src/

INCLUDEPATH += $$PWD
INCLUDEPATH += $${TEST_SRC_FILES}

SOURCES += \
        $${TEST_SRC_FILES}*.cpp \

INCLUDEPATH += /usr/include/gtest
LIBS += -L/usr/lib/x86_64-linux-gnu/ -lgtest

INCLUDEPATH += $$PWD/../Lib/AlgebraFx/include
DEPENDPATH += $$PWD/../Lib/AlgebraFx

INCLUDEPATH += $$PWD/../Lib/TrigoFx/include
DEPENDPATH += $$PWD/../Lib/TrigoFx

LIBS += -L../build -lAlgebraFx
LIBS += -L../build -lTrigoFx

INCLUDEPATH += $$PWD/../App/include
DEPENDPATH += $$PWD/../App

TARGET = ../build/QtMathAppTest
