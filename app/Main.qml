import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

ApplicationWindow {
    id: window
    width: 1080
    height: 720
    visible: true
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    Grid {
        id: grid
        rows: 5
        columns: 5
        anchors.fill: parent

        Slider {
            id: slider
            value: 0.5
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
