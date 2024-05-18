from itertools import combinations

def result(state, action):
    new_state = list(state)
    for i, a in enumerate(action):
        new_state[i] = new_positions(state[i], a)
    return tuple(new_state)

def cost(state, action):
    return 1

def goal_test(state):
    return is_goal(state)

def path_cost(c, state1, action, state2):
    return c + cost(state1, action)

def h(node):
    return heuristic(node.state)

def is_valid(state):
    return all(1 <= pos <= 49 for pos in state) and len(set(state)) == 5

def new_positions(position, action):
    new_position = position + action
    if 1 <= new_position <= 49:
        return new_position
    return position

def get_successors(state):
    successors = []
    actions = [(8, 8), (-13, -13), (8, -13), (-13, 8)]
    for (e1, e2) in combinations(range(5), 2):
        for action in actions:
            new_state = list(state)
            new_state[e1] = new_positions(state[e1], action[0])
            new_state[e2] = new_positions(state[e2], action[1])
            if new_state[e1] != state[e1] or new_state[e2] != state[e2]:
                successors.append(tuple(new_state))
    return successors

def print_solution(solution):
    for node in solution:
        print(node.state)