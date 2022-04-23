import random

# n개의 개수만큼 로또번호 생성
def random_numbers(n):
  lotto_numbers = []
  while True:
    # 1 ~ 45 중에 랜덤한 자연수 뽑기
    random_number  = random.randint(1, 45)
    # 랜덤한 숫자가 lotto_numbers안에 없으면(중복이 되지않으면) lotto_numbers에 추가
    if lotto_numbers.count(random_number) == 0:
        lotto_numbers.append(random_number)
    # lotto_numbers의 개수가 n과 같다면 반복문 나가기
    if len(lotto_numbers) == n:
        break
  return lotto_numbers

while True:
  # 로또 번호 개수 입력받기
  n = int(input("생성할 로또번호의 개수를 입력해주세요 : "))
  lotto_numbers_str = ''

  # list로 받기
  lotto_numbers_arr = random_numbers(n)

  # 로또 번호를 오름차순으로 정리하기
  lotto_numbers_arr.sort()

  # list에서 str로 변경
  for i in lotto_numbers_arr:
    lotto_numbers_str += str(i) + ' '

  print("생성된 로또번호 : " + lotto_numbers_str)


  # 처음부터 다시할지 묻는 기능 구현
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



