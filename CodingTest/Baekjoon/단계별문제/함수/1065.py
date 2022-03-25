# 한수 [X가 한수인지 판별하는 함수를 정의하여 문제를 해결해 봅시다.]

def solve(n) -> int:
  # String을 활용한 방법
  # a = str(n)
  # a[0],a[1],a[2]로 활용가능
  a = n // 100
  b = n % 100 // 10
  c = n % 10
  if b - a == c - b:
    return 1
  else:
    return 0

n = int(input())
count = 0

if n > 99:
  for i in range(100, n + 1):
    if solve(i) == 1:
      count += 1
  print(count + 99)
else:
  print(n)
