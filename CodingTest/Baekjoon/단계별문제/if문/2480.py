# 주사위 세개 - 조건에 따라 상금을 계산하는 문제

a = list(map(int, input().split()))

if a[0] == a[1] == a[2]:
  print(10000 + (a[0] * 1000))
elif a[0] == a[1] or a[0] == a[2]:
  print(1000 + (100 * a[0]))
elif a[1] == a[2]:
  print(1000 + (100 * a[1]))
else:
  print(max(a) * 100)