import QtQuick 2.7
import QtQuick.Controls 2.0

Flickable {
    id: root

    property alias billImageSource: billImage.source

    Item {
        width: parent.width
        //spacing: 10

        Rectangle {
            id: captionItem
            width: parent.width
            height: billImage.height
            color: "white"
            //anchors.margins: 10
            Image {
                id: billImage
                height: parent.width / 4
                width: height
                anchors { left: parent.left; top: parent.top; bottom: parent.bottom; margins: 4 }
            }

            TextArea {
                id: billCaptionArea
                anchors { left: billImage.right; leftMargin: 10; top: parent.top; bottom: parent.bottom; right: parent.right; margins: 4 }
                placeholderText: "Write a caption for this bill..."
            }
        }

        Rectangle {
            id: mockItem
            width: parent.width
            height: 50
            anchors { top: captionItem.bottom; topMargin: 20 }
        }
    }
}
