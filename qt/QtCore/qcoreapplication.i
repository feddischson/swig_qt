
%module qcoreapplication
%{
    #include "QtCore/qcoreapplication.h"
%}

%import "qglobal.i"
%import "qstring.i"
%import "qobject.i"
%import "qcoreevent.i"
%import "qeventloop.i"
%import "qobjectdefs.i"

%ignore QCoreApplication::aboutToQuit;
%ignore qt_sendSpontaneousEvent;

%include "QtCore/qcoreapplication.h"
