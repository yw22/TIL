# X보다 작은 수 [for문과 if문을 같이 쓰는 문제]

from re import S


a, b = map(int, input().split())
arr = list(map(int, input().split()))

for i in arr:
  if i < b:
    print(i, end = ' ')