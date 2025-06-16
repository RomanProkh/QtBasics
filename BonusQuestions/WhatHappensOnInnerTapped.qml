import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 300
    height: 400
    visible: true
    title: "Model-View-Delegate Example"

    // Model example
    ListModel {
        id: myModel
        ListElement { name: "Alice"; age: 25 }
        ListElement { name: "Bob"; age: 30 }
    }

    // View example
    ListView {
        width: 200
        height: 300
        anchors.centerIn: parent
        model: myModel

        // Delegate example
        delegate: Rectangle {
            required property string name
            width: 100
            height: 50

            Text {
                text: name
            }
        }
    }
}
