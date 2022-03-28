# 소수 찾기 [2부터 X-1까지 모두 나눠서 X가 소수인지 판별하는 문제 1]

t = int(input())
arr = list(map(int, input().split()))
cnt = 0
for i in range(t):
  if arr[i] == 2:
    cnt += 1
  if arr[i] > 2:
    cnt += 1
    for j in range(2, (arr[i] // 2) + 2):
      if arr[i] % j == 0:
        cnt -= 1
        break
      
print(cnt)
