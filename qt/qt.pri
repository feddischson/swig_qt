

swig_python {
  SWIG_TARGET = python
  SWIG_TARGET_FLAGS += -py3 -modern
  INCLUDEPATH += /usr/include/python3.4/ 
}

swig_ruby {
  SWIG_TARGET = ruby
  SWIG_TARGET_FLAGS += 
  INCLUDEPATH += /home/christian/.rvm/rubies/ruby-2.2.0/include/ruby-2.2.0/ /home/christian/.rvm/rubies/ruby-2.2.0/include/ruby-2.2.0/x86_64-linux/
}

SWIG_FLAGS = -v -c++ -$$SWIG_TARGET $$SWIG_TARGET_FLAGS
#SWIG_INCLUDE += -I/usr/include/qt5
SWIG_INCLUDE += -I/opt/qt5.7/include
SWIG = /opt/custom_siwg/bin/swig
