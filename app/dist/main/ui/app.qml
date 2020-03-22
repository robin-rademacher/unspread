import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

ApplicationWindow {
    id: window
    width: 1080
    minimumWidth: 1080
    maximumWidth: 1080
    height: 720
    minimumHeight: 720
    maximumHeight: 720
    color: "#000000"
    visible: true
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    Loader { 
        id: loader
        source: "menu.qml"
    }

}
