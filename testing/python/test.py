from qtcore import QObject,QString
from qtwidgets import QApplication

o =QObject()

s = QString( "this is my object" )

app = QApplication.create()

app._exec()
