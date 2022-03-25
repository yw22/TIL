# 문자열 반복 [각 문자를 반복하여 출력하는 문제]

a = int(input())
for i in range(a):
  x = input()
  print(x)
  for j in x[2:]:
    print(j * int(x[0]), end = '')
  print()