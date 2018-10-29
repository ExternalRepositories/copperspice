/***********************************************************************
*
* Copyright (c) 2012-2018 Barbara Geller
* Copyright (c) 2012-2018 Ansel Sermersheim
* Copyright (c) 2012-2016 Digia Plc and/or its subsidiary(-ies).
* Copyright (c) 2008-2012 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
*
* This file is part of CopperSpice.
*
* CopperSpice is free software. You can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* version 2.1 as published by the Free Software Foundation.
*
* CopperSpice is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* <http://www.gnu.org/licenses/>.
*
***********************************************************************/

#ifndef QPLATFORMSCREEN_H
#define QPLATFORMSCREEN_H

#include <qmetatype.h>
#include <qnamespace.h>
#include <qcoreevent.h>
#include <qvariant.h>
#include <qrect.h>
#include <qobject.h>

#include <qcursor.h>
#include <qimage.h>
#include <qwindowdefs.h>
// emerald   #include <qplatformpixmap.h>

// emerald   class QPlatformBackingStore;
// emerald   class QPlatformOpenGLContext;
class QPlatformScreenPrivate;
// emerald   class QPlatformWindow;
// emerald   class QPlatformCursor;
class QScreen;
// emerald   class QSurfaceFormat;

using QDpi = QPair<qreal, qreal>;

class Q_GUI_EXPORT QPlatformScreen
{
    Q_DECLARE_PRIVATE(QPlatformScreen)

public:
    enum SubpixelAntialiasingType {
        // copied from qfontengine_p.h since we can't include private headers
        Subpixel_None,
        Subpixel_RGB,
        Subpixel_BGR,
        Subpixel_VRGB,
        Subpixel_VBGR
    };

    enum PowerState {
        PowerStateOn,
        PowerStateStandby,
        PowerStateSuspend,
        PowerStateOff
    };

    QPlatformScreen();
    virtual ~QPlatformScreen();

    virtual QPixmap grabWindow(WId window, int x, int y, int width, int height) const;

    virtual QRect geometry() const = 0;
    virtual QRect availableGeometry() const {return geometry();}

    virtual int depth() const = 0;
    virtual QImage::Format format() const = 0;

    virtual QSizeF physicalSize() const;
    virtual QDpi logicalDpi() const;
    virtual qreal devicePixelRatio() const;
    virtual qreal pixelDensity()  const;

    virtual qreal refreshRate() const;

    virtual Qt::ScreenOrientation nativeOrientation() const;
    virtual Qt::ScreenOrientation orientation() const;
    virtual void setOrientationUpdateMask(Qt::ScreenOrientations mask);

    // emerald   virtual QWindow *topLevelAt(const QPoint &point) const;
    virtual QList<QPlatformScreen *> virtualSiblings() const;
    const QPlatformScreen *screenForPosition(const QPoint &point) const;

    QScreen *screen() const;

    //jl: should this function be in QPlatformIntegration
    //jl: maybe screenForWindow is a better name?

    // emerald   static QPlatformScreen *platformScreenForWindow(const QWindow *window);

    virtual QString name() const { return QString(); }

    // emerald   virtual QPlatformCursor *cursor() const;
    virtual SubpixelAntialiasingType subpixelAntialiasingTypeHint() const;

    virtual PowerState powerState() const;
    virtual void setPowerState(PowerState state);

    static int angleBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b);
    static QTransform transformBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &target);
    static QRect mapBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &rect);

    // The platform screen's geometry in device independent coordinates
    QRect deviceIndependentGeometry() const;

protected:
    void resizeMaximizedWindows();

    QScopedPointer<QPlatformScreenPrivate> d_ptr;

private:
    Q_DISABLE_COPY(QPlatformScreen)

    friend class QScreenPrivate;
};

#endif
