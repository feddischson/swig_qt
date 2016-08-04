
%ignore QtPrivate::RefCount::atomic;

%module qrefcount
%{
  #include "QtCore/qrefcount.h"
%}

%import "qatomic.i"

%include "QtCore/qrefcount.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig


