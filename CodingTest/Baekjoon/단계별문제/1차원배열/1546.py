# 평균 [평균을 조작하는 문제]

a = int(input())
x = list(map(int,input().split()))
max_num = max(x)

for i in range(a):
  x[i] = x[i] / max_num * 100

print(sum(x) / a)