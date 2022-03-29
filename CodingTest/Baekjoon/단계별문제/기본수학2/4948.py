# 베르트랑 공준 [소수 응용 문제 1]

arr = [True] * ((123456 * 2) + 1)
arr[1] = False
for i in range(2, int(len(arr) ** 0.5) + 1):
  if arr[i] == True:
    for j in range(i * 2, len(arr), i):
      arr[j] = False
while True:
  n = int(input())
  if n == 0:
    break
  print(arr[n + 1 : (2 * n) + 1].count(True))



  