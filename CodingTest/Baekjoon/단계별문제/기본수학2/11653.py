# 소인수분해 [ N을 소인수분해하는 문제 ]

n = int(input())
max = int(n ** 0.5)
i = 2
while n > 1:
  if i > max:
    print(n)
    break
  if n % i == 0:
    n //= i
    print(i)
  else:
    i += 1
