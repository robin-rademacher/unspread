from factors import Factors
from random import uniform


class Stats:
    INFECTION_RATE = 0.1
    DEATH_RATE = 0.05
    CURE_RATE = 0.75
    people_alive = 45000000
    history_alive = [45000000]
    people_healthy = 44999999
    history_healthy = [44999999]
    people_infected = 1
    history_infected = [1]
    people_dead = 0
    history_dead = [0]
    people_immune = 0
    history_immune = [0]
    stock_index = 10000
    history_stock = 10000
    people_unemployed = 1000000
    history_unemployed = [1000000]

    def refresh(self):
        # epidemology
        threshold_infected = self.INFECTION_RATE + self.INFECTION_RATE/20 * (- Factors.get("protective_clothing")
                                                                             - Factors.get("capacity_hospitals")
                                                                             - Factors.get("safety")
                                                                             - Factors.get("tranquility"))
        threshold_dead = self.DEATH_RATE + self.DEATH_RATE/15 * (- Factors.get("reagents")
                                                                 - Factors.get("medical_personnel")
                                                                 - Factors.get("capacity_hospitals"))
        threshold_immune = self.CURE_RATE + self.CURE_RATE/15 * (+ Factors.get("reagents")
                                                                 + Factors.get("medical_personnel")
                                                                 + Factors.get("capacity_hospitals"))

        for i in range(1, self.people_healthy):
            if uniform(0, 1) < threshold_infected:
                self.people_healthy -= 1
                self.people_infected += 1

        for i in range(1, self.people_infected):
            rand = uniform(0, 1)
            if rand < threshold_dead:
                self.people_infected -= 1
                self.people_dead += 1
            if rand > 1-threshold_immune:
                self.people_infected -= 1
                self.people_immune += 1

        self.people_alive = self.people_healthy + \
            self.people_infected + self.people_immune
        self.history_alive.append(self.people_alive)
        self.history_healthy.append(self.people_healthy)
        self.history_infected.append(self.people_infected)
        self.history_dead.append(self.people_dead)
        self.history_immune.append(self.people_immune)

        # economy
