# 터렛 [두 원의 교점의 개수를 구하는 문제]

t = int(input())
for _ in range(t):
  x1,y1,r1,x2,y2,r2 = map(int, input().split())
  d = (abs(x1 - x2) ** 2 + abs(y1 - y2) ** 2) ** 0.5

  if d == 0 and r1 == r2:
    print(-1)
  elif d == r1 + r2 or d == abs(r2 - r1):
    print(1)
  elif abs(r2 - r1) < d < r1 + r2:
    print(2)
  else:
    print(-0)