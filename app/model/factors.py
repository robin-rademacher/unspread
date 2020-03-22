# -5 := bad || +5 := good
class Factors:
    factors = [
        {"id": 1, "name": "reagents", "value": 1, "previous": 1},
        {"id": 2, "name": "protective_clothing", "value": 1, "previous": 1},
        {"id": 3, "name": "medical_personnel", "value": -3, "previous": -3},
        {"id": 4, "name": "morale", "value": 0, "previous": 0},
        {"id": 5, "name": "capacity_hospitals", "value": 1, "previous": 1},
        {"id": 6, "name": "safety", "value": 3, "previous": 3},
        {"id": 7, "name": "popularity", "value": 0, "previous": 0},
        {"id": 8, "name": "tranquility", "value": 0, "previous": 0},
        {"id": 9, "name": "distance", "value": -2, "previous": -2}
    ]

    @staticmethod
    def get(name):
        for factor in Factors.factors:
            if name == factor["name"]:
                return factor["value"]

    @staticmethod
    def get_previous(name):
        for factor in Factors.factors:
            if name == factor["name"]:
                return factor["previous"]

    @staticmethod
    def cut():
        for factor in Factors.factors:
            if factor["value"] < -5:
                factor["value"] = -5
            if factor["value"] > 5:
                factor["value"] = 5

    @staticmethod
    def apply(changes, sign):
        for i, factor in enumerate(Factors.factors):
            factor["value"] += sign * changes[i]
        Factors.cut()

    @staticmethod
    def save():
        for factor in Factors.factors:
            factor["previous"] = factor["value"]
