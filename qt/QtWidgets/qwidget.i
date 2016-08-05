
%ignore QWidget::fontMetrics;
%ignore QWidget::fontInfo;
%module qwidget
%{
   #include "QtWidgets/qwidget.h"
%}

%import "../QtCore/qobject.i"

%include "QtWidgets/qwidget.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
