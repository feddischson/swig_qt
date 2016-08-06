from qtcore import QObject,QString,QLatin1String,QMetaObject,QByteArray
from qtwidgets import QApplication,QMainWindow,QPushButton


class MyCustomQtClass( QObject ):

    def __init__( self, name ):
        QObject.__init__( self )
        self.setObjectName( QString( name ) )

# creating a normal qobject
o = QObject()

# creating a derived qobject
m = MyCustomQtClass( "Fancy Class" )
print( "Hey, this also works: It is a " + str( m ) )

# create the app instance
app = QApplication.create()


o.setObjectName( QString( "MyQObject" ) )
s = o.objectName()

# string conversion
print( s )
print( o )

# accessing qobject methods
print( "IsWidgetType: %r" % o.isWidgetType() )
print( "IsWindowType: %r" % o.isWindowType() )


# creating a main-window
w = QMainWindow()


# accessing qmainwindow's qobject methods
print( "IsWidgetType: %r" % w.isWidgetType() )
print( "IsWindowType: %r" % w.isWindowType() )


# cerate and set the button as central widget
b = QPushButton( QString( "hit me" ) )
w.setCentralWidget( b )


# showing the window
w.show()
w.setWindowTitle( QString( "This is a main-window"))

exit( app._exec() )
