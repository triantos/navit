import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import Navit 1.0
import Navit.Graphics 2.0

Item {
    id: __root

    property string prevState: ""
    height: parent.height

    NavitMap {
        id: navit1
        anchors.left: searchDrawer.right
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width
        navit:Navit
    }

    onStateChanged: {
        if(state != "mapControlsVisible") {
            mapControlsTimer.stop()
        }
    }

    MouseArea {
        id: mouseArea4
        enabled: true
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton

        property int originX: 0
        property int originY: 0
        property bool hasMoved : false

        onClicked: {
            switch(mouse.button){
            case Qt.LeftButton :
                mapControls.showControls()
                break;
            case Qt.RightButton  :
                pinpointPopup.mouseY = mouse.y
                pinpointPopup.mouseX = mouse.x
                pinpointPopup.open()
                break;
            }
        }
        onPressed: {
            originX = mouse.x
            originY = mouse.y
            hasMoved = false
        }

        onPositionChanged: {
            mapControls.showControls()
            hasMoved = true
            if(mouse.modifiers === Qt.ShiftModifier){
                var pitch = Math.floor((originY - mouse.y) / 10);
                var orientation =  navit1.orientation + ( Math.floor((mouse.x - originX)) / 10 );

                if(navit1.pitch + pitch < 0 ) {
                    navit1.pitch = 0
                } else if(navit1.pitch + pitch > 60 ) {
                    navit1.pitch = 60
                } else {
                    navit1.pitch += pitch;
                }

                navit1.orientation = orientation % 360

            } else {
                navit1.mapMove(originX, originY, mouse.x, mouse.y);
                originX = mouse.x
                originY = mouse.y
            }
        }
        onWheel: {
            if (wheel.angleDelta.y > 0)
                navit1.zoomInToPoint(2, wheel.x, wheel.y)
            else
                navit1.zoomOutFromPoint(2, wheel.x, wheel.y)
        }
        onPressAndHold: {
            if(!hasMoved){
                pinpointPopup.mouseY = mouse.y
                pinpointPopup.mouseX = mouse.x
                pinpointPopup.open()
            }
        }
    }

    Timer {
        id:mapControlsTimer
        interval: 10000; running: false; repeat: false
        onTriggered: {
            __root.state = __root.prevState
        }
    }

    MapControls {
        id: mapControls
        x: -width
        width: parent.width > parent.height ? parent.height * 0.1 : parent.width * 0.1
        spacing: height * 0.02
        anchors.topMargin: parent.height * 0.05
        anchors.top: parent.top
        anchors.bottom: mapNavigationBar.top
        pitch: navit1.pitch
        orientation: navit1.orientation
        autoZoom: navit1.autoZoom
        onDimensionClicked: {
            showControls()
            if(navit1.pitch != 0) {
                navit1.pitch = 0
            } else {
                navit1.pitch = 45
            }
        }
        onZoomInClicked: {
            showControls()
            navit1.zoomIn(2)
        }
        onZoomOutClicked: {
            showControls()
            navit1.zoomOut(2)

        }
        onZoomModeClicked: {
            showControls()
            navit1.autoZoom = !navit1.autoZoom
        }
        onCompassClicked: {
            navit1.orientation = 0
        }

        function showControls () {
            if(__root.state != "mapControlsVisible"){
                __root.prevState = __root.state
                __root.state = "mapControlsVisible"
            }
            mapControlsTimer.restart()
        }
    }


    MapNavigationBar {
        id: mapNavigationBar
        width: parent.width * 0.95 //parent.width > parent.height ? parent.width * 0.9 : parent.width
        height: parent.width > parent.height ?  parent.height * 0.15 : parent.width * 0.2
        clip: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: parent.height * 0.05
        anchors.bottom: parent.bottom
        onSearchButtonClicked: {
            __root.state = "searchDrawerOpen"
            searchDrawer.open()
        }
        onMenuButtonClicked: {
            __root.prevState = __root.state
            __root.state = "menuDrawerOpen"
        }
    }


    DestinationBar {
        id: destinationBar
        height: parent.width > parent.height ?  parent.height * 0.15 : parent.width * 0.2
        visible: false
        clip: true
        anchors.bottomMargin: parent.height * 0.05
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        onCancelButtonClicked: {
            __root.state = __root.prevState
        }
        onRouteDetailsClicked: {
        }
        onStartButtonClicked: {
            __root.state = ""
            mapNavigationBar.state = "navigationState"
            __root.prevState = ""
            navit1.centerOnVehicle()
            navit1.followVehicle = true
            navit1.autoZoom = true
        }
    }

    Rectangle {
        id: rectangle
        color: "#00000000"
        visible: false
        anchors.fill: navit1

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                __root.state = ""
            }
        }
    }

    MapPinpointPopup {
        id: pinpointPopup
        property real mouseX : 0
        property real mouseY : 0
        property var coordinates : {"lng": 0.00, "lat": 0.00}
        height: parent.height > parent.width ? parent.width * 0.6 : parent.height * 0.4
        width: parent.height > parent.width ? parent.width * 0.5  : parent.height * 0.4
        x: {
            if(mouseX + width > parent.width){
                horizontalPosition = "right"
                return mouseX - width
            } else {
                horizontalPosition = "left"
                return mouseX
            }
        }
        y: {
            if(mouseY + height > parent.height){
                verticalPosition = "bottom"
                return mouseY - height
            } else {
                verticalPosition = "top"
                return mouseY
            }
        }
        onMenuItemClicked: {
            switch (action) {
            case "setDestination":
                navit1.setDestination(mouseX, mouseY)
                navit1.pitch = 0;
                __root.state = "routeOverview"
                navit1.zoomToRoute();
                navit1.zoomOut(2);
                break;
            case "setWaypoint":
                break;
            case "setPosition":
                navit1.setPosition(mouseX, mouseY)
                console.log("Setting position")
                break;
            case "bookmark":
                navit1.addBookmark("asasdad", mouseX, mouseY);
                console.log("Adding bookmark")
                break;
            case "pois":
                break;
            }
            pinpointPopup.close()
        }
        onOpened: {
//            coordinates = navit1.positionToCoordinates(mouseX, mouseY)
        }
    }

    SearchDrawer {
        id: searchDrawer
        x: - width
        y: 0
        width: parent.width < parent.height ? parent.width * 0.9 : parent.width/2
        height: parent.height
        visible: false
        onOpenSearch: {
            __root.state = "searchDrawerSearchActive"
        }
        onCloseSearch: {
            __root.state = "searchDrawerOpen"
        }
        onCloseDrawer: {
            __root.state = ""
            __root.prevState = ""
        }
        onRouteOverview: {
            __root.prevState = __root.state
            __root.state = "routeOverview"
        }
    }

    MenuDrawer {
        id: menuDrawer
        x: parent. width
        y: 0
        width: parent.width < parent.height ? parent.width * 0.9 : parent.width/2
        height: parent.height
        visible: false
        onCloseMenu : {
            __root.state = __root.prevState
            __root.prevState = ""
        }
        onRouteOverview : {
            __root.state = __root.prevState
            __root.prevState = ""
            navit1.zoomToRoute()
        }
        onCancelRoute : {
            __root.state = ""
            mapNavigationBar.state = ""
        }
    }


    states: [
        State {
            name: "mapControlsVisible"

            PropertyChanges {
                target: mapControls
                x: (parent.width * 0.025) + (mapNavigationBar.height / 2) - (width / 2)
            }
        },
        State {
            name: "searchDrawerOpen"
            when: mapNavigationBar.searchButtonClicked
            PropertyChanges {
                target: searchDrawer
                x: 0
                visible: true
            }

            PropertyChanges {
                target: rectangle
                visible: false
            }

            PropertyChanges {
                target: rectangle
                color: parent.width > parent.height ? "#00000000" : "#a6000000"
                visible: parent.width < parent.height
            }

            PropertyChanges {
                target: mouseArea4
                enabled: parent.width < parent.height
            }

            PropertyChanges {
                target: navit1
                width: parent.width > parent.height ? parent.width - searchDrawer.width : parent.width
            }
        },
        State {
            name: "searchDrawerSearchActive"
            PropertyChanges {
                target: searchDrawer
                x: 0
                width: parent.width
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#a6000000"
                visible: true
            }

            PropertyChanges {
                target: mouseArea4
                enabled: false
            }
        },
        State {
            name: "routeOverview"
            //            PropertyChanges {
            //                target: searchDrawer
            //                x: 0
            //                y: -height
            //                width: parent.width
            //                visible: true
            //            }

            PropertyChanges {
                target: rectangle
                color: "#00000000"
                visible: false
            }

            PropertyChanges {
                target: destinationBar
                width: parent.width > parent.height ? parent.height : parent.width
                visible: true
            }

            PropertyChanges {
                target: mapNavigationBar
                width: 0
            }
            PropertyChanges {
                target: mapControls
                x: (parent.width * 0.025) + (mapNavigationBar.height / 2) - (width / 2)
                state: "routeOverview"
            }
        },
        State {
            name: "menuDrawerOpen"

            PropertyChanges {
                target: menuDrawer
                x: parent.width - width
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#a6000000"
                visible: true
            }

            PropertyChanges {
                target: mouseArea4
                enabled: false
            }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "searchDrawerOpen"
            reversible: true
            PropertyAction {
                target:searchDrawer
                property: "visible"
                value: true
            }
            PropertyAction {
                target:rectangle
                property: "visible"
                value: true
            }
            ParallelAnimation{
                ColorAnimation {
                    target:rectangle
                }
                NumberAnimation {
                    property: "x";
                    easing.type: Easing.InOutQuad;
                }
            }
        },
        Transition {
            to: "menuDrawerOpen"
            reversible: true
            SequentialAnimation {
                PropertyAction {
                    property: "visible"
                    value: true
                }
                ColorAnimation { }
            }
            NumberAnimation { property: "x"; easing.type: Easing.InOutQuad; }
            PropertyAnimation { property: "visible"; }
        },

        Transition {
            from:"searchDrawerSearchActive"
            to: ""
            NumberAnimation { property: "x"; easing.type: Easing.InOutQuad; }
            SequentialAnimation {
                ColorAnimation { }
                PropertyAction {
                    property: "visible"
                    value: true
                }
            }
        },
        Transition {
            from: "searchDrawerOpen"
            to: "searchDrawerSearchActive"
            reversible: true
            NumberAnimation { property: "width"; easing.type: Easing.InOutQuad; }
        },

        Transition {
            from: ""
            to: "mapControlsVisible"
            reversible: true
            NumberAnimation { property: "x"; easing.type: Easing.InOutQuad; }
        },

        //        Transition {
        //            from: "searchDrawerOpen"
        //            to: "routeOverview"
        //            SequentialAnimation {
        //                PropertyAction {
        //                    target: destinationBar
        //                    property: "visible"
        //                    value: true
        //                }
        //                ParallelAnimation {
        //                    ColorAnimation { }
        //                    NumberAnimation {
        //                        property: "width";
        //                        easing.type: Easing.InOutQuad;
        //                    }
        //                    NumberAnimation {
        //                        property: "x";
        //                        easing.type: Easing.InOutQuad;
        //                    }
        //                }

        //                PropertyAction {
        //                    property: "visible"
        //                    value: false
        //                }
        //            }
        //        },

        Transition {
            to: "routeOverview"
            reversible: true
            SequentialAnimation {
                PropertyAction {
                    property: "visible"
                    value: true
                }
                ParallelAnimation {
                    ColorAnimation {
                    }
                    NumberAnimation {
                        property: "width";
                        easing.type: Easing.InOutQuad;
                    }
                    NumberAnimation {
                        property: "x";
                        easing.type: Easing.InOutQuad;
                    }
                }
                PropertyAction {
                    property: "visible"
                    value: false
                }
            }
        }
    ]
}














/*##^## Designer {
    D{i:0;height:720;width:1280}D{i:4;anchors_x:196}D{i:5;anchors_width:200;anchors_x:196}
D{i:6;anchors_height:100;anchors_width:100}D{i:8;anchors_y:109}D{i:7;anchors_height:100;anchors_width:100}
D{i:9;anchors_y:109}D{i:21;anchors_height:200;anchors_width:200}D{i:23;anchors_height:200;anchors_width:200}
}
 ##^##*/
