
%ignore QArrayData::ref;
%ignore qvsnprintf;
%module qarraydata
%{
  #include "QtCore/qarraydata.h"
%}

%import "qrefcount.i"

%include "QtCore/qarraydata.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
