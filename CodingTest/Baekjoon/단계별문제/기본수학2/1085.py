# 직사각형에서 탈출 [ 직사각형과 점의 거리를 구하는 문제 ]

x, y, w, h = map(int, input().split())
a = [x, y, w - x, h - y]
print(min(a))