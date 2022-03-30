# 피보나치 수 [피보나치 수 역시 단순 for문으로도 구할 수 있지만, 학습을 위해 재귀를 써 봅시다.]

def solution(n):

  if n == 1 or n == 2:
    return 1
  elif n < 1:
    return 0
  else:
    return solution(n - 1) + solution(n - 2)

n = int(input())
print(solution(n))