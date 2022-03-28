# ACM 호텔 [호텔 방 번호의 규칙을 찾아 출력하는 문제]

t = int(input())

for i in range(t):
  h, w, n = map(int, input().split())
  if n % h == 0 :
    w = n // h
    a = h
  else:
    w = n // h + 1
    a = n % h
  if w < 10:
    print(f'{a}0{w}')
  else:
    print(f'{a}{w}')