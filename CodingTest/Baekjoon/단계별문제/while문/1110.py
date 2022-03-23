# 더하기 사이클 [원래 수로 돌아올 때까지 연산을 반복하는 문제]

num = int(input())
tmp = num
count = 0

while True:
  a = tmp // 10
  b = tmp % 10
  tmp = (b * 10) + ((a + b) % 10)
  count += 1
  if tmp == num:
    break
print(count)