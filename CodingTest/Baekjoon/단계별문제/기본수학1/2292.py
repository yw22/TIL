# 벌집 [벌집이 형성되는 규칙에 따라 벌집의 위치를 구하는 문제]

n = int(input())
a = 1
cnt = 1
if n == 1:
  print(1)
else:
  while n > a:
    a += (6 * cnt)
    cnt += 1
  print(cnt)