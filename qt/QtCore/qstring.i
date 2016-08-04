%module qstring
%{
  #include "QtCore/qstring.h"
%}


class QString
{
    inline QString( QLatin1String latin1 );
    inline void swap(QString &other) Q_DECL_NOTHROW { qSwap(d, other.d); }
    inline int size() const { return d->size; }
    inline int count() const { return d->size; }
    inline int length() const;
    inline bool isEmpty() const;
    void resize(int size);
    void resize(int size, QChar fillChar);

    QString &fill(QChar c, int size = -1);
    void truncate(int pos);
    void chop(int n);

    int capacity() const;
};

%extend QString
{
   inline QString( char* str )
   {
      QString( QLatin1String( str  ) );
   }
};

// vim: set et ts=3 sw=3 sts=3 ft=swig
