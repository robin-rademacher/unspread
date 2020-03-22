import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    width: 734
    height: 546
    color: "#111111"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    Button{
        id: closepopup
        x: 694
        y: 0
        width: 40
        height: 40
        //-------------------------------------------Close Popup Button FEHLT
        onClicked: {
           parent.close()
        }
    }


    Text {
        id: introduction
        text: qsTr("Hier können Sie Ihre Maßnahmen verwalten.")
        x: 19
        y:66
        color: "#ffffff"
        font.pixelSize: 15
    }



    Text {
        id: introduction1
        x: 19
        y: 22
        color: "#ffffff"
        text: qsTr("Maßnahmen")
        font.pointSize: 25
    }


//Measure 1
    Text {
        id: measure1
        x: 19
        y: 132
        color: "#ffffff"
        text: qsTr("Grenzkontrollen")
        font.pixelSize: 15
    }

    Button{
        id: measure1button
        x: 144
        y: 122
        width: 40
        highlighted: true
        Universal.accent: Universal.Crimson //Emerald

        onClicked: {
            //------------------------------------------------aktiviert Maßnahme Grenzkontrolle
            if (state == "off") state = "on"
            else if (state == "on") state = "off"
        }
        state: "off"
        states: [
            State {
                name: "off"
                PropertyChanges { target: measure1button; Universal.accent: Universal.Crimson }
            },
            State {
                name: "on";
                PropertyChanges { target: measure1button; Universal.accent: Universal.Emerald }
            }
        ]

    }

// Measure 2
    Text {
        id: measure2
        x: 19
        y: 192
        color: "#ffffff"
        text: qsTr("Schulen schließen")
        font.pixelSize: 15
    }

    Button{
        id: measure2button
        x: 144
        y: 182
        width: 40
        highlighted: true
        Universal.accent: Universal.Crimson //Emerald

        onClicked: {
            //------------------------------------------------aktiviert Maßnahme Grenzkontrolle
            if (state == "off") state = "on"
            else if (state == "on") state = "off"
        }
        state: "off"
        states: [
            State {
                name: "off"
                PropertyChanges { target: measure2button; Universal.accent: Universal.Crimson }
            },
            State {
                name: "on";
                PropertyChanges { target: measure2button; Universal.accent: Universal.Emerald }
            }
        ]

    }


    Text {
        id: measure3
        x: 19
        y: 251
        color: "#ffffff"
        text: qsTr("Quarantäne")
        font.pixelSize: 15
    }

// Measure 3
    Button{
        id: measure3button
        x: 144
        y: 241
        width: 40
        highlighted: true
        Universal.accent: Universal.Crimson //Emerald

        onClicked: {
            //------------------------------------------------aktiviert Maßnahme Grenzkontrolle
            if (state == "off") state = "on"
            else if (state == "on") state = "off"
        }
        state: "off"
        states: [
            State {
                name: "off"
                PropertyChanges { target: measure3button; Universal.accent: Universal.Crimson }
            },
            State {
                name: "on";
                PropertyChanges { target: measure3button; Universal.accent: Universal.Emerald }
            }
        ]

    }
}
