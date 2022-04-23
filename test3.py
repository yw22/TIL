import random

random_number = []

# 랜덤한 3자리수 생성
while True:
    x = random.randint(0, 9)
    # x가 random_number에 포함되어있지 않으면 추가 시킨다
    if random_number.count(x) == 0:
        random_number += [x]
    # 3자리가 되면 탈출
    if len(random_number) == 3:
        break

print(random_number)
while True:
  for count in range(10):
      S = 0
      B = 0
      user_number = list(map(int, input("숫자를 입력해 주세요 : ")))
      if random_number == user_number:
          print("Bingo")
          break
      for i in range(3):
          for j in range(3):
              if random_number[i] == user_number[j]:
                  if i == j:
                      S += 1
                      break
                  else:
                      B += 1
                      break
      if S == 0 and B == 0:
          print('Out')
      else:
          print(f'{S}S {B}B')

      print(f"기회가 {9 - count}번 남았습니다.")
      if count == 9:
        print("맞추지 못하셨습니다.")

  answer = input("처음부터 다시 시작하시겠습니까? (y,n) : ")
  while True:
    if answer != 'y' and answer != 'n':
      answer = input("y(그렇다) 또는 n(아니다) 중에 선택해주세요. : ")
      continue
    else:
      break
  if answer == 'y':
    print()
    continue
  else:
    break
      

print("프로그램이 종료되었습니다.")