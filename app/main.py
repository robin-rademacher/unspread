from bridge import Bridge
from PySide2.QtGui import QGuiApplication, QIcon
from PySide2.QtQml import QQmlApplicationEngine
import os
import sys
os.environ["QT_QUICK_CONTROLS_STYLE"] = "universal"


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    app.setApplicationDisplayName("unspread")
    app.setDesktopFileName("unspread")
    app.setWindowIcon(QIcon("assets/images/logo.png"))
    engine = QQmlApplicationEngine()
    bridge = Bridge()
    engine.rootContext().setContextProperty("app", bridge)
    engine.load("ui/app.qml")
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
