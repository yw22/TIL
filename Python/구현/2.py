# 시각

'''
  정수 N이 입력되면 00시 00분 00초부터 N시 59분 59초까지의 모든 시각 중에서 3이 하나라도 포함되는 모든 경우의 수를
  구하는 프로그램을 작성하세요. 예를 들어 1을 입력했을 때 다음은 3이 하나라도 포함되어 있으므로 세어야 하는 시각입니다.
  00시 00분 03초
  00시 13분 30초
  반면에 다음은 3이 하나도 포함되어 있지 않으므로 세면 안되는 시각입니다.
  00시 02분 55초
  01시 27분 45초

'''


# n = int(input())
# cnt = 0
# hour, min, sec = 0, 0, 0
# for i in range(1, (n + 1) * 3600):
#   hour = i // 3600
#   min = i // 60 - (hour * 60)
#   sec = i % 60
#   if str(hour).find("3") != -1:
#     cnt += 1
#   elif str(min).find("3") != -1:
#     cnt += 1
#   elif str(sec).find("3") != -1:
#     cnt += 1

# print(cnt)

h = int(input())

cnt = 0
for i in range(h + 1):
  for min in range(60):
    for sec in range(60):
      # 매 시각 안에 '3'이 포함되어 있다면 카운트 증가
      if '3' in str(i) + str(min) + str(sec):
        cnt += 1

print(cnt)