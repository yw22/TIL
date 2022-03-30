# 팩토리얼 [팩토리얼은 단순 for문으로도 구할 수 있지만, 학습을 위해 재귀를 써 봅시다.]

def solution(n):
  if n == 0:
    return 1
  return n * solution(n - 1)

n = int(input())
print(solution(n))