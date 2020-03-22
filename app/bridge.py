from PySide2.QtCore import QObject, Slot
from model.factors import Factors
from model.measures import Measures
from model.stats import Stats


class Bridge(QObject):

    @Slot(str, result=float)
    def getFactor(self, name):
        value = Factors.get(name)
        return (value + 5.0) / 10.0

    @Slot(str, result=int)
    def getFactorPrevious(self, name):
        return Factors.get_previous(name)

    @Slot(str)
    def execute(self, measure):
        Measures.execute_measure(measure)

    @Slot(result=str)
    def getPeopleAlive(self):
        return Stats.people_alive

    @Slot(result=str)
    def getPeopleHealthy(self):
        return Stats.people_healthy

    @Slot(result=str)
    def getPeopleInfected(self):
        return Stats.people_infected

    @Slot(result=str)
    def getPeopleDead(self):
        return Stats.people_dead

    @Slot(result=str)
    def getPeopleImmune(self):
        return Stats.people_immune

    @Slot(result=str)
    def getStockIndex(self):
        return Stats.stock_index

    @Slot()
    def update(self):
        Factors.save()
        Stats.refresh()
