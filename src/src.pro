#-------------------------------------------------
#
# Project created by QtCreator 2012-05-31T04:32:35
#
#-------------------------------------------------

# extended initializer syntax is only available in C++0x

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = analyzer

CONFIG -= app_bundle
CONFIG -= console
CONFIG += static
CONFIG += c++11

TEMPLATE = app

SOURCES += main.cpp \
    model/common/comsequence.cpp \
    model/common/comframe.cpp \
    model/common/comlcu.cpp \
    model/common/comrom.cpp \
    model/drawengine/drawengine.cpp \
    views/mainwindow.cpp \
    model/io/ioyuv.cpp \
    parsers/meparser.cpp \
    model/modellocator.cpp \
    commands/nextframecommand.cpp \
    commands/prevframecommand.cpp \
    commands/jumptoframecommand.cpp \
    commands/appfrontcontroller.cpp \
    views/bitstreamversionselector.cpp \
    parsers/bitstreamparser.cpp \
    parsers/encodergeneralparser.cpp \
    parsers/decodergeneralparser.cpp \
    commands/decodebitstreamcommand.cpp \
    parsers/spsparser.cpp \
    parsers/cupuparser.cpp \
    parsers/predparser.cpp \
    parsers/mvparser.cpp \
    parsers/mergeparser.cpp \
    parsers/intraparser.cpp \
    model/io/yuv420rgbbuffer.cpp \
    commands/switchsequencecommand.cpp \
    views/frameview.cpp \
    model/drawengine/filterloader.cpp \
    commands/printscreencommand.cpp \
    views/busydialog.cpp \
    views/msgviewer.cpp \
    views/aboutdialog.cpp \
    commands/jumptopercentcommand.cpp \
    views/pluginfilterlist.cpp \
    views/pluginfilteritem.cpp \
    commands/refreshscreencommand.cpp \
    views/sequencelist.cpp \
    views/sequencelistitem.cpp \
    commands/zoomframecommand.cpp \
    commands/configfiltercommand.cpp \    
    commands/filterorderupcommand.cpp \
    commands/filterorderdowncommand.cpp \
    commands/checkupdatecommand.cpp \
    commands/reloadfilterscommand.cpp \
    commands/switchyuvcommand.cpp \
    commands/switchfiltercommand.cpp \
    model/common/comtu.cpp \
    parsers/tuparser.cpp

HEADERS += \
    model/common/comsequence.h \
    model/common/comframe.h \
    model/common/comrom.h \
    model/common/commv.h \
    model/common/compu.h \
    model/common/comcu.h \
    model/drawengine/drawengine.h \
    views/mainwindow.h \
    model/io/ioyuv.h \
    parsers/meparser.h \
    model/modellocator.h \    
    commands/nextframecommand.h \
    commands/prevframecommand.h \
    commands/jumptoframecommand.h \
    commands/appfrontcontroller.h \
    views/bitstreamversionselector.h \
    parsers/bitstreamparser.h \
    parsers/encodergeneralparser.h \
    parsers/decodergeneralparser.h \
    commands/decodebitstreamcommand.h \
    parsers/spsparser.h \
    parsers/cupuparser.h \
    parsers/predparser.h \
    parsers/mvparser.h \
    parsers/mergeparser.h \
    parsers/intraparser.h \
    model/io/yuv420rgbbuffer.h \
    commands/switchsequencecommand.h \
    views/frameview.h \
    model/drawengine/filterloader.h \
    commands/printscreencommand.h \
    views/busydialog.h \
    views/msgviewer.h \
    views/aboutdialog.h \
    model/drawengine/abstractfilter.h \
    exceptions/nosequencefoundexception.h \
    commands/jumptopercentcommand.h \
    exceptions/invaildfilterindexexception.h \
    views/pluginfilterlist.h \
    views/pluginfilteritem.h \
    commands/refreshscreencommand.h \
    views/sequencelist.h \
    views/sequencelistitem.h \
    commands/zoomframecommand.h \    
    exceptions/decodernotfoundexception.h \
    exceptions/decodingfailexception.h \
    exceptions/bitstreamnotfoundexception.h \
    commands/configfiltercommand.h \    
    commands/filterorderupcommand.h \
    commands/filterorderdowncommand.h \
    commands/checkupdatecommand.h \
    commands/reloadfilterscommand.h \
    commands/switchyuvcommand.h \
    commands/switchfiltercommand.h \
    model/common/comtu.h \
    parsers/tuparser.h

#include & libs
INCLUDEPATH += .\
               ../libgitlmvc/libgitlevtbus/src \
               ../libgitlmvc/src    \
               ../3rdparty/WinSparkle-0.3/include

LIBS += -L$${OUT_PWD}/../libgitlmvc/libgitlevtbus -L$${OUT_PWD}/../libgitlmvc -L$${PWD}/../3rdparty/WinSparkle-0.3/lib

Debug:   LIBS += -lGitlMVCd -lGitlEvtBusd -lWinSparkle
Release: LIBS += -lGitlMVC  -lGitlEvtBus  -lWinSparkle


FORMS += \
    views/mainwindow.ui \
    views/bitstreamversionselector.ui \
    views/busydialog.ui \
    views/aboutdialog.ui \
    views/pluginfilteritem.ui \
    views/sequencelist.ui \
    views/sequencelistitem.ui

#icon
RC_FILE = resources/icons/appicon.rc

RESOURCES += \
    resources/resources.qrc