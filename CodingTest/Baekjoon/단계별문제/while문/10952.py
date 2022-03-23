# A + B -5 [(0, 0)이 들어올 때까지 A+B를 출력하는 문제]

import sys

while True:
  a, b = map(int, sys.stdin.readline().split())
  if a == 0 and b == 0:
    break
  print(a + b)