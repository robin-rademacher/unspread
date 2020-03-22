from model.factors import Factors
from random import uniform


class Stats:
    P_INFECTION = 0.0001
    P_DEATH = 0.00001
    P_CURE = 0.1
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

    @staticmethod
    def refresh():
        # epidemology
        rate_infected = Stats.P_INFECTION + Stats.P_INFECTION/20 * (- Factors.get("protective_clothing")
                                                                    - Factors.get("capacity_hospitals")
                                                                    - Factors.get("safety")
                                                                    - Factors.get("tranquility"))
        rate_dead = Stats.P_DEATH + Stats.P_DEATH/15 * (- Factors.get("reagents")
                                                        - Factors.get("medical_personnel")
                                                        - Factors.get("capacity_hospitals"))
        rate_immune = Stats.P_CURE + Stats.P_CURE/15 * (+ Factors.get("reagents")
                                                        + Factors.get("medical_personnel")
                                                        + Factors.get("capacity_hospitals"))
        new_infected = int(Stats.people_healthy * rate_infected)
        Stats.people_healthy -= new_infected
        Stats.people_infected += new_infected
        new_dead = int(Stats.people_infected * rate_dead)
        Stats.people_infected -= new_dead
        Stats.people_dead += new_dead
        new_immune = int(Stats.people_infected * rate_immune)
        Stats.people_infected -= new_immune
        Stats.people_immune += new_immune

        Stats.people_alive = Stats.people_healthy + \
            Stats.people_infected + Stats.people_immune
        Stats.history_alive.append(Stats.people_alive)
        Stats.history_healthy.append(Stats.people_healthy)
        Stats.history_infected.append(Stats.people_infected)
        Stats.history_dead.append(Stats.people_dead)
        Stats.history_immune.append(Stats.people_immune)

        # economy
        Stats.stock_index += int(100 * (+ Factors.get("morale")
                                        + Factors.get("safety")
                                        + Factors.get("tranquility")
                                        - Factors.get("distance")))
        Stats.history_stock.append(Stats.stock_index)
