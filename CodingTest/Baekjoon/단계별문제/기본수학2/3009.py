# 네 번째 점 [직사각형을 완성하는 문제]

def check(a, b, c):
  if a == b:
    return c
  elif b == c:
    return a
  else:
    return b

a = list(map(int, input().split()))
b = list(map(int, input().split()))
c = list(map(int, input().split()))
print(check(a[0], b[0], c[0]), check(a[1], b[1], c[1]))
