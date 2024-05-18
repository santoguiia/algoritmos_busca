def iddfs_search(initial_state):
    depth = 0
    while True:
        result, cost = dls_search(initial_state, depth)
        if result:
            return result, cost
        depth += 1

def dls_search(initial_state, depth_limit):
    frontier = deque([(initial_state, 0)])
    explored = set()

    while frontier:
        current_state, current_cost = frontier.pop()

        if is_goal(current_state):
            return current_state, current_cost

        if current_state not in explored and current_cost < depth_limit:
            explored.add(current_state)
            successors = get_successors(current_state)

            for state in successors:
                if state not in explored:
                    cost = current_cost + 1  # Uniform cost
                    frontier.append((state, cost))

    return None, None  # No solution found

iddfs_search(initial_state)
