# 부녀회장이 될테야 [층과 거주자 수의 규칙을 찾는 문제]

# 재귀적으로 풀이 # 시간초과
# def sol(k, n):
#   if n == 2:
#     return k + 2
#   elif k == 0:
#     return n
#   else: 
#     return sol(k - 1, n) + sol(k, n - 1)

# t = int(input())

# for i in range(t):
#   k = int(input())
#   n = int(input())
#   if n == 1:
#     print(1)
#   else:
#     print(sol(k,n))


t = int(input())
arr = [[0]*14 for i in range(14)]
sum = 0

for i in range(14):
  for j in range(14):
    if i == 0:
      sum += 1
      arr[i][j] = sum
    elif j == 0:
      arr[i][j] = 1
    else:
      arr[i][j] = arr[i][j - 1] + arr[i - 1][j]
      
for i in range(t):
  k = int(input())
  n = int(input())
  print(arr[k][n - 1])
  