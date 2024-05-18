from collections import deque

def bfs_search(initial_state):
    frontier = deque([(initial_state, 0)])
    explored = set()

    while frontier:
        current_state, current_cost = frontier.popleft()

        if is_goal(current_state):
            return current_state, current_cost

        if current_state not in explored:
            explored.add(current_state)
            successors = get_successors(current_state)

            for state in successors:
                if state not in explored:
                    cost = current_cost + 1
                    frontier.append((state, cost))

    return None, None

bfs_search(initial_state)