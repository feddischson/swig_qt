
%module(directors="1") qobject
%{
    #include "QtCore/qobject.h"
%}

%feature("python:slot", "tp_str", functype="reprfunc") QObject::as_string;
%feature("director") QObject;

%import "qobjectdefs.i"
%import "qmetaobject.i"

class QObject
{
public:
   explicit QObject(QObject *parent=0);
   virtual ~QObject();

   QString objectName() const;
   void setObjectName(const QString &name);

   bool isWidgetType() const;
   bool isWindowType() const;

   bool signalsBlocked() const throw();
   bool blockSignals(bool b) throw();

   QThread *thread() const;
// void moveToThread(QThread *thread);

// int startTimer(int interval, Qt::TimerType timerType = Qt::CoarseTimer);
   void killTimer(int id);
};

%extend QObject {
  inline std::string as_string() const 
  { 
    return $self->objectName().toStdString(); 
  }
}

// vim: set et ts=3 sw=3 sts=3 ft=swig
