QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    QtGuiDemo.cpp \
    main.cpp


HEADERS += \
    QtGuiDemo.h \
    common.h


FORMS += \
    QtGuiDemo.ui

#linux openCV package
#QT_CONFIG -= no-pkg-config
#CONFIG += link_pkgconfig
#PKGCONFIG += opencv


unix: !mac {
    INCLUDEPATH += /home/rusman/installation/OpenCV-master/include/opencv4
    LIBS += -L/home/rusman/installation/OpenCV-master/lib -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_video -lopencv_videoio -lopencv_objdetect -lopencv_dnn -lopencv_highgui
    INCLUDEPATH += /home/rusman/Qt/darknet/include
    LIBS += -L/home/rusman/Qt/darknet -ldarknet
}

unix: mac {
    INCLUDEPATH += /path/to/opencv/include/opencv4
    LIBS += -L/path/to/opencv/lib -lopencv_world
}

win32 {
    INCLUDEPATH += c:/path/to/opencv/include/opencv4
    LIBS += -lc:/path/to/opencv/lib/opencv_world
}

DEFINES += OPENCV_DATA_DIR=\\\"/home/rusman/installation/OpenCV-master/share/opencv4/\\\"
DEFINES += TIME_unix: !mac {



DEFINES += OPENCV_DATA_DIR=\\\"/home/rusman/installation/OpenCV-master/share/opencv4/\\\"
DEFINES += TIME_MEASURE=1


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
_MEASURE=1


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DEFINES += OPENCV_DATA_DIR=\\\"/home/rusman/installation/OpenCV-master/share/opencv4/\\\"
DEFINES += TIME_MEASURE=1

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    QtGuiDemo.qrc
