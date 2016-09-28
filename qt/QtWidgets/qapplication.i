
%ignore QApplication::fontMetrics;
%ignore QApplication::palette;

%module qapplication
%{
  #include "QtWidgets/qapplication.h"
  #include "QtGui/qpalette.h"
  #include "QtGui/qfont.h"
  #include "QtGui/qfontmetrics.h"
  #include "QtGui/qicon.h"
%}

%import "../QtCore/qcoreapplication.i"

%include "QtWidgets/qapplication.h"




// todo: this can be removed if SWIG handles somehow int& of the ctor.
%extend QCoreApplication{
  public:
    static QCoreApplication * create( int argc, char **argv )
    {
      return new QCoreApplication( argc, argv );
    }
}

%extend QApplication{
  public:
    static QApplication * create( int argc, char **argv )
    {
      return new QApplication( argc, argv );
    }
}

