%include <std_string.i>

%ignore q_static_assert_result161;
%ignore QString::vsprintf;
%ignore QString::vasprintf;

%module qstring
%{
  #include "QtCore/qstring.h"
  #include "QVector"
%}

%import "qglobal.i"

%feature("python:slot", "tp_str", functype="reprfunc") QString::toStdString;
%include "QtCore/qstring.h"

//
//  Note: uisng '%implicitconv QLatin1String' would be nice,
//        but does not work because of the explicit keyword in QLatin1String.
//
%extend QString{
  QString( const char* & s )
  {
    return new QString( QLatin1String( s ) );
  }
}


// vim: set et ts=3 sw=3 sts=3 ft=swig
