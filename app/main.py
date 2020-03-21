from bridge.start import Start
from bridge.game import Game
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
import os
import sys
os.environ["QT_QUICK_CONTROLS_STYLE"] = "universal"


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    context = engine.rootContext()
    context.setContextProperty("start", Start())
    engine.load("ui/start.qml")
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
