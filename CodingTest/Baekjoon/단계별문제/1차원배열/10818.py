# 최대, 최소 [최댓값과 최솟값을 찾는 문제]
import sys
n = int(input())
x = list(map(int, sys.stdin.readline().split()))
print(min(x), max(x))