# 최댓값 [최댓값이 어디에 있는지 찾는 문제]

# for문을 이용한 위치찾기
# x = list()
# for i in range(9):
#   x.append(int(input()))
# for i in range(9):
#   if x[i] == max(x):
#     print(max(x))
#     print(i + 1)
#     break

# index함수를 사용하여 위치찾기
import sys

x = list()
for i in range(9):
    x.append(int(sys.stdin.readline()))

print(max(x))
print(x.index(max(x)) + 1)
