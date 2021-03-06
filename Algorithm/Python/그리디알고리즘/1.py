# 그리디 알고리즘
# 현재 상황에서 지금 당장 좋은 것만 고르는 방법

# 일반적인 그리디 알고리즘은 문제를 풀기 위한 최소한의 아이디어를 떠올릴 수 있는 능력을 요구
# 그리디 해법은 그 정당성 분석이 중요합니다.
# 단순히 가장 좋아 보이는 것을 반복적으로 선택해도 최적의 해를 구할 수 있는지 검토한다.

# 일반적인 상황에서 그리디 알고리즘은 최적의 해를 보장할 수 없을 떄가 많다
# 코딩 테스트에서는 대부분의 그리디 문제는 탐욕법으로 얻은 해가 최적의 해가 되는 상황에서,
# 이를 추론할수 있어야 풀리도록 출제

# ex1) 거스름 돈
# 당신은 음식점의 계산을 도와주는 점원이다. 
# 카운터에는 거스름돈으로 사용할 500원 100원 50원 10원짜리 동전이 무한히 존재한다고 가정합니다. 
# 손님에게 거슬러 주어야 할 돈이 N원일 때 거슬러 주어야 할 동전의 최소 개수를 구하세요. 
# 단, 거슬러 줘야 할 돈은 N은 항상 10의 배수 입니다.

# 최적의 해를 빠르게 구하기 위해서는 가장 큰 화폐 단위부터 돈을 거슬러 주면 됩니다.

n = 1260 # 거스름돈이 1260원이라면
cnt = 0

# 큰 단위 화폐부터 차례대로 확인
array = [500, 100, 50, 10]
for coin in array:
  cnt += n // coin # 해당 화폐로 거슬러 줄 수 있는 동전의 개수 세기
  n %= coin

print(cnt)

# 가장 큰 화폐 단위부터 돈을 거슬러 주는 것이 최적의 해를 보장하는 이유는
# 가지고 있는 동전 중에서 큰 단위가 항상 작은 단위의 배수이므로 작은 단위의 동전들을 종합해 다른 해가 나올수 없기 때문
# 만약 800원을 거슬러 주어야하는데 화폐 단위가 500원,400원,100원 이라면 500원 1개 100원 3개 보다 400원 2개가 더 동전을 적개 사용한다

# 거스름 돈: 시간 복잡도 분석
# 화폐의 종류가 k라고 할 떄, 소스코드의 시간 복잡도는 o(k)입니다.
# 이 알고리즘의 시간 복잡도는 거슬러줘야 하는 금액과는 무관하며, 동전의 총 종류에만 영향을 받음


