import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "black"

    //Opacity
    //https://doc.qt.io/qt-5/qml-qtquick-opacityanimator.html

    Image {
        id: ghost
        source: "qrc:/images/ghost.jpg"
        anchors.fill: parent
        opacity: 0
    }

    SequentialAnimation {
        loops: Animation.Infinite
        running: true

        OpacityAnimator {
            target: ghost
            from: 0
            to: 1
            duration: 1000
        }
        OpacityAnimator {
            target: ghost
            from: 1
            to: 0
            duration: 5000
        }
    }

}
