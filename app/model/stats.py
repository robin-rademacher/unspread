from factors import Factors
from random import uniform


class Stats:
    INFECTION_RATE = 0.1
    DEATH_RATE = 0.05
    CURE_RATE = 0.75
    people_healthy = 44999999
    healthy = [44999999]
    people_infected = 1
    infected = [1]
    people_dead = 0
    dead = [0]
    people_immune = 0
    immune = [0]
    stock_index = 10000
    people_unemployed = 1000000

    def refresh(self):
        threshold_infected = INFECTION_RATE + INFECTION_RATE/20 * (- Factors.protective_clothing - Factors.capacity_hospitals
                                                                   - Factors.safety - Factors.tranquility)
        threshold_dead = DEATH_RATE + DEATH_RATE/15 * (- Factors.reagents - Factors.medical_personnel
                                                       - Factors.capacity_hospitals)
        threshold_immune = CURE_RATE + CURE_RATE/15 * (+ Factors.reagents + Factors.medical_personnel
                                                       + Factors.capacity_hospitals)
        for i in range(1, people_healthy):
            if uniform(0, 1) < threshold_infected:
                people_healthy -= 1
                people_infected += 1
        for i in range(1, people_infected):
            if uniform(0, 1) < threshold_dead:
                people_infected -= 1
                people_dead += 1
        for i in range(1, people_infected):
            if uniform(0, 1) < threshold_immune:
                people_infected -= 1
                people_immune += 1
