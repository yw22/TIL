# 달팽이는 올라가고 싶다 [달팽이의 움직임을 계산하는 문제]

a, b ,v = map(int, input().split())
day = (v - b - 1) // (a - b) + 1
print(day)

