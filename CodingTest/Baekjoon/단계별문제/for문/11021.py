# A + B - 7 [A+B를 조금 더 아름답게 출력하는 문제]

t = int(input())
for i in range(t):
  a, b = map(int, input().split())
  print(f'Case #{i}: {a + b}')