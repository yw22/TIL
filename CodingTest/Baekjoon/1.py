# 4375

# 2와 5로 나누어 떨어지지 않는 정수 n(1 ≤ n ≤ 10000)가 주어졌을 때
# 1로만 이루어진 n의 배수를 찾는 프로그램을 작성하시오.

while True:
  try:
    a = int(input())
  except EOFError: #파일을 빠져나가게 하는 안전장치
    break
  num = "1"

  while True:
    if (int(num) % a != 0):
      num += "1"
    else:
      break  
  print(len(num))
