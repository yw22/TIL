# 다이얼 [규칙에 따라 문자에 대응하는 수를 출력하는 문제]

a = input()
cnt = 0
for i in a:
  if i >= 'W':
    cnt += 10
  elif i >= 'T':
    cnt += 9
  elif i >= 'P':
    cnt += 8
  elif i >= 'M':
    cnt += 7
  elif i >= 'J':
    cnt += 6
  elif i >= 'G':
    cnt += 5
  elif i >= 'D':
    cnt += 4
  elif i >= 'A':
    cnt += 3

print(cnt)