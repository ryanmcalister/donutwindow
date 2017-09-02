import QtQuick 2.0
import QtQuick.Controls 1.0

Item {
    width: 900
    height: 900

    Image {
        source: "donut.png"
    }

    Button {
        id: button
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 150
        }

        text: "Eat"
        onClicked: {
            button.visible = false;
            yumAnimation.start();
        }
    }

    Text {
        id: yum
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 150
        }
        font.pointSize: 72
        text: "YUM!!"
        color: "orange"
        opacity: 0

        SequentialAnimation {
            id: yumAnimation
            running: false
            loops: Animation.Infinite
            PropertyAnimation {
                target: yum
                property: "opacity"
                from: 0
                to: 1
                duration: 300
            }
            PropertyAnimation {
                target: yum
                property: "opacity"
                from: 1
                to: 0
                duration: 300
            }
        }
    }
}
