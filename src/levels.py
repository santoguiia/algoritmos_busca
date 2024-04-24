# level 1
class Level1:
    @staticmethod
    def difficulty_level():
        return (17, 26, 20, 19, 31)

    @staticmethod
    def is_goal(state):
        return all(21 <= pos <= 25 for pos in state)

# level 2
class Level2:
    @staticmethod
    def difficulty_level():
        return (20, 20, 22, 24, 21)

    @staticmethod
    def is_goal(state):
        return all(21 <= pos <= 23 for pos in state)
