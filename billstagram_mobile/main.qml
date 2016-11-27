import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 320
    height: 568
    title: qsTr("Billstagram")

    header: ToolBar {
        ToolButton {
            text: qsTr("\u25C0 Back")
            anchors { left: parent.left; leftMargin: 10; verticalCenter: parent.verticalCenter; }
            visible: stackView.depth > 1
            onClicked: stackView.pop()
        }

        Text {
            id: screenName
            anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
            text: qsTr("Screen Name")
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: initialComponent
    }

    Component {
        id: initialComponent

        TakePhoto {
            id: takePhoto
            height: parent.height
            anchors.centerIn: parent
        }
    }
}
