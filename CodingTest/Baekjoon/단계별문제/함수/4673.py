# 셀프 넘버 [함수 d를 정의하여 문제를 해결해 봅시다.]

def solve(n):
  return n // 1000 + n % 1000 // 100 + n % 100 // 10 + n % 10 + n


a = [0] * 10100
for i in range(10000):
  a[solve(i + 1)] += 1

for i in range(1, 10001):
  if a[i] < 1:
    print(i)