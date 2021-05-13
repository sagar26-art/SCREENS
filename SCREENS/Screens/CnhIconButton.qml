import QtQuick 2.14
import QtQuick.Controls 2.14

//***********************COMMON COMPONENTS********************************************
Button {
    id: control

    visible: true
    focus: true


    property alias imageComponent             :   iconImage
    property alias textColor                  :   iconText.color

    background: Rectangle {
        id: buttonRec

        width: control.width
        height: control.height
        color: "grey"//themeViewModel.themePalette.basicBase
    }

    contentItem: Text {
        id:iconText

        anchors.centerIn: buttonRec
        text: control.text
      font.family: ""//"Helvetica"
        font.pointSize: 10//themeViewModel.themePalette.fontSizeHeader4
        font.bold: true
        color: textColor
    }

    Image {
        id: iconImage

        anchors.centerIn: buttonRec
        source: control.icon.source
        height: 35//28
        width: 40//31
    }
}

