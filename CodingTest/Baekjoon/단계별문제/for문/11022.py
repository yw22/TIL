# A + B - 8 [A+B를 바로 위 문제보다 더 아름답게 출력하는 문제]

t = int(input())
for i in range(t):
  a, b = map(int, input().split())
  print(f'Case #{i + 1}: {a} + {b} = {a + b}')