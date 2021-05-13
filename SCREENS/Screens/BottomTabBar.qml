import QtQuick 2.14
import QtQuick.Controls 2.14
Item {
    id: tabbarContent
//    color: "darkgrey"
    // width: parent.width * 0.75
    property alias tabbarContent: tabbarContent

    property alias run1: run1
    property alias run2: run2

    signal clickedscreen1
    signal clickedscreen2
    signal clickedscreen3




    TabBar{
        id:tabbar
        background:  Rectangle{
            width: tabbarContent.width * 0.65
            height: tabbarContent.height
            color: "black"

        }
        TabButton{
            id:run1
            text: "RUN 1"
            contentItem: Text {
                id: run1text
                text: run1.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            hoverEnabled: true
            //  hovered : true


            background: Rectangle{
                id:run1button
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                color: tabbar.currentIndex===0?"grey":"dimgrey"
            }
            onClicked: {
               tabbarContent.clickedscreen1()
            }
        }


        TabButton{
            id:run2
            text: "RUN 2"
            contentItem: Text{
                id:run2text
                text: run2.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }



            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                 color: tabbar.currentIndex===1?"grey":"dimgrey"
            }


            onClicked: {
               // laoderScreen.source="qrc:/Run2screen.qml" //"qrc:/images/stopIcon.png"
                tabbarContent.clickedscreen2()
            }

        }
        TabButton{
            id:run3
            text: "RUN 3"
            contentItem: Text {
                id: run3text
                text: run3.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                 color: tabbar.currentIndex===2?"grey":"dimgrey"
            }
            onClicked: {
                tabbarContent.clickedscreen3()
            }

        }
        TabButton{
            id:run4
            text: "RUN 4"
            contentItem: Text {
                id: run4text
                text: run4.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                color: tabbar.currentIndex===3?"grey":"dimgrey"
            }

        }
        TabButton{
            id:run5
            text: "RUN 5"
            contentItem: Text {
                id: run5text
                text: run5.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                 color: tabbar.currentIndex===4?"grey":"dimgrey"
            }

        }
        TabButton{
            id:run6
            text: "RUN 6"
            contentItem: Text {
                id: run6text
                text: run6.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                 color: tabbar.currentIndex===5?"grey":"dimgrey"
            }

        }
        TabButton{
            id:run7
            text: "RUN 7"
            contentItem: Text {
                id: run7text
                text: run7.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pointSize: 12
                // font.family: "Times new roman"
                color: "white"

            }
            background: Rectangle{
                implicitWidth: 100
                implicitHeight: tabbarContent.height
                color: tabbar.currentIndex===6?"grey":"dimgrey"

            }
        }

    }
}
