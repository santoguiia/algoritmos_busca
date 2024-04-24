def dfs_search(initial_state):
    frontier = [(initial_state, 0)]
    explored = set()

    while frontier:
        current_state, current_cost = frontier.pop()

        if is_goal(current_state):
            return current_state, current_cost

        if current_state not in explored:
            explored.add(current_state)
            successors = get_successors(current_state)

            # Reverse the successors to prioritize deeper exploration
            successors.reverse()

            for state in successors:
                if state not in explored:
                    cost = current_cost + 1  # Uniform cost
                    frontier.append((state, cost))

    return None, None  # No solution found

dfs_search(initial_state)
