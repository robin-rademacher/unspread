from .indicators import Indicators


class Stats:
    people_infected = 1
    people_dead = 0
    people_cured = 0
    stock_index = 10000
    people_unemployed = 1000000
    bip = 50000

    def refresh():
        self.people_infected += self.people_infected * 1 ^ (Indicators.panic)
