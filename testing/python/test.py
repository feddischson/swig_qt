from qtcore import QObject,QString,QLatin1String
from qtwidgets import QApplication,QMainWindow

o = QObject()

app = QApplication.create()

o.setObjectName( QString( "MyQObject" ) )
s = o.objectName()
print( s )
print( o )
print( "IsWidgetType: %r" % o.isWidgetType() )
print( "IsWindowType: %r" % o.isWindowType() )


w = QMainWindow()
print( "IsWidgetType: %r" % w.isWidgetType() )
print( "IsWindowType: %r" % w.isWindowType() )
w.show()
w.setWindowTitle( QString( "This is a main-window"))




exit( app._exec() )
