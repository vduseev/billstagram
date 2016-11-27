import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

ApplicationWindow {
    id: root
    visible: true
    width: 320
    height: 568
    title: qsTr("Billstagram")
    background: Rectangle {
        color: "lightgray"
    }

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
        initialItem: takePhotoComponent
    }

    Component {
        id: takePhotoComponent

        TakePhoto {
            id: takePhoto
            height: parent.height
            y: 0
            x: root.width / 2 - width / 2

            onAccept: {
                stackView.push(editBillComponent, { "billImageSource": photoSource })
            }
        }
    }

    Component {
        id: editBillComponent

        EditBill {
            id: editBill
        }
    }
}
