from factors import Factors


class Measures:
    borders = True
    entry = True
    travel = True
    schools = True

    def control_borders():  # nach x Tagen
        if Factors.morale > -5:
            Factors.morale -= 1
        if Factors.tranquility > -5:
            Factors.tranquility -= 1

    def restrict_entry():
        if Factors.tranquility > -5:
            Factors.tranquility -= 1

    def ban_travel():
        if Factors.morale > -5:
            Factors.morale -= 1
        if Factors.popularity > -5:
            Factors.popularity -= 1
        if Factors.tranquility > -5:
            Factors.tranquility -= 1
        if Factors.distance < 5:
            Factors.distance += 1

    def close_schools():
        if Factors.morale > -5:
            Factors.morale -= 1
        if Factors.popularity > -5:
            Factors.popularity -= 1
        if Factors.tranquility > -5:
            Factors.tranquility -= 1
        if Factors.distance < 5:
            Factors.distance += 1

    def close_universities():
        pass
