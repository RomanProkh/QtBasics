// main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640; height: 480; visible: true
    title: "Test Launcher"

    ListView {
        width: parent.width
        height: parent.height
        model: ["TestSection1/Task_2.qml", "TestSection1/Task_3.qml"]

        delegate: Button {
            text: modelData
            onClicked: stackView.push(Qt.resolvedUrl(modelData))
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: null
    }
}
