
%module qobject
%{
    #include "QtCore/qobject.h"
%}

%import "qobjectdefs.i"


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

// vim: set et ts=3 sw=3 sts=3 ft=swig
