import QtQuick 2.0


Rectangle{
    property alias loaderScreen: loaderScreen.source
    property alias monitoringsceen: monitoringsceen
    id:monitoringsceen
    color: "White"
    width: 1040
    height: 500
    radius: 10

    Loader{
        id:loaderScreen
        source: loaderScreen.source
    }
}




