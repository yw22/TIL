# OX퀴즈 [OX 퀴즈의 결과를 일차원 배열로 입력받아 점수를 계산하는 문제]

t = int(input())
for i in range(t):
  score = 0
  sum = 0
  arr = list(input())
  for j in arr:
    if j == 'O':
      score += 1
      sum += score
    else:
      score = 0
  print(sum)