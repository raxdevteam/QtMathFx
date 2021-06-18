#ifndef NUMERICFX_GLOBAL_H
#define NUMERICFX_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(NUMERICFX_LIBRARY)
#  define NUMERICFX_EXPORT Q_DECL_EXPORT
#else
#  define NUMERICFX_EXPORT Q_DECL_IMPORT
#endif

#endif // NUMERICFX_GLOBAL_H
