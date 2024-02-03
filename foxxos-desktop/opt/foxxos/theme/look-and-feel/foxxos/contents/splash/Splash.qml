import QtQuick 2.1

Image {
    id: root
    source: "images/background.avif"

    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }
}
