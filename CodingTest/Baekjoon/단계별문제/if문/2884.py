# 알람 시계 - 시간 계산 문제

h ,m = map(int, input().split(' '))

time = h * 60 + m

if time < 45:
  time = 24 * 60 + time - 45
else:
  time -= 45

print(f'{time // 60} {time % 60}')