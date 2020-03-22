from model.factors import Factors
from random import uniform


class Stats:
    P_INFECTION = 1.59
    P_DEATH = 0.011
    P_CURE = 0.11
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
        situation_infected = float(- Factors.get("protective_clothing")
                                   - Factors.get("capacity_hospitals")
                                   - Factors.get("safety")
                                   - Factors.get("tranquility")) / 200
        rate_infected = Stats.P_INFECTION + situation_infected
        situation_dead = float(- Factors.get("reagents")
                               - Factors.get("medical_personnel")
                               - Factors.get("capacity_hospitals")) / 1500
        rate_dead = Stats.P_DEATH + situation_dead
        situation_cured = float(+ Factors.get("reagents")
                                + Factors.get("medical_personnel")
                                + Factors.get("capacity_hospitals")) / 150
        rate_cured = Stats.P_CURE + situation_cured

        new_infected = round(
            rate_infected * Stats.people_infected) - Stats.people_infected
        if new_infected > Stats.people_healthy:
            new_infected = Stats.people_healthy
        Stats.people_healthy -= new_infected
        Stats.people_infected += new_infected
        new_dead = round(rate_dead * Stats.people_infected)
        Stats.people_infected -= new_dead
        Stats.people_dead += new_dead
        new_cured = round(rate_cured * Stats.people_infected)
        if Stats.people_infected == 4:
            new_cured = 4
        Stats.people_infected -= new_cured
        Stats.people_immune += new_cured

        Stats.people_alive = Stats.people_healthy + \
            Stats.people_infected + Stats.people_immune
        Stats.history_alive.append(Stats.people_alive)
        Stats.history_healthy.append(Stats.people_healthy)
        Stats.history_infected.append(Stats.people_infected)
        Stats.history_dead.append(Stats.people_dead)
        Stats.history_immune.append(Stats.people_immune)

        # economy
        Stats.stock_index += int(+ Factors.get("morale")
                                 + Factors.get("safety")
                                 + Factors.get("tranquility")
                                 - Factors.get("distance")
                                 + Stats.people_immune / 10000 - Stats.people_dead / 1000)
        Stats.history_stock.append(Stats.stock_index)
