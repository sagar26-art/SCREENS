import QtQuick 2.0

Rectangle{
   id:runScreen1
    color: "green"
    width: 1040
    height: 500
    radius: 10
   // anchors.fill: parent
    Text {
        id: runScreen1Text
        text: qsTr("Screen 1")
        anchors.centerIn: parent
        color: "Black"
        font.pixelSize: 50
    }
}
