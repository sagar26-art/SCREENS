import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

import QtQml.Models 2.1

Item {
    id:sidebarComponents
    Rectangle{
        id:rect
        width: 220
        height: 620
        anchors.top: parent.top
        anchors.topMargin: 15
        color: "darkgray"
        z:1
        ListView{
            id:taskBarList

           // anchors.fill: parent
            width: parent.width
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 20

            orientation: Qt.Vertical
            spacing: 5
            clip: false
            flickableDirection: Flickable.VerticalFlick
            model: taskBarModel//to be
            DropArea {
                id: dropAreaTaskBar

              anchors.fill: parent

                property var dummy
                property var dropIndex
                keys: ["true"]
                onDropped:
                {
                    dummy = drag.source
                    //  console.log("dummy"+ dummy )

                    taskBarModel.remove(drag.source.index,1)

                    if(drag.y < taskBarList.contentHeight) {
                        // console.log("y=" +drag.y +"and"+"taskBarList.contentHeight="+taskBarList.contentHeight )

                        dropIndex = taskBarList.indexAt(drag.x,drag.y)

                        taskBarModel.insert(dropIndex,dummy)

                    }

                    else
                        taskBarModel.append(dummy)

                    taskBarList.forceLayout()

                    for(var i=0;i<taskBarList.count;i++)

                    {

                        taskBarModel.get(i).index=i

                    }

                }

            }     //droparea
            ObjectModel{
                id: taskBarModel
                CnhDragableWidget{
                    index: 0
                    button.width: 180
                    button.height: 65
                    parametername:"one"

                }
                CnhDragableWidget{
                    index: 1
                    button.width: 180
                    button.height: 65
                    parametername:"two"
                }
                CnhDragableWidget{
                    index: 2
                    button.width: 180
                    button.height: 65
                    parametername:"three"
                }
                CnhDragableWidget{
                    index: 3
                    button.width: 180
                    button.height: 65
                    parametername:"four"
                }
                CnhDragableWidget{
                    index: 0
                    button.width: 180
                    button.height: 65
                    parametername:"five"

                }
                CnhDragableWidget{
                    index: 1
                    button.width: 180
                    button.height: 65
                    parametername:"six"
                }
                CnhDragableWidget{
                    index: 2
                    button.width: 180
                    button.height: 65
                    parametername:"seven"
                    parameterValue:"70"
                }
                CnhDragableWidget{
                    index: 3
                    button.width: 180
                    button.height: 65
                    parametername:"eight"
                }


            }
        }

    }


}
//Column{
//    spacing: 8
//    anchors.fill: rect

//    CnhWidgets{
//        id:enginepower
//        width: 180
//        height: 65
//        backgroundRect.color: "red"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }


//     CnhWidgets{
//        id: slip
//        width: 180
//        height: 65
//        backgroundRect.color: "red"
//        anchors.horizontalCenter: parent.horizontalCenter
//    }
//     CnhWidgets{
//        id: fuelEconomy
//        width: 180
//        height: 65
//        backgroundRect.color: "red"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }
//     CnhWidgets{
//        id: fuelRate
//        width: 180
//        height: 65
//        backgroundRect.color:"White"
//        anchors.horizontalCenter: parent.horizontalCenter
//    }
//     CnhWidgets{
//        id: averageWorking
//        width: 180
//        height: 65
//        backgroundRect.color:"White"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }
//     CnhWidgets{
//        id: abcd
//        width: 180
//        height: 65
//        backgroundRect.color: "White"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }
//     CnhWidgets{
//        id: crossTrack
//        width: 180
//        height: 65
//        backgroundRect.color: "White"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }
//     CnhWidgets{
//        id: b1
//        width: 180
//        height: 65
//        backgroundRect.color: "White"
//        anchors.horizontalCenter: parent.horizontalCenter

//    }

//}
