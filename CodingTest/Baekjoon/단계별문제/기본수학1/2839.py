# 설탕 배달 [5와 3을 최소 횟수로 합하여 N을 만드는 문제]

n = int(input())
cnt = 0
while True:
  if n % 5 == 0:
    print(n // 5 + cnt)
    break
  else: 
    n -= 3
    cnt += 1
  if n < 0:
    print(-1)
    break
