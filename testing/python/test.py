from qtcore import QObject,QString,QLatin1String
from qtwidgets import QApplication

o = QObject()

app = QApplication.create()

o.setObjectName( QString( "MyQObject" ) )
s = o.objectName()
print( s )
print( o )
print( "IsWidgetType: %r" % o.isWidgetType() )
print( "IsWindowType: %r" % o.isWindowType() )

#app._exec()
