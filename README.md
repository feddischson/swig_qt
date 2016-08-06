
Introduction
==============

Example SWIG definitions for compiling QT wrapper. Just used as an example for some discussions.


Status
=======
 - Mostly incomplete
 - Compilation of python version working
 - See examples/python/example.py for some example python code

Build
========


Python
--------

```
cd qt 
qmake qt.pro CONFIG+=swig_python
make
```

Ruby
--------

```
cd qt 
qmake qt.pro CONFIG+=swig_ruby
make
```



