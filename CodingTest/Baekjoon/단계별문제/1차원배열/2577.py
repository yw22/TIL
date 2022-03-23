# 숫자의 개수 [각 숫자가 몇 번 나왔는지 저장하기 위해 일차원 배열을 만드는 문제]

a, b, c = int(input()), int(input()), int(input())
arr = str(a * b * c)
for i in range(10):
  print(arr.count(str(i)))