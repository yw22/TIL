# 소수 [2부터 X-1까지 모두 나눠서 X가 소수인지 판별하는 문제 2]
m = int(input())
n = int(input())
arr = list()

for i in range(m,n + 1):
  flag = True

  if i == 1:
    continue

  if i > 2:
    for j in range(2, int(i ** 0.5) + 1):
      if i % j == 0:
        flag = False 
        break
  if flag:
    arr.append(i)

if arr:
  print(f'{sum(arr)}\n{min(arr)}')
else:
  print(-1)
    
      
    
    
