import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    id : mainWindowRec

    visible: true
    width: parent.width
    height: parent.height
    color:"black"
    property alias  monitoring: monitoring
    ColumnLayout{
        id: topbarAlignment

        spacing: 0
        anchors.fill: parent


        Rectangle{
            id:topbarMenu
            Layout.alignment: Qt.AlignTop
            Layout.preferredHeight: 100
            Layout.preferredWidth: parent.width
            visible: true

            color: "gray"//transparent
            Loader{
                id:loadTopbar
                anchors.fill: parent
                source: "TopbarMenu.qml"
            }
        }
        Rectangle{
            id:monitoring
            property alias monitor: monitor

            Layout.alignment:  Qt.AlignTop
            Layout.leftMargin: sidebarmenu.width +10
            Layout.preferredWidth: 1040
            Layout.preferredHeight: 500
            radius: 10
            color: 'white'

            MonitoringScreen{
                id:monitor
            }
        }

        Rectangle{
            id:bottomWindowmenu

            Layout.alignment: Qt.AlignBottom
            Layout.preferredHeight: 80
            Layout.fillWidth: true
            Layout.leftMargin: sidebarmenu.width
            color: "gray"

            BottomTabBar{
                anchors.fill: parent
                //                Connections{
                //                    target: monitor.loaderScreen
                //                function onClickedscreen1() {

                //                    monitor.loaderScreen="qrc:/Runscreen1.qml"
                //            }
                //                }

                onClickedscreen1:{
                    monitor.loaderScreen="qrc:/Runscreen1.qml"
                }
                onClickedscreen2: {
                    monitor.loaderScreen="qrc:/Runscreen2.qml"
                }
                onClickedscreen3: {
                    monitor.loaderScreen="qrc:/DropScreen.qml"
                }
            }
        }

    }
    Rectangle{
        id: sidebarmenu
        anchors.top: parent.top
        anchors.topMargin: topbarMenu.height
        anchors.left: parent.left
        height: mainWindowRec.height - topbarMenu.height
        width: 220
        color: 'darkgray'
        Loader{
            id:loadSidebar
            anchors.fill: parent
            source: "SidebarMenu.qml"
        }

    }



}
