# 분수찾기 [분수의 순서에서 규칙을 찾는 문제]

x = int(input())
a = 0

while x > a:
  x -= a
  a += 1

if a % 2 == 0:
  print(f'{x}/{a - x + 1}')
else:
  print(f'{a - x + 1}/{x}')
