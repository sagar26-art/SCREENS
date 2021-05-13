import QtQuick 2.12
import QtQuick.Controls 2.15
//***********************COMMON COMPONENTS********************************************
Button {
    id: button
    visible: true
    property alias button : button
    property alias backgroundRect: backgroundRect
    property alias parametername: parameterName.text
    property alias parameterImage: parameterImage
    property alias parameterValue: parameterValue.text
    property alias parameterUnit: parameterUnit

    property int index
    //property var text

    MouseArea {

        id: mouseArea
        width: parent.width; height: parent.height//64
        anchors.centerIn: parent
        drag.target: backgroundRect//tile
        onReleased: {

            if(backgroundRect.Drag.target !==null)

                backgroundRect.Drag.drop()
        }
    }

    background: Rectangle{
        id: backgroundRect
        width: button.width
        height: button.height
        radius: 5
        color: "red"

        Drag.keys: ["true"]

        Drag.active: mouseArea.drag.active

        Drag.hotSpot.x: parent.width/2//33

        Drag.hotSpot.y: parent.height/2 //32

        Drag.source: button//root
        states: State {

            when: mouseArea.drag.active

            ParentChange { target: backgroundRect; parent: button }

            AnchorChanges { target: backgroundRect; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }

        }


        // }rectangle(background)
        /*  contentItem:*/ Label {
            id: parameterName
            text: parametername.text//"sagar"
            anchors.horizontalCenter: backgroundRect.horizontalCenter
        }
        Label{
            id:parameterValue
            text:parameterValue.text//"60"
            anchors.top: parameterName.bottom //to give font.pointsize
            anchors.topMargin: 10
            anchors.horizontalCenter:parameterName.horizontalCenter
        }
        Label{
            id:parameterUnit
            text: parameterUnit.text//"%"
            anchors.top: parameterName.bottom
            anchors.topMargin: 10
            anchors.left: parameterValue.left
            anchors.leftMargin: 50

        }
        Image {
            id: parameterImage
            source: parameterImage.source
            anchors.left: backgroundRect.left
            anchors.leftMargin: 10
        }
    }
}
//}

