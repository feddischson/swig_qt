

%ignore qt_getEnumMetaObject;
%ignore qt_getEnumName;
%module qnamespace
%{
  #include "QtCore/qnamespace.h"
%}

%import "qglobal.i"

%include "QtCore/qnamespace.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
