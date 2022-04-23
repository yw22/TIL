import random

def calculate(a, b, x):
  if x == 0:
    return a + b
  elif x == 1:
    return a - b
  elif x == 2:
    return a * b
  else:
    return int(a / b)

operate = ['+', '-', 'x', '/']
score = 0
result = 0
  
while True:
  for _ in range(5):
      num1 = random.randint(1, 19)
      num2 = random.randint(1, 19)
      x = random.randint(0, 3)
      print(f'{num1} {operate[x]} {num2} 의 답을 입력해주세요. (단 나누기는 몫만 입력해야합니다)')
      anwser = int(input("정답 : "))
      result = calculate(num1, num2, x)

      if anwser == result:
          score += 1
          print("정답입니다. 현재 score : " + str(score))

      else:
          print(f"오답입니다. 정답은 {result} 입니다. 현재 score : " + str(score))

  print(f"테스트가 끝났습니다. \n당신의 점수는 {score}점 입니다.")

  answer = input("다시 시작하기 (y,n) : ")
  while True:
    if answer != 'y' and answer != 'n':
      answer = input("y(그렇다) 또는 n(아니다) 중에 선택해주세요. : ")
      continue
    else:
      break

  if answer == 'y':
    print()
    score = 0
    continue
  else:
    break

print("프로그램이 종료되었습니다.")



5 / 5 = 1