# A + B -4 [입력이 끝날 때까지(EOF) A+B를 출력하는 문제]
import sys

while True:
  try:
    a, b = map(int, sys.stdin.readline().split())
    print(a + b)
  except:
    break