
%ignore QFlag::QFlag( long );
%ignore QFlag::QFlag( ulong );
%ignore QFlag::QFlag( uint );
%ignore QFlag::QFlag( short );
%ignore QFlag::QFlag( ushort );
%module qflags
%{
  #include "QtCore/qflags.h"
%}

%import "qflags.i"
%import "qtypeinfo.i"

%include "QtCore/qflags.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
