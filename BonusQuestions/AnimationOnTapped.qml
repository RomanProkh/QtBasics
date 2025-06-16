import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 400
    height: 300
    visible: true
    title: "Click + Animation Example"

    Rectangle {
        id: outerRect
        width: 300
        height: 200
        anchors.centerIn: parent

        // Declare the color as a property of the Rectangle itself
        property color outerColor: "blue"
        color: outerColor

        TapHandler {
            onTapped: {
                outerRect.outerColor = (outerRect.outerColor === "blue") ? "red" : "blue";
            }
        }

        Behavior on outerColor {
            ColorAnimation {
                duration: 500
            }
        }

        Rectangle {
            id: innerRect
            width: innerRect.rectWidth
            height: 100
            color: "green"
            anchors.centerIn: parent

            // Declare width as a property of the inner rectangle
            property int rectWidth: 100

            TapHandler {
                onTapped: {
                    innerRect.rectWidth = (innerRect.rectWidth === 100) ? 200 : 100;
                }
            }

            Behavior on rectWidth {
                NumberAnimation {
                    duration: 400
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
