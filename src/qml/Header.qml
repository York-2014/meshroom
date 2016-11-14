import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Item {

    implicitHeight: 30
    implicitWidth: parent ? parent.width : 200

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 10
        spacing: 0
        Label {
            text: currentScene.name
            state: "small"
        }
        Label {
            text: ".meshroom"
            state: "small"
            enabled: false
        }
        Label {
            text: "*"
            visible: !currentScene.undoStack.isClean
        }
        Item { Layout.fillWidth: true } // spacer
        RowLayout {
            ProgressBar {
                implicitWidth: 100
                implicitHeight: 20
                indeterminate: true
                value: 1
            }
            ToolButton {
                Component.onCompleted: {
                    if(typeof icon == "undefined") return;
                        icon = "qrc:///images/pause.svg"
                }
                text: "STOP"
                onClicked: currentScene.graph.stopWorkerThread()
            }
            visible: currentScene.graph.isRunning
        }
    }

}
