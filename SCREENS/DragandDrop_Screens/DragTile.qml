import QtQuick 2.12
import QtQuick.Controls 2.14


import QtQuick 2.0


Item {

    id: root


    width: 64; height: 64

    property int index

    property var text


    MouseArea {

        id: mouseArea


        width: 64; height: 64

        anchors.centerIn: parent


        drag.target: tile


        onReleased: {

            if(tile.Drag.target !==null)

                tile.Drag.drop()


        }

}

        Rectangle {

            id: tile


            width: 64; height: 64

            anchors.verticalCenter: parent.verticalCenter

            anchors.horizontalCenter: parent.horizontalCenter


            color: "red"


            Drag.keys: ["true"]

            Drag.active: mouseArea.drag.active

            Drag.hotSpot.x: 32

            Drag.hotSpot.y: 32

            Drag.source: root

            Text {

                anchors.fill: parent

                color: "Black"

                font.pixelSize: 15

                text: root.text

                horizontalAlignment:Text.AlignHCenter

                verticalAlignment: Text.AlignVCenter

            }

            states: State {

                when: mouseArea.drag.active

                ParentChange { target: tile; parent: root }

                AnchorChanges { target: tile; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }

            }


        }

    }


//Button{
//    id:button
//    width: 100
//    height: 50
//   // property bool enableDrag: false
//    property int index

//    Drag.keys: ["true"]
//    Drag.active: dragtile.drag.active
//    Drag.hotSpot.x:button.width/2
//    Drag.hotSpot.y: button.height/2
//    Drag.source: button
//    Text{
//        id:buttontext
//        text: index
//        font.pixelSize: 15
//        color: "black"
//    }

//    MouseArea{
//        id:dragtile
//        anchors.fill: parent
//        drag.target: button
//        onReleased: {
//            if(button.Drag.target !==null )
//            {

//                button.Drag.drop()
//            }
//        }
//        onPressAndHold: {


//        }
//    }

//    background:  Rectangle{
//        id: tile
//        width: parent.width
//        height: parent.height
//        radius: 3
//        color:"red"

//    }
//    states:
//        State {
//        name: "dragenabled"
//        when : dragtile.drag.active
//        AnchorChanges {
//            target: button
//            anchors{
//                top:undefined
//                bottom: undefined
//                right:undefined
//                left:undefined
//            }

//        }
//    }

//}



