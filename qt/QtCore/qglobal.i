%module qglobal
%{
  #include "QtCore/qglobal.h"
%}

%import "qcompilerdetection.i"

%include "QtCore/qglobal.h"

%import "qtypeinfo.i"


// %import "qflags.i"

// TODO
//  %import "qsysinfo.h"
//  %import "qlogging.h"
//  %import "qatomic.h"
//  %import "qglobalstatic.h"
//  %import "qnumeric.h"
//  %import "qversiontagging.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
