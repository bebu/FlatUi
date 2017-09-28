

QML_IMPORT_PATH += $$PWD
QML_DESIGNER_IMPORT_PATH += $$PWD

DEFINES += -DFLATUI_BUILD_NO_PLUGIN
RESOURCES += $$PWD/flatui.qrc


HEADERS += \
    $$PWD/flatuiplugin.h \
    $$PWD/flatui.h

SOURCES += \
    $$PWD/flatuiplugin.cpp \
    $$PWD/flatui.cpp

INCLUDEPATH += $$PWD
