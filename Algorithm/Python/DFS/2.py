# 음료수 얼려 먹기

'''
  N * M 크기의 얼음 틀이 있습니다. 구멍이 뚫려 있는 부분은 0, 칸막이가 존재하는 부분은 1로 표시됩니다.
  구멍이 뚫려 있는 부분끼리 상, 하, 좌, 우로 붙어 있는 경우 서로 연결되어 있는 것으로 간주합니다.
  이때 얼음 틀의 모양이 주어졌을 때 생성되는 총 아이스크림의 개수를 구하는 프로그램을 작성하세요. 
  다음 4 * 5 얼음 틀 예시에서는 아이스크림이 총 3개 생성됩니다.

  [입력]
  4 5
  00110
  00011
  11111
  00000

  [출력]
  3
'''


# DFS를 활용하는 알고리즘은 다음과 같습니다.
# 1. 특정한 지점의 주변 상, 하 ,좌, 우를 살펴본 뒤에 주변 지점 중에서 값이 '0' 이면서 아직 방문하지 않은 지점이 있다면 해당 지점을 방문합니다. 
# 2. 방문한 지점에서 다시 상, 하, 좌, 우를 살펴보면서 방문을 진행하는 과정을 반복하면, 연결된 모든 지점을 방문할 수 있습니다.
# 3. 모든 노드에 대하여 1 ~ 2번의 과정을 반복하며, 방문하지 않은 지점의 수를 카운트 합니다.

from unittest import result

# DFS로 특정 노드를 방문하고 연결된 모든 노드들도 방문
def dfs(x, y):
  # 주어진 범위를 벗어나는 경우에는 즉시 종료
  if x <= -1 or x >= n or y <= -1 or y >= m:
    return False
  # 현재 노드를 아직 방문하지 않았다면
  if graph[x][y] == 0:
    # 해당 노드 방문 처리
    graph[x][y] = 1
    # 상, 하, 좌, 우의 위치들도 모드 재귀적으로 호출
    dfs(x - 1, y)
    dfs(x, y - 1)
    dfs(x + 1, y)
    dfs(x, y + 1)
    return True
  return False

n, m = map(int, input().split())
graph = list()
for i in range(n):
  graph.append(list(map(int, input())))

result = 0
for i in range(n):
  for j in range(m):
    if dfs(i, j) == True:
      result += 1

print(result)
