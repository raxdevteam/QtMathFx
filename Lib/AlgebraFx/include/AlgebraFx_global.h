#ifndef ALGEBRAFX_GLOBAL_H
#define ALGEBRAFX_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(ALGEBRAFX_LIBRARY)
#  define ALGEBRAFX_EXPORT Q_DECL_EXPORT
#else
#  define ALGEBRAFX_EXPORT Q_DECL_IMPORT
#endif

#endif // ALGEBRAFX_GLOBAL_H
