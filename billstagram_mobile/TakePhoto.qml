import QtQuick 2.7
import QtQuick.Controls 2.0
import QtMultimedia 5.6
import QtQuick.Layouts 1.1

Item {
    id: root

    width: getCameraPicWidth()

    Camera {
        id: camera

        imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

        exposure {
            exposureCompensation: -1.0
            exposureMode: Camera.ExposurePortrait
        }

        flash.mode: Camera.FlashRedEyeReduction

        imageCapture {
            onImageCaptured: {
                photoPreviewImage.source = preview  // Show the preview in an Image
            }
        }
    }

    VideoOutput {
        source: camera
        anchors.fill: parent
        focus : visible // to receive focus and capture key events when visible
    }

    Button {
        id: takePhotoButton

        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: parent.height / 20
        }

        text: "Take a photo"

        onClicked: {
            camera.imageCapture.capture()
            photoPreview.visible = true
        }
    }

    Item {
        id: photoPreview
        anchors.fill: parent
        visible: false

        Image {
            id: photoPreviewImage
            anchors.fill: parent
        }

        RowLayout {
            anchors {
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: parent.height / 20
            }

            Button {
                id: cancelButton
                text: "Cancel"
                onClicked: {
                    photoPreview.visible = false
                }
            }

            Button {
                id: acceptButton
                text: "Accept"
                onClicked: {
                    photoPreview.visible = false
                }
            }
        }
    }

    function getCameraPicWidth() {
        return camera.viewfinder.resolution.width / camera.viewfinder.resolution.height * root.height
    }
}
