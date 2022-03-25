# 알파벳 찾기 [한 단어에서 각 알파벳이 처음 등장하는 위치를 찾는 문제]

s = input()
arr = [-1] * 26
cnt = 0
for i in s:
  if arr[ord(i) - 97] == -1:
    arr[ord(i) - 97] = cnt
  cnt += 1

for i in arr:
  print(i, end = ' ')