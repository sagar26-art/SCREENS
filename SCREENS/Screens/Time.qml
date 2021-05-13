import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: timerset
    property var time: new Date()

    Text {
        id: timertext

        //        onTextChanged: {
        //            if(time.getHours()>11)
        //            {
        //                timertext.text=Qt.formatTime(time,"hh:mm AP")
        //            }
        //            else
        //            {
        //                 timertext.text=Qt.formatTime(time,"hh:mm AP")
        //            }
        //        }

        anchors.centerIn: parent
    }

    Timer {
        onTriggered: {
            timertext.text = qsTr(Qt.formatTime(time/*new Date()*/,"h:mm AP"))//"H:mm:ss"
            timertext.font.pixelSize=15
            timertext.color="White"   //H - railway timings
        }
        interval: 1000
        running: true
        repeat: true

    }
}
