# 모험가 길드

'''
  한 마을에 모험가가 N명 있습니다. 모험가 길드에서는 N명의 모험가를 대상으로 '공도포'를 측정했는데,
  '공포도'가 높은 모험가는 쉽게 공포를 느껴 위험 상황에서 제대로 대처할 능력이 떨어집니다.
  모험가 길드장인 동빈이는 모험가 그룹을 안전하게 구성하고자 
  공포도가 X인 모험가는 반드시 X명 이상으로 구성한 모험가 그룹에 참여해야 여행을 떠날 수 잇도록 규정했습니다.
  동빈이는 최대 몇 개의 모험가 그룹을 만들 수 있는지 궁금합니다. 
  N명의 모험가에 대한 정보가 주어 졌을때, 여행을 떠날수 있는 그룹 수의 최댓값을 구하는 프로그램을 작성하세요
'''

'''
  예를 들어 N = 5 이고, 각 모험가의 공포도가 다음과 같다고 가정합시다
  [2, 3, 1, 2, 2]
  이 경우 그룹 1에 공포도가 1, 2, 3인 모험가를 한명씩 넣고, 그룹 2에 공포도가 2인 남은 두명을 넣게 되면 총 2개의 그룹을 만들수 있습니다.
  또한 몇 명의 모험가는 마을에 그대로 남아 있어도 되기 때문에, 모든 모험가를 특정한 그룹에 넣을 필요는 없습니다.
'''

'''
#################내 풀이 ##############33
N = int(input())
hunter = list(map(int,input().split()))
hunter.sort()
cnt = 0
j = 1

for i in range(0, len(hunter)):
  if hunter[i] == j:
    cnt += 1
  else:
    j += 1
  i += (j - 1)

print(cnt - 1)
'''

N = int(input())
hunter = list(map(int,input().split()))
hunter.sort()
cnt = 0 # 현재 그룹에 포함된 모험가의 수
result = 0 # 총 그룹의 수

for i in hunter:
  cnt += 1
  if cnt >= i:
    result += 1
    cnt = 0

print(result)

