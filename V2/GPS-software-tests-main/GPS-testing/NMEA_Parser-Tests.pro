TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++17 -Wall -Wfatal-errors

HEADERS += \
    headers/dataFiles.h \
    headers/earth.h \
    headers/geometry.h \
    headers/position.h \
    headers/types.h \
    headers/nmea/nmea-parser.h

SOURCES += \
    src/dataFiles.cpp \
    src/earth.cpp \
    src/geometry.cpp \
    src/position.cpp \
    src/nmea/nmea-parser.cpp

SOURCES += \
    tests/BoostUTF-main.cpp \
    tests/position-tests.cpp \
    tests/nmea/nmea-parser-tests.cpp

INCLUDEPATH += headers/ headers/nmea/

OBJECTS_DIR = $$_PRO_FILE_PWD_/bin/
DESTDIR = $$_PRO_FILE_PWD_/bin/
TARGET = nmea-parser-tests

LIBS += -lboost_unit_test_framework
