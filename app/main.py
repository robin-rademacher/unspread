from .measures import Measures
from .stats import Stats
from .indicators import Indicators
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
import os
import sys
os.environ["QT_QUICK_CONTROLS_STYLE"] = "universal"


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load("Main.qml")

    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
