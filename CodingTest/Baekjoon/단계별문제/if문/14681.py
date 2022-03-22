# 사분면 고르기 - 점이 어느 사분면에 있는지 알아내는 문제

x = int(input())
y = int(input())

if x > 0 and y > 0:
  print(1)
elif x < 0 and y > 0:
  print(2)
elif x < 0 and y < 0:
  print(3)
else:
  print(4)