from model.factors import Factors


class Measures:
    measures = [
        {"name": "control_borders", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, 0, -1, 0]},
        {"name": "restrict_entry", "active": False,
            "changes": [0, 0, 0, 0, 0, 0, 0, -1, 0]},
        {"name": "ban_travel", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, -1, -1, 1]},
        {"name": "close_schools", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, 0, -1, 0]},
        {"name": "close_universities", "active": False,
            "changes": [0, 0, 0, 0, 0, 0, -1, -1, 2]},
        {"name": "allow_home_office", "active": False,
            "changes": [0, 0, 0, 1, 0, 0, 1, 0, 1]},
        {"name": "partial_curfew", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, -1, -1, 1]},
        {"name": "close_parks", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, 0, 0, 0]},
        {"name": "restrict_assemblies", "active": False,
            "changes": [0, 0, 0, -1, 0, 0, 0, -1, 1]},
        {"name": "total_curfew", "active": False,
            "changes": [0, 0, 0, -2, 0, 0, -1, -1, 1]},
        {"name": "govern_online", "active": False,
            "changes": [0, 0, 0, 0, 0, 0, 1, 0, 1]},
        {"name": "quarantine", "active": False,
            "changes": [0, -1, -1, 0, 1, 0, 0, 1, 1]},
        {"name": "give_speech", "oneshot": True,
            "changes": [0, 0, 0, 2, 0, 0, 1, 2, 0]},
        {"name": "install_driveins", "active": False,
            "changes": [-2, -1, -1, 0, 0, 0, 0, 1, 0]},
        {"name": "recruit", "oneshot": True,
            "changes": [0, -1, 3, 1, 2, 2, 0, 1, 0]},
        {"name": "intervene", "active": False,
            "changes": [0, -1, 0, 0, 0, 1, 0, 1, 0]},
        {"name": "collect_protectives", "active": False,
            "changes": [0, 3, 0, 1, 0, 0, 0, 0, 0]},
        {"name": "define_rules", "active": False,
         "changes": [0, 0, 0, 0, 0, 0, 0, 0, 1]},
        {"name": "use_media", "active": False,
            "changes": [0, 0, 0, 2, 0, 0, 2, -1, 0]},
        {"name": "subventions", "active": False,
         "changes": [0, 0, 0, 1, 0, 1, 0, 3, 0]},
        {"name": "develop_cure", "active": False,
         "changes": [0, 0, 0, 2, 0, 0, 1, 1, 0]},
        {"name": "cultivate", "active": False,
            "changes": [0, 0, 0, 1, 0, 0, 1, 2, 0]},
        {"name": "declare_emergency", "active": False,
         "changes": [0, 0, 0, 0, 0, 0, -1, -2, 1]},
        {"name": "take_temperature", "active": False,
         "changes": [0, 0, -1, -1, 0, 0, 0, 0, 0]},
        {"name": "disinfect", "active": False,
         "changes": [0, -1, 0, 0, 0, 0, 1, 0, 0]},
        {"name": "delay_surgeries", "active": False,
            "changes": [0, 0, 0, 0, 3, 0, 0, 0, 0]},
        {"name": "provide_reagents", "active": False,
         "changes": [3, 0, 0, 0, 0, 0, 1, 0, 0]},
    ]

    @staticmethod
    def execute_measure(name):
        for measure in Measures.measures:
            if name == measure["name"]:
                selected_measure = measure
                break
        selected_measure["active"] = not selected_measure["active"]
        sign = 1 if selected_measure["active"] else -1
        Factors.apply(selected_measure["changes"], sign)
