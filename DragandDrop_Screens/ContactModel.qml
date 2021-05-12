import QtQuick 2.12

import QtQuick.Window 2.12

import QtQuick.Controls 2.15

import QtQuick.Layouts 1.14

import QtQml.Models 2.1

Window {

    id:window

    width: 640

    height: 480

    visible: true

    title: qsTr("Hello World")

    Rectangle{
        property alias taskBarModel: taskBarModel
        property alias  dropAreaTaskBar:  dropAreaTaskBar

        id:sidebar

        width: 100

        height: parent.height
        color: "grey"
        z:1
        ListView
        {

            id:taskBarList

            //  anchors.fill: parent
            width: parent.width
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 15
            //            Rectangle{
            //                anchors.fill: parent
            //                color: "green"
            //            }


            orientation: Qt.Vertical
            spacing: 5
            clip: false
            flickableDirection: Flickable.VerticalFlick
            model: taskBarModel
            DropArea {
                id: dropAreaTaskBar

                anchors.fill: parent
                property var dummy

                property var dropIndex

                keys: ["true"]

                onDropped:
                {
                    dummy = drag.source
                    dropIndex = taskBarList.indexAt(drag.x,drag.y)


                    console.log("count of listView:"+ taskBarList.count )
                    if(drag.y < taskBarList.contentHeight)
                    {
                        dropIndex = taskBarList.indexAt(drag.x,drag.y)
                        if(dropIndex!==-1)
                        {
                            taskBarModel.remove(drag.source.index,1)
                            taskBarModel.insert(dropIndex,dummy)
                            //   console.log("droppedindex="+dummy)
                        }
                    }

                    else{
                        taskBarModel.remove(drag.source.index,1)
                        taskBarModel.append(dummy)

                    }
                    taskBarList.forceLayout()
                    if(taskBarList.count)

                        for(var i=0;i<taskBarList.count;i++)
                        {
                            taskBarModel.get(i).index=i
                            console.log("listIndex:"+ taskBarModel.get(i).index)
                        }

                }

            }



            ObjectModel{
                id:taskBarModel

                DragTile{
                    id:one

                    index: 0

                    text: 0

                }
                DragTile{

                    id:two

                    index: 1

                    text: 1

                }
                DragTile{

                    id:three

                    index: 2

                    text: 2

                }
                DragTile{

                    id:four

                    index: 3

                    text: 3

                }
                DragTile{
                    id:five
                    text:4
                    index: 4
                }



            }

        }//listView
    }
    Rectangle{
        id:monitorbar
        anchors.left: parent.left
        anchors.leftMargin: 150
        width: 500
        height: parent.height //reduce later for grid form+++++++++++++++++++++++++++++++++++++++++++
        color: "grey"



        //        Gridview{

        //        }


        GridView{
            id:gridview
            property int tempIndex
            anchors.fill: parent
            cellHeight: 120
            cellWidth: 120
            flow: GridView.TopToBottom


            model:ObjectModel{
                id:objectmodal


                Rectangle{
                    property var index
                    id:cell1
                    width:100
                    height: 100
                    color: "green"
                    index:0
                }
                Rectangle{
                    property var index
                    id:cell2
                    width:100
                    height: 100
                    color: "green"//transparent
                    index:1
                }
                Rectangle{
                    property var index
                    id:cell3
                    width:100
                    height: 100
                    color: "green"
                    index:2
                }
                Rectangle{
                    property var index
                    id:cell4
                    width:100
                    height: 100
                    color: "green"
                    index:3
                }
                Rectangle{
                    property var index
                    id:cell5
                    width:100
                    height: 100
                    color: "green"
                    index:4
                }
                //                                Rectangle{
                //                                     property var index
                //                                    id:cell6
                //                                    width:100
                //                                    height: 100
                //                                    color: "green"
                //                                    index:5
                //                                }
                //                                Rectangle{
                //                                    id:cell7
                //                                    width: 64
                //                                    height: 60
                //                                     color: "green"
                //                                }
            }///model


            DropArea{
                id:droparea
                anchors.fill: parent
                Drag.keys: ["true"]
                property var droppedIndex1
                property var object1

                property var  count

                onDropped: {
                    object1=drag.source
                    droppedIndex1=gridview.itemAtIndex(1)
                    for(var i=0;i<gridview.count;i++)
                    {
                        objectmodal.get(i).index=i
                        console.log("index:"+objectmodal.get(i).index)
                    }

                    //listView object rearrange
                    taskBarModel.remove(drag.source.index,1)
                    gridview.forceLayout()
                }
            }
        }
    }

}



//import QtQuick 2.12
//import QtQuick.Window 2.12
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.14
//import QtQml.Models 2.1


//Window {
//    id:window
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")

//    Rectangle{
//        id:btton
//        width: 100
//        height: parent.height
//        color: "grey"

//        ListView {
//            id:taskBarList

//            // property var parentBar: navigationBar
//            anchors.fill: parent
//            orientation: Qt.Vertical
//            spacing: 5

//            //  interactive: rearrangeDialog.rearrangeEnabled ? false : true

//            clip: true

//            flickableDirection: Flickable.VerticalFlick

//            pressDelay: 0//to set

//            cacheBuffer: taskBarList.height

//            model: taskBarModel
//            DropArea {
//                id: dropAreaTaskBar

//                anchors.fill: taskBarList
//                keys: ["true"]
//                onDropped:
//                {
//                     console.log("count="+taskBarList.count)
//                    //  taskBarModel.append(drag.source)
//                    console.log("index"+drag.source.index)

//                    taskBarList.forceLayout()
//                    // taskBarModel.append(drag.source)
//                    // taskBarList.forceLayout()
//                    for(var i=0;i<taskBarList.count;i++)
//                    {
//                        taskBarModel.get(i).index=i
//                        taskBarModel.remove(drag.source.index,1)


//                    }
//                    for( i=0;i<taskBarList.count;i++)
//                    {
//                        console.log(taskBarModel.get(i).index)

//                    }



//                    //rearrangeDialog.buttonDropped(drag.source.parent,taskBarList,drag.x,drag.y)
//                }


//            }
//            ObjectModel{
//                id:taskBarModel
//                DragTile{
//                    id:one
//                    index: 0

//                }
//                DragTile{
//                    id:two
//                    index: 1


//                }
//                DragTile{
//                    id:three
//                    index: 2


//                }
//                DragTile{
//                    id:four
//                    index: 3

//                }

//            }




//        }
//    }





//}

