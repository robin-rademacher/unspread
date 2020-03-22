from factors import Factors
from random import uniform


class Stats:
    P_INFECTION = 0.1
    P_DEATH = 0.05
    P_CURE = 0.75
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
    history_stock = [10000]

    def refresh(self):
        # epidemology
        threshold_infected = self.P_INFECTION + self.P_INFECTION/20 * (- Factors.get("protective_clothing")
                                                                       - Factors.get("capacity_hospitals")
                                                                       - Factors.get("safety")
                                                                       - Factors.get("tranquility"))
        threshold_dead = self.P_DEATH + self.P_DEATH/15 * (- Factors.get("reagents")
                                                           - Factors.get("medical_personnel")
                                                           - Factors.get("capacity_hospitals"))
        threshold_immune = self.P_CURE + self.P_CURE/15 * (+ Factors.get("reagents")
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
        self.stock_index += 100 * (+ Factors.get("morale")
                                   + Factors.get("safety")
                                   + Factors.get("tranquility")
                                   - Factors.get("distance"))
        self.history_stock.append(self.stock_index)
