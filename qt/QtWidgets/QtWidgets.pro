! include( ../qt.pri ) {
    error( "Couldn't find the qt.pri file!" )
}

TEMPLATE = lib
TARGET = qtwidgets
CONFIG += debug

swig.name = swig
swig.depends = *.i
swig.target = $${TARGET}_wrap.cxx
swig.commands = $$SWIG  $$SWIG_FLAGS $$SWIG_INCLUDE -o $$swig.target -module $$TARGET $${TARGET}.i
qtcore.depends += swig
QMAKE_EXTRA_TARGETS += swig
QMAKE_CLEAN += $$swig.target
QMAKE_CLEAN += $${TARGET}.py

SOURCES += $${TARGET}_wrap.cxx

QT += widgets

