%module qpushbutton
%{
   #include "QtWidgets/qpushbutton.h"
%}

%import "qabstractbutton.i"
%ignore QPushButton::~QPushButton;
%include "QtWidgets/qpushbutton.h"

// vim: set et ts=3 sw=3 sts=3 ft=swig
