# 직각삼각형 [피타고라스의 정리에 대해 배우는 문제]

while True:
  a = list(map(int, input().split()))
  a.sort()

  if a[0] == a[1] == a[2] == 0:
    break
  print('right') if a[0] ** 2 + a[1] ** 2 == a[2] ** 2 else print('wrong')
