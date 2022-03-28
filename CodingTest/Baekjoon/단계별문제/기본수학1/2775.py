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
for _ in range(t):
  k = int(input())
  n = int(input())

  arr = [x for x in range(1, n + 1)]
  for i in range(k):
    for j in range(1, n):
      arr[j] += arr[j - 1]
  
  print(arr[-1])
  