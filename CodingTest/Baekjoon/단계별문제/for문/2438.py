# 별찍기 - 1 [별을 찍는 문제1]

a = int(input())
for i in range(1, a + 1):
  for j in range(i):
    print('*', end = '')
  print()


# 좀더 간단하게 간추린다면

# n = int(input())
# for i in range(1, n + 1):
#   print('*' * i)
