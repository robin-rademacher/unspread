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
    def getFactorTrend(self, name):
        value = Factors.get(name)
        previous = Factors.get_previous(name)
        if value > previous:
            return 1
        if value == previous:
            return 0
        if value < previous:
            return -1

    @Slot(str)
    def execute(self, measure):
        Measures.execute_measure(measure)

    @Slot(result=str)
    def getPeopleAlive(self):
        return str(Stats.people_alive)

    @Slot(result=str)
    def getPeopleHealthy(self):
        return str(Stats.people_healthy)

    @Slot(result=str)
    def getPeopleInfected(self):
        return str(Stats.people_infected)

    @Slot(result=str)
    def getPeopleDead(self):
        return str(Stats.people_dead)

    @Slot(result=str)
    def getPeopleImmune(self):
        return str(Stats.people_immune)

    @Slot(result=str)
    def getStockIndex(self):
        return str(Stats.stock_index)

    @Slot()
    def update(self):
        Factors.save()
        Stats.refresh()
