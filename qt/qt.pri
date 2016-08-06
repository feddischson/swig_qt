

swig_python {
  SWIG_TARGET = python
  SWIG_TARGET_FLAGS += -py3 -modern -builtin
  INCLUDEPATH += /usr/include/python3.4/ 
}

swig_ruby {
  SWIG_TARGET = ruby
  SWIG_TARGET_FLAGS += 
  INCLUDEPATH += /home/christian/.rvm/rubies/ruby-2.2.0/include/ruby-2.2.0/ /home/christian/.rvm/rubies/ruby-2.2.0/include/ruby-2.2.0/x86_64-linux/
}

SWIG_FLAGS = -v -c++ -$$SWIG_TARGET $$SWIG_TARGET_FLAGS -w503 -w361 -w362 -w389 -w312 -w314
#SWIG_INCLUDE += -I/usr/include/qt5
SWIG_INCLUDE += -I/opt/qt5.7/include
SWIG = /opt/custom_siwg/bin/swig

QMAKE_CXXFLAGS += -Wno-unused-parameter -Wno-unused-label
