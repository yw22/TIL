# 손익분기점 [이익이 발생하는 지점을 찾는 문제]

a, b, c = map(int, input().split())


if (c - b) > 0:
  cnt = a // (c - b)
  print(cnt + 1)
else:
  print(-1)
