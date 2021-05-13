import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:window
    width: 1280//640
    height: 700
    visible: true
    property bool framelessWindow : false         //When framelessWindow set to true: Framelesswindow will appear

    minimumHeight: height
    minimumWidth: width
    maximumHeight: height
    maximumWidth: width
    flags   : framelessWindow ?  Qt.FramelessWindowHint : Qt.Window
    title   : framelessWindow ? "" : qsTrId("Agricultural Screens")
    //MainWINdow
    MainWindow{
        id: mainWindow

        width   : 1280
        height  : 700
    }

}
