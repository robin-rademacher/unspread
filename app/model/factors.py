# -5 := bad || +5 := good
class Factors:
    reagents = 1
    protective_clothing = 1
    medical_personnel = -3
    morale = 0
    capacity_hospitals = 1
    safety = 3
    popularity = 0
    tranquility = 0
    distance = -2

    def cut(self):
        if self.reagents < -5:
            self.reagents = -5
        if self.protective_clothing < -5:
            self.protective_clothing = -5
        if self.medical_personnel < -5:
            self.medical_personnel = -5
        if self.morale < -5:
            self.morale = -5
        if self.capacity_hospitals < -5:
            self.capacity_hospitals = -5
        if self.safety < -5:
            self.safety = -5
        if self.popularity < -5:
            self.popularity = -5
        if self.tranquility < -5:
            self.tranquility = -5
        if self.distance < -5:
            self.distance = -5
        if self.reagents > 5:
            self.reagents = 5
        if self.protective_clothing > 5:
            self.protective_clothing = 5
        if self.medical_personnel > 5:
            self.medical_personnel = 5
        if self.morale > 5:
            self.morale = 5
        if self.capacity_hospitals > 5:
            self.capacity_hospitals = 5
        if self.safety > 5:
            self.safety = 5
        if self.popularity > 5:
            self.popularity = 5
        if self.tranquility > 5:
            self.tranquility = 5
        if self.distance > 5:
            self.distance = 5
