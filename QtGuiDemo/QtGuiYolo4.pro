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
win32 {
    INCLUDEPATH += "D:\\OpenCV2.4.9\\build\\include" \

    CONFIG(debug,debug|release) {
        LIBS += -L"D:\\OpenCV2.4.9\\build\\x64\\vc12\\lib" \
            -lopencv_core249d \
            -lopencv_highgui249d \
            -lopencv_imgproc249d \
#            -lopencv_features2d249d \
#            -lopencv_calib3d249d
    }

    CONFIG(release,debug|release) {
        DEFINES += QT_NO_WARNING_OUTPUT QT_NO_DEBUG_OUTPUT
        LIBS += -L"D:\\OpenCV2.4.9\\build\\x64\\vc12\\lib" \
            -lopencv_core249 \
            -lopencv_highgui249 \
            -lopencv_imgproc249 \
#            -lopencv_features2d249 \
#            -lopencv_calib3d249
    }
}


unix {
#    QT_CONFIG -= no-pkg-config
#    CONFIG += link_pkgconfig
#    PKGCONFIG += opencv
    QMAKE_CXXFLAGS += -std=c++1y
    QMAKE_CXXFLAGS += -Wall
        INCLUDEPATH += /home/rusman/Qt/darknet/include
        LIBS += -L/home/rusman/Qt/darknet -ldarknet
    # OpenCv Configuration opencv-4.2.0
    INCLUDEPATH += "/usr/include/opencv4/opencv2"
    INCLUDEPATH += "/usr/include/opencv4"
    LIBS += -L~/usr/lib/x86_64-linux-gnu \
    -lopencv_core \
    -lopencv_highgui \
    -lopencv_imgproc \
    -lopencv_imgcodecs \
    -lopencv_features2d \
    -lopencv_calib3d \
    -lopencv_video\
    -lopencv_videoio

#    INCLUDEPATH += /usr/local/include/opencv
#    LIBS += -L/usr/local/lib -lopencv_core -lopencv_highgui
}


#unix: !mac {
#    INCLUDEPATH += /home/rusman/installation/OpenCV-master/include/opencv4
#    LIBS += -L/home/rusman/installation/OpenCV-master/lib -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_video -lopencv_videoio -lopencv_objdetect -lopencv_dnn -lopencv_highgui
#    INCLUDEPATH += /home/rusman/Qt/darknet/include
#    LIBS += -L/home/rusman/Qt/darknet -ldarknet
#}

#unix: mac {
#    INCLUDEPATH += /path/to/opencv/include/opencv4
#    LIBS += -L/path/to/opencv/lib -lopencv_world
#}

#win32 {
#    INCLUDEPATH += c:/path/to/opencv/include/opencv4
#    LIBS += -lc:/path/to/opencv/lib/opencv_world
#}

#DEFINES += OPENCV_DATA_DIR=\\\"/home/rusman/installation/OpenCV-master/share/opencv4/\\\"
#DEFINES += TIME_unix: !mac {



DEFINES += OPENCV_DATA_DIR=\\\"/home/rusman/installation/OpenCV-master/share/opencv4/\\\"
DEFINES += TIME_MEASURE=1


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    QtGuiDemo.qrc
