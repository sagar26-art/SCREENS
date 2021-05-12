import QtQuick 2.0

Rectangle{
   id:runScreen2
    color: "yellow"
    width: 1040
    height: 500
    radius: 10
    Text {
        id: runScreen2Text
        text: qsTr("Screen 2")
        anchors.centerIn: parent
        color: "Black"
        font.pixelSize: 50
    }
   // anchors.fill: parent
}
