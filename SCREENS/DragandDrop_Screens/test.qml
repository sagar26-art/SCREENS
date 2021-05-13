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

        id:btton

        width: 100

        height: parent.height
        color: "grey"
        z:1
        ListView {

            id:taskBarList

            //  anchors.fill: parent
            width: parent.width
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 15


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


                     console.log("dummy:"+ dummy )
                    if(drag.y < taskBarList.contentHeight) {
                        //    console.log("y=" +drag.y +"and"+"taskBarList.contentHeight="+taskBarList.contentHeight )


                        dropIndex = taskBarList.indexAt(drag.x,drag.y)
                        if(dropIndex!==-1)
                        {
                            taskBarModel.remove(drag.source.index,1)
                            taskBarModel.insert(dropIndex,dummy)
                            console.log("droppedindex="+dummy)
                        }


                    }

                        else{
                            taskBarModel.remove(drag.source.index,1)
                            taskBarModel.append(dummy)

                        }
                    taskBarList.forceLayout()

                    for(var i=0;i<taskBarList.count;i++)
                    {
                        taskBarModel.get(i).index=i
                    }

                }

            }



            ObjectModel{
                id:taskBarModel

                DragTile{
                    id:one

                    index: 0

                    text: 1

                }
                DragTile{

                    id:two

                    index: 1

                    text: "two"

                }
                DragTile{

                    id:three

                    index: 2

                    text: "three"

                }
                DragTile{

                    id:four

                    index: 3

                    text: "four"

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
