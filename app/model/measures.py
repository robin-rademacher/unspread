from factors import Factors


class Measures:
    borders = False
    entry = True
    travel = True
    schools = True
    universities = True
    homeoffice = False
    curfew = False
    parks = True
    assemblies = True
    quarantine = False

    def control_borders(self):  # nach x Tagen
        self.borders = not self.borders
        sign = 1 if self.borders else -1
        Factors.morale += sign * -1
        Factors.tranquility += sign * -1
        Factors.cut()

    def control_entry(self):
        self.entry = not self.entry
        sign = 1 if self.entry else -1
        Factors.tranquility += sign * 1
        Factors.cut()

    def control_travel(self):
        self.travel = not self.travel
        sign = 1 if self.travel else -1
        Factors.morale += sign * 1
        Factors.popularity += sign * 1
        Factors.tranquility += sign * 1
        Factors.distance += sign * -1
        Factors.cut()

    def control_schools(self):
        self.schools = not self.schools
        sign = 1 if self.schools else -1
        Factors.morale += sign * 1
        Factors.popularity += sign * 1
        Factors.tranquility += sign * 1
        Factors.distance += sign * -1
        Factors.cut()

    def control_universities(self):
        self.universities = not self.universities
        sign = 1 if self.universities else -1
        Factors.popularity += sign * 1
        Factors.tranquility += sign * 1
        Factors.distance += sign * -2
        Factors.cut()

    def control_homeoffice(self):
        self.homeoffice = not self.homeoffice
        sign = 1 if self.homeoffice else -1
        Factors.morale += sign * 1
        Factors.popularity += sign * 1
        Factors.distance += sign * 1
        Factors.cut()

    def control_curfew(self):
        self.curfew = not self.curfew
        sign = 1 if self.curfew else -1
        Factors.morale += sign * -1
        Factors.safety += sign * -1
        Factors.tranquility += sign * -1
        Factors.distance += sign * 1
        Factors.cut()

    def control_parks(self):
        self.parks = not self.parks
        sign = 1 if self.parks else -1
        Factors.morale += sign * 1
        Factors.cut()

    def control_assemblies(self):
        self.assemblies = not self.assemblies
        sign = 1 if self.assemblies else -1
        Factors.morale += sign * 1
        Factors.tranquility += sign * 1
        Factors.distance += sign * -1
        Factors.cut()

    def control_quarantine(self):
        pass
