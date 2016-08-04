%module qtypeinfo
%{
  #include "QtCore/qtypeinfo.h"
%}

// note: this is copied from qtypeinfo.h because importing it failes:
// class QTypeInfo
// {
// public:
//     enum {
//         isPointer = false,
//         isIntegral = QtPrivate::is_integral<T>::value,
//         isComplex = true,
//         isStatic = true,
//         isRelocatable = Q_IS_ENUM(T),
//         isLarge = (sizeof(T)>sizeof(void*)),    <<=====  this does not work with swig!
//         isDummy = false, //### Qt6: remove
//         sizeOf = sizeof(T)
//     };
// };

#define Q_DECLARE_SHARED_IMPL(TYPE, FLAGS) \
Q_DECLARE_TYPEINFO(TYPE, FLAGS); \
inline void swap(TYPE &value1, TYPE &value2) \
    Q_DECL_NOEXCEPT_EXPR(noexcept(value1.swap(value2))) \
{ value1.swap(value2); }
#define Q_DECLARE_SHARED(TYPE) Q_DECLARE_SHARED_IMPL(TYPE, Q_MOVABLE_TYPE)
#define Q_DECLARE_SHARED_NOT_MOVABLE_UNTIL_QT6(TYPE) \
                               Q_DECLARE_SHARED_IMPL(TYPE, QT_VERSION >= QT_VERSION_CHECK(6,0,0) ? Q_MOVABLE_TYPE : Q_RELOCATABLE_TYPE)

// vim: set et ts=3 sw=3 sts=3 ft=swig
