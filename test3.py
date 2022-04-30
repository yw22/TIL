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

# print(random_number)

# 사용자가 원할때까지 반복실행
while True:
    # 10번의 기회 제공
  for count in range(10):
      # 스트라이크
      S = 0
      # 볼
      B = 0
      # 사용자 숫자
      user_number = list(map(int, input("숫자를 입력해 주세요 : ")))
      # 사용자와 컴퓨터 숫자가 맞으면 홈런
      if random_number == user_number:
          print("Bingo")
          break
      # 사용자와 컴퓨터의 숫자를 비교하여 ball과 strike 체크
      for i in range(3):
          for j in range(3):
              if random_number[i] == user_number[j]:
                  if i == j:
                      S += 1
                      break
                  else:
                      B += 1
                      break
      # 맞는 숫자가 하나도 없으면 out
      if S == 0 and B == 0:
          print('Out')
      # 스트라이크와 볼의 갯수표현
      else:
          print(f'{S}S {B}B')
      
      # 몇번남았는지 보여주기
      print(f"기회가 {9 - count}번 남았습니다.")
      # 만약 10번의 기회를 다 사용해도 못맞추면 틀렷습니다 하고 알려주기
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