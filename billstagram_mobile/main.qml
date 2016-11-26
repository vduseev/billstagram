import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 320
    height: 568
    title: qsTr("Billstagram")

    TakePhoto {
        id: takePhoto
        height: parent.height
        anchors.centerIn: parent
    }
}
