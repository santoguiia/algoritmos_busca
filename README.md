# Elevators Logic

Este projeto tem como objetivo implementar algoritmos de busca em um cenário do problema da lógica dos elevadores. O problema consiste em encontrar uma sequência de ações que leve os elevadores a pararem em determinados andares, de acordo com um estado inicial e um estado objetivo.


O objetivo principal consiste em abrir os cinco elevadores, cada um contendo uma pessoa, e liberá-las. No entanto, os elevadores só irão se abrir se todos estiverem estacionados em algum andar entre o 21 e o 25, no nível 1 do jogo, ou entre o 21 e o 23, no nível 2. No nível 1, os elevadores começam em andares diferentes: 17, 26, 20, 19 e 31. Já no nível 2, suas posições iniciais são: 20, 20, 22, 24 e 21.

## Algoritmos Implementados

Foram implementados os seguintes algoritmos de busca:

- Busca em Largura (BFS): Explora todos os nós em um mesmo nível antes de avançar para o próximo nível.
- Busca em Profundidade (DFS): Explora um ramo do grafo até encontrar um estado objetivo ou atingir um limite de profundidade.
- Busca em Profundidade Iterativa (IDDFS): Combina a estratégia de busca em profundidade com a busca em largura, aumentando gradualmente o limite de profundidade.
- Busca A*: Utiliza uma função heurística para estimar o custo do caminho até o estado objetivo, combinando o custo do caminho percorrido até o momento com a estimativa do custo restante.
