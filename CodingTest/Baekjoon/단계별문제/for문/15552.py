# 빠른 A + B [빠르게 입력받고 출력하는 문제]

import sys

a = int(sys.stdin.readline())

for i in range(a):
  a, b = map(int, sys.stdin.readline().split())
  print(a + b)