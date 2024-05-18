# Heuristica 1 - Distancia minima de cada posicao ate o target mais proximo
def heuristic1(state):
    return sum(min(abs(pos - target) for target in range(21, 26)) for pos in state)

# Heuristica 2 - Uso de energia
def heuristic2(state):
    energy_cost_per_floor = 0.1  # Define o custo de energia por andar percorrido (em kWh)
    target_floors = range(21, 26)  # Andares de destino possíveis

    total_energy_cost = 0
    for pos in state:
        for target in target_floors:
            total_energy_cost += abs(pos - target) * energy_cost_per_floor

    return total_energy_cost

# Heurística 3 - Eficiência de Uso dos Elevadores:
def heuristic3(state):
    efficiency_score = 0
    for floor in state:
        efficiency_score += abs(floor - 25)  # Avalia a distância de cada elevador ao andar de destino mais frequente (25)
    return efficiency_score
