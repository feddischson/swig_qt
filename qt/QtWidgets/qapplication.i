
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

%extend QCoreApplication{

  public:
    static QCoreApplication* create( void )
    {
       int s = 0;
       char ** tmp = 0;
       return new QCoreApplication( s, tmp );
    }
}


%extend QApplication{

  public:
    static QApplication * create( void )
    {
       int s = 0;
       char ** tmp = 0;
       return new QApplication( s, tmp );
    }
}

