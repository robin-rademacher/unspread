from PySide2.QtCore import QObject, Slot


class Bridge(QObject):
    @Slot()
    def getHealthy():
        pass
