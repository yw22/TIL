# 왕실의 나이트

'''
  행복 왕국의 왕실 정원은 체스판과 같은 8 * 8 좌표 평면입니다. 왕실 정원의 특정한 한 칸에 나이트가 서 있습니다.
  나이트는 매우 충성스러운 신하로서 매일 무술을 연마합니다.
  나이트는 말을 타고 있기 때문에 이동을 할 때는 L자 형태로만 이동할 수 있으며 정원 밖으로는 나갈 수 없습니다.
  나이트는 특정 위치에서 다음과 같은 2가지 경우로 이동할 수 있습니다.
  1. 수평으로 두칸 이동한뒤 수직으로 한칸 이동하기
  2. 수직으로 두칸 이동한뒤 수평으로 한칸 이동하기
  이처럼 8 * 8 좌표 평면상에서 나이트의 위치가 주어졌을 때 나이트가 이동할 수 있는 경우의 수를 출력하는 프로그램을 작성하세요.
  왕실의 정원에서 행 위치를 표현 할 때는 1부터 8로 표현하며, 열 위치를 표현할 때는 a부터 h로 표현 합니다.
  ex) c2에 있을 때 이동할 수 있는 경우의 수는 6가지입니다.
  ex) a1에 있을 때 이동할 수 있는 경우의 수는 2가지입니다.
'''

# w = input()
# x , y = 1, 1
# cnt = 0

# step = [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]

# for i in range(1, 9):
#   if int(w[1]) == i:
#     y = i
# for i in range(97, 105):
#   if w[0] == chr(i):
#     x = i - 96

# for steps in step:
#   dx = steps[0]
#   dy = steps[1]
#   if 0 < x + dx < 9 and 0 < y + dy <9:
#     cnt += 1
  

# print(cnt)

input_data = input()
row = int(input_data[1])
column = int(ord(input_data[0])) - int(ord('a')) + 1

step = [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]

cnt = 0

for steps in step:
  next_row = row + steps[0]
  next_column = column + steps[1]
  if 0 < next_row < 9 and 0 < next_column < 9:
    cnt += 1

print(cnt)