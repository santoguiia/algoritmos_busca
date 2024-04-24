# best-first search algorithm that uses a heuristic to determine the order in which nodes are expanded

import heapq

def a_star_search(initial_state):
    frontier = []
    heapq.heappush(frontier, (heuristic(initial_state), initial_state, 0))
    explored = set()
    
    while frontier:
        _, current_state, current_cost = heapq.heappop(frontier)
        
        if is_goal(current_state):
            return current_state, current_cost
        
        if current_state not in explored:
            explored.add(current_state)
            successors = get_successors(current_state)
            
            for state in successors:
                if state not in explored:
                    cost = current_cost + 1  # Uniform cost
                    heapq.heappush(frontier, (cost + heuristic(state), state, cost))
                    
    return None, None  # No solution found

# Initial state with the elevators stopped on floors
initial_state = (17, 26, 20, 19, 31)
a_star_search(initial_state)
