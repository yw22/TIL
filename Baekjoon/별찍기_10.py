# 2447번

# 재귀적인 패턴으로 별을 찍어 보자. N이 3의 거듭제곱(3, 9, 27, ...)이라고 할 때, 크기 N의 패턴은 N×N 정사각형 모양이다.
# 크기 3의 패턴은 가운데에 공백이 있고, 가운데를 제외한 모든 칸에 별이 하나씩 있는 패턴이다.
# ***
# * *
# ***
# N이 3보다 클 경우, 크기 N의 패턴은 공백으로 채워진 가운데의 (N/3)×(N/3) 정사각형을 크기 N/3의 패턴으로 둘러싼 형태이다. 

import time

start_time = time.time()
# 리스트를 이용한 방법
def draw_star(n):
  global Map

  #  3 * 3 정사각형의 별 모향 만들기
  if n == 3:
    Map[0][:3] = Map[2][:3] = [1] * 3
    Map[1][:3] = [1, 0, 1]
    return

  a = n // 3
  draw_star(n // 3)
  for i in range(3):
    for j in range(3):
      if i == 1 and j == 1:
        continue
      for k in range(a):
        Map[a * i + k][a * j : a * (j + 1)] = Map[k][:a]

n = int(input())

Map = [[0 for i in range(n)] for i in range(n)]

draw_star(n)

for i in Map:
  for j in i:
    if j:
      print('*', end = '')
    else:
      print(' ', end = '')
  print()



# 규칙을 이용하여 구한 방법 -> 시간초과

# def draw_star(i, j ,n):
#   if int(i / n) % 3 == 1 and int(j / n) % 3 == 1:
#     print(" ", end = '')
#   elif int(n / 3) == 0:
#     print("*", end = '')
#   else:
#     draw_star(i, j, n / 3)

# n = int(input())
# for i in range(n):
#   for j in range(n):
#     draw_star(i, j, n)
#   print()
end_time = time.time()
print(end_time - start_time)