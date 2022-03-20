# 파라메트릭 서치

'''
  파라메트릭 서치란 최적화 문제를 결정 문제("예" 혹은 "아니오")로 바꾸어 해결하는 기법입니다.
    예시 : 특정한 조건을 만족하는 가장 알맞은 값을 빠르게 찾는 최적화 문제
  일반적으로 코딩 테스트에서 파라메트릭 서치 문제는 이진탐색을 이용하여 해결할 수 있습니다.
'''

# 떡볶이 떡 만들기 문제

'''
  오늘 동빈이는 여행 가신 부모님을 대신해서 떡집 일을 하기로 했습니다.
  오늘은 떡볶이 떡을 만드는 날입니다.
  동빈이네 떡볶이 떡은 재밌게도 떡볶이 떡의 길이가 일정하지 않습니다.
  대신에 한 봉지 안에 들어가는 떡의 총 길이는 절단기로 잘라서 맞춰줍니다.

  절단기 높이(H)를 지정하면 줄지어진 떡을 한 번에 절단합니다. 
  높이가 H 보다 긴 떡은 H 위의 부분이 잘릴 것이고 낮은 떡은 잘리지 않습니다.

  예를 들어 높이가 19, 14, 10 ,17cm인 떡이 나란히 있고 절단기 높이를 15cm로 지정하면 자른 뒤 떡의 높이는 15, 14, 10, 15cm가 될 것입니다.
  잘린 떡의 길이는 차례대로 4, 0, 0, 2cm입니다.
  손닙은 6cm만큼의 길이를 가져갑니다.

  손님이 왔을때 요청한 총 길이가 M일 때 적어도 M만큼의 떡을 얻기 위해 절단기에 설정할 수 있는 높이의 최댓값을 구하는 프로그램을 작성하세요.
'''

# 입력 조건
'''
  첫째 줄에 떡의 개수 N과 요청한 떡의 길이 M이 주어집니다.(1 <= N <= 1,000,000, 1 <= M <= 2,000,000,000)
  둘째 줄에는 떡의 개별 높이가 주어집니다.
  떡 높이의 총합은 항상 M 이상이므로, 손님은 필요한 양만큼 떡을 사갈 수 있습니다.
  높이는 10억보다 작거나 같은 정수 또는 0입니다.

  적어도 M만큼의 떡을 집에 가져가기 위해 절단기에 설정할 수 있는 높이의 최댓값을 출력합니다.
'''

# 입력 예시

'''
  4 6                     |   15
  19 15 10 17             |   
'''

# 해결 아이디어

'''
  적절한 높이를 찾을 때까지 이진 탐색을 수행하여 높이 H를 반복해서 조정하면 됩니다.
  현재 이 높이로 자르면 조건을 만족할수 있는가? 를 확인한 뒤에 조건의 만족 여부에 따라서 탐색범위를 좁혀서 해결할 수 있습니다.
  절단기의 높이는 0부터 10억까지의 정수 중 하나입니다.
    이렇게 큰 탐색 범위를 보면 가장 먼저 [이진탐색]을 떠올리는게 좋습니다.
'''