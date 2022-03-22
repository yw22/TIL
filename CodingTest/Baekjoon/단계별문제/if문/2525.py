# 오븐 시계 - 범위가 더 넓은 시간 계산 문제

h ,m = map(int, input().split(' '))
t = int(input())

time = (h * 60) + m + t

if time > 24 * 60:
  time -= (24 * 60)

print(f'{(time // 60) % 24} {time % 60}')