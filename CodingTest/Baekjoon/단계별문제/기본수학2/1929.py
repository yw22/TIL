# 소수 구하기 [에라토스테네스의 체로 풀어 폽시다.]

# 내가 풀이한 방법
# m, n = map(int,input().split())
# arr = list()
# for i in range(m, n + 1):
#   flag = True
#   if i < 2:
#     continue
#   else:
#     for j in range(2, int(i ** 0.5) + 1):
#       if i % j == 0:
#         flag = False
#         break
#   if flag:
#     print(i)

m, n = map(int,input().split())
arr = list(range(n + 1))
arr[1] = 0
for i in range(n + 1):
  if arr[i] != 0:
    for j in range(i * 2, n + 1, i):
      arr[j] = 0

for i in range(m, n + 1):
    if arr[i] != 0:
        print(i)
