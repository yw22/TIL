# 평균은 넘겠지 [과연 그럴까요??]

import sys

# 테스트 케이스 입력
t = int(input())

for i in range(t):
  # 학생 수와 점수 입력
  arr = list(map(int, sys.stdin.readline().split()))
  # 전체 평균 구하기
  avg = sum(arr[1:]) / arr[0]
  # 평균보다 높은 사람 수 구하기
  count = 0
  for j in range(1, len(arr)):
    if arr[j] > avg:
      count += 1
  print(f"{round((count / arr[0]) * 100, 3):.3f}%")