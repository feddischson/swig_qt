%{
#include <cstring>
static int    __internal_argc = 0;
static char** __internal_argv = 0;
%}


#if defined( SWIGPYTHON )
// from http://www.swig.org/Doc3.0/SWIGDocumentation.html#Python_nn59
//
// This tells SWIG to treat char ** as a special case
%typemap(in) char ** {
  /* Check if is a list */
  if (PyList_Check($input)) {
    int size = PyList_Size($input);
    int i = 0;
    $1 = (char **) malloc((size+1)*sizeof(char *));
    for (i = 0; i < size; i++)
    {
      PyObject *o = PyList_GetItem($input,i);

      if ( PyUnicode_Check (o) )
      {
        PyObject * o_ascii = PyUnicode_AsEncodedString( o, "ASCII", "strict");
        if( o_ascii != NULL )
        {
          $1[i] = PyBytes_AsString( o_ascii );
          $1[i] = strdup( $1[i] );
          Py_DECREF( o_ascii );
        }
        else
        {
          PyErr_SetString(PyExc_TypeError,"list must contain strings");
          free($1);
          return NULL;
        }
      }
      else 
      {
        PyErr_SetString(PyExc_TypeError,"list must contain strings");
        free($1);
        return NULL;
      }
    }
    $1[i] = 0;
  } else {
    PyErr_SetString(PyExc_TypeError,"not a list");
    return NULL;
  }
}
#endif


//%import "qwidget.i"
%include "../QtCore/qtcore.i"
%include "qwidget.i"
%include "qmainwindow.i"
%include "qapplication.i"
%include "qabstractbutton.i"
%include "qpushbutton.i"


// vim: set et ts=3 sw=3 sts=3 ft=swig
