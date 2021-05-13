import QtQuick 2.12
import QtQuick.Controls 2.15
//***********************COMMON COMPONENTS********************************************
Button {
    id: button
    visible: true
    property alias backgroundRect: backgroundRect
    property alias parametername: parameterName
    property alias parameterImage: parameterImage
    property alias parameterValue: parameterValue
    property alias parameterUnit: parameterUnit

    background: Rectangle{
        id: backgroundRect
        width: button.width
        height: button.height
        radius: 5



        Label {
            id: parameterName
            text: parameterName.text//"sagar"
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

