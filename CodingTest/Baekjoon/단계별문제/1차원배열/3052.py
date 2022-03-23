# 나머지 [위와 비슷한 문제]

arr = [0] * 42
cnt = 0
for i in range(10):
  a = int(input())
  arr[a % 42] += 1

for i in arr:
  if i != 0:
    cnt += 1
    
print(cnt)