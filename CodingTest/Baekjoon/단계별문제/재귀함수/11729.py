# 하노이 탑 이동 순서 [재귀적인 패턴을 재귀함수로 찍는 문제 2]

def hanoi(n, 시작, 보조, 목표):
  if n == 1:
    print(시작, 목표)
    return
  hanoi(n - 1, 시작, 목표, 보조)
  print(시작, 목표)
  hanoi(n - 1, 보조, 시작, 목표)


  

n = int(input())
print((2 ** n) - 1)
hanoi(n, 1, 2, 3)