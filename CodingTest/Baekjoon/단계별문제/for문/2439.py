# 별찍기 - 2 [별을 찍는 문제2]

n = int(input())

for i in range(n):
  for j in range(n - i, 0, -1):
    print(" ", end = '')
  for k in range(i + 1):
    print("*", end = '')
  print()

# rjust를 활용한 방법
# for i in range(1, n + 1):
#     print(('*' * i).rjust(n))