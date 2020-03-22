import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    width: 990
    height: 600
    color: "#000000"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    Item {
        //DEBUG REC
        Rectangle{

            id: debugrec
            x: 0
            y: 0
            width: 20
            height: 20
            color: "#d53232"
            visible: false
        }

        //DEBUG REC END

        Text {
            id: introduction1
            x: 19
            y: 22
            color: "#ffffff"
            text: qsTr("Maßnahmen")
            font.pointSize: 25
        }
        Text {
            id: introduction
            text: qsTr("Hier können Sie Ihre Maßnahmen verwalten.")
            x: 19
            y:66
            color: "#ffffff"
            font.pixelSize: 15
        }

//Maßnahmen
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
        }
}
