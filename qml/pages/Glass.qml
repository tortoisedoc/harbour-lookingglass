import QtQuick 2.0
import QtMultimedia 5.4

Item {

    anchors.fill: parent;
    property alias digitalZoom:camera.digitalZoom;

    function searchAndLock(){
        camera.searchAndLock();
    }
    function unlock(){
        camera.unlock();
    }

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
                photoPreview.source = preview  // Show the preview in an Image
            }
        }
        focus.focusMode: Camera.FocusContinuous;
    }

    VideoOutput {
        source: camera
        anchors.fill: parent
        focus : visible // to receive focus and capture key events when visible
    }

    Image {
        id: photoPreview
    }
}
