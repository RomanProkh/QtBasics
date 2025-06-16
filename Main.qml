import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 640; height: 480; visible: true
    title: "Test Launcher"

    ListView {
        width: parent.width
        height: parent.height
        model: ["TestSection2/Task_2.qml", "TestSection2/Task_3.qml", "TestSection2/Task_4.qml", "TestSection2/Task_5.qml", "TestSection2/Task_7.qml",
        "TestSection3/Task_7.qml", "TestSection3/Task_9.qml", "TestSection4/Qt_Controls_Demo.qml", "TestSection5/Task_2-4.qml",
        "BonusQuestions/WhatHappensOnInnerTapped.qml", "BonusQuestions/AnimationOnClicked.qml"]

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
