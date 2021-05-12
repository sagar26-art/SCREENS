import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.14
import QtQml.Models 2.1


//ApplicationWindow {
//    id:window
//    width: 640
//    height: 780
//    visible: true
//    title: qsTr("Hello World")


    Rectangle {
        width: 300; height: 300
        color: "grey"

        ListModel
        {
            id: appModel
            ListElement { name: "0" ;index:0  }
            ListElement { name: "1"; index:1 }
            ListElement { name: "2"; index:2 }
            ListElement { name: "3"; index:3 }
            ListElement { name: "4"; index:4 }
            ListElement { name: "5 "; index:5 }
            ListElement { name: "6"; index:6 }
            ListElement { name: "7 "; index:7 }
            ListElement { name: "8"; index:8}

        }
        ObjectModel{
            id:objectmodel

            DragTile{
                id:d0
                width: 100
                height: 100
                text: 0
                index:0

            }
            DragTile{
                 id:d1
                width: 100
                height: 100
                text: 1
                index:1

            }
            DragTile{
                id:d2
                width: 100
                height: 100
                text: 2
                index:2

            }
            DragTile{
                id:d3
                width: 100
                height: 100
                text: 3
                index:3

            }
            DragTile{
                id:d4
                width: 100
                height: 100
                text: 4
                index:4

            }
            DragTile{
               id: d5
                width: 100
                height: 100
                text: 5
                index:5

            }
            DragTile{
                id:d6
                width: 100
                height: 100
                text: 6
                index:6

            }
            DragTile{
                id:d7
                width: 100
                height: 100
                text: 7
                index:7

            }
            DragTile{
                id:d8
                width: 100
                height: 100
                text:8
                index:8

            }
        }

        GridView {
            id:gridview
            anchors.fill: parent
            cellWidth: 100; cellHeight: 100
            focus: true
            model: objectmodel//appModel
            flow: GridView.TopToBottom
            DropArea{
                id:dropArea
                anchors.fill: parent
                Drag.keys: ["true"]
                property var object

                property int dropIndex
                onDropped: {

                    object=drag.source
                   console.log("Source="+object)
                   // console.log("y:"+drag.y+"and height="+gridview.contentHeight)

                    if(drag.y > gridview.contentHeight)
                    {
                         dropIndex = gridview.indexAt(drag.x,drag.y)
                        gridview.currentIndex=dropIndex
                       // console.log("CurrentIndex="+gridview.currentIndex)
                        if(dropIndex!==-1)
                        {
                            objectmodel.remove(drag.source.index,1)

                            objectmodel.insert(dropIndex,object)
                           console.log("index:"+dropIndex)
                        }
                        else{
                            objectmodel.remove(drag.source.index,1)
                            objectmodel.append(object)

                        }

                    }
              gridview.forceLayout()
                    for(var i=0;i<gridview.count;i++)
                    {
                        objectmodel.get(i).index=i
                    }
                }

            }

            //  highlight: Rectangle { width: 80; height: 80; color: "lightsteelblue" }


        }
    }

//}
//            delegate: Button {
//                id:button
//                width: 80; height: 80


//                Rectangle{
//                    id:tile
//                    width: 80
//                    height: 80
//                    color: "green"
//                    Text {
//                        //  anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
//                        text: name
//                        visible: true
//                        color: "Black"
//                        font.pixelSize: 15
//                        anchors.centerIn: parent
//                    }

//                    Drag.source: button
//                    Drag.active: mousearea.drag.active
//                    Drag.hotSpot.x: 32
//                    Drag.keys: ["true"]

//                    Drag.hotSpot.y: 32
//                    states: State {

//                        when: mousearea.drag.active

//                        ParentChange { target: tile; parent: button }

//                        AnchorChanges { target: tile; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }

//                    }


//                }

//                MouseArea {
//                    id:mousearea
//                    anchors.fill: parent
//                    drag.target: tile
//                    onReleased: {

//                        if(tile.Drag.target !==null)

//                            tile.Drag.drop()


//                    }

//                }
//            }







