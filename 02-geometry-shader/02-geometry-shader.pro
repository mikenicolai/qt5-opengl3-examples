
QT       += core gui opengl

TARGET = 02-geometry-shader
TEMPLATE = app

SOURCES +=  \
            main.cpp \
            glwidget.cpp

HEADERS  += \
            glwidget.h

OTHER_FILES +=  \
                std.vert \
                std.frag \
                std.geom

RESOURCES +=    \
                geometry-shader.qrc

