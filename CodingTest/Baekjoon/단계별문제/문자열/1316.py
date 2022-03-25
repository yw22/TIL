# 그룹 단어 체커 [조건에 맞는 문자열을 찾는 문제]
def check(n) -> int:
  arr = [0] * 26
  i = 0
  while i < len(n): 
    arr[ord(n[i]) - 97] += 1
    if i > 0 and n[i] == n[i - 1]:
      arr[ord(n[i]) - 97] -= 1
    i += 1  

  if max(arr) == 1:
    return 1
  else:
    return 0

a = int(input())
cnt = 0
for i in range(a):
  cnt += check(input())
print(cnt)