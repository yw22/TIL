# 별 찍기 - 10 [재귀적인 패턴을 재귀함수로 찍는 문제 1]

# 공간을 나눈후 5번 공간을 제외한 나머지 공간은 *로 채운다
def solution(n):
  div3 = n // 3
  if n == 3:
    arr[1] = ['*', ' ', '*']
    arr[0][:3] = arr[2][:3] = ['*'] * 3
    return
  solution(div3)

  for i in range(0, n, div3):
    for j in range(0, n, div3):
      if i != div3 or j != div3:
        for k in range(div3):
          arr[i + k][j:j + div3] = arr[k][:div3]
    
  

n = int(input())
arr = [[' ' for _ in range(n)] for _ in range(n)]

solution(n)

for i in range(n):
  for j in range(n):
    print(arr[i][j], end = '')
  print()
