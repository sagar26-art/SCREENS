import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.14


Item {
    id:topbarComponents
    //   color: "red"

    Row {
        id:rowlayout
        spacing: 3
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 20


        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/stopIcon.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/warning.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/about.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/satellite.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/wifi.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/network.png"

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/options.png"

        }
        Rectangle{
            id:timerdisplay
            width: 100
            height: 60
            color: "black"
//            Time{
//                id:timer
//                anchors.centerIn: parent
//            }

        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/speedometer.png"


        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/screens.png"


        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/industry.png"


        }
        CnhIconButton{
            width: 100
            height: 60
            icon.source: "qrc:/images/auto.png"


        }
    }

}
