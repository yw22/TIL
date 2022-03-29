# 골드바흐의 추측 [소수 응용 문제 2]
max_n = 10000
arr = list(range(max_n + 1))
arr[1] = 0
for i in range(2, 101):
  if arr[i] != 0:
    for j in range(i * 2, max_n + 1, i):
      arr[j] = 0

t = int(input())
for _ in range(t):
  n = int(input())
  for i in range(n // 2 + 1):
    if arr[(n // 2) + i] != 0 and arr[(n // 2) - i] != 0:
      print((n // 2) - i, (n // 2) + i)
      break
        


