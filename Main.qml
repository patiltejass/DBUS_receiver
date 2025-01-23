import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Light Control System"

    Connections {
        target: receiver  // Connect to the Receiver object

        // Handle the updateLight signal
        function onUpdateLight(lightId, state) {
            if (lightId === 1) {
                light1.color = state ? "yellow" : "transparent";
            } else if (lightId === 2) {
                light2.color = state ? "yellow" : "transparent";
            } else if (lightId === 3) {
                light3.color = state ? "yellow" : "transparent";
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "white"

        Row {
            anchors.centerIn: parent
            spacing: 100

            Item {
                width: 100
                height: 200

                Shape {
                    id: light1
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter

                    ShapePath {
                        strokeColor: "black"
                        strokeWidth: 2
                        fillColor: light1.color
                        startX: 50; startY: 0

                        PathArc {
                            x: 50
                            y: 100
                            radiusX: 50
                            radiusY: 50
                        }

                        PathArc {
                            x: 50
                            y: 0
                            radiusX: 50
                            radiusY: 50
                        }
                    }

                    property string color: "transparent"
                }

                Text {
                    text: "Light 1"
                    anchors.top: light1.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 10
                    font.pixelSize: 20
                }
            }

            Item {
                width: 100
                height: 200

                Shape {
                    id: light2
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter

                    ShapePath {
                        strokeColor: "black"
                        strokeWidth: 2
                        fillColor: light2.color
                        startX: 50; startY: 0

                        PathArc {
                            x: 50
                            y: 100
                            radiusX: 50
                            radiusY: 50
                        }

                        PathArc {
                            x: 50
                            y: 0
                            radiusX: 50
                            radiusY: 50
                        }
                    }

                    property string color: "transparent"
                }

                Text {
                    text: "Light 2"
                    anchors.top: light2.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 10
                    font.pixelSize: 20
                }
            }

            Item {
                width: 100
                height: 200

                Shape {
                    id: light3
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter

                    ShapePath {
                        strokeColor: "black"
                        strokeWidth: 2
                        fillColor: light3.color
                        startX: 50; startY: 0

                        PathArc {
                            x: 50
                            y: 100
                            radiusX: 50
                            radiusY: 50
                        }

                        PathArc {
                            x: 50
                            y: 0
                            radiusX: 50
                            radiusY: 50
                        }
                    }

                    property string color: "transparent"
                }

                Text {
                    text: "Light 3"
                    anchors.top: light3.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 10
                    font.pixelSize: 20
                }
            }
        }
    }
}
