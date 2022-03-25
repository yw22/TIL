# 단어 공부 [주어진 단어에서 가장 많이 사용된 알파벳을 출력하는 문제]

word = input().upper()
arr = [0] * 26
for i in word:
  arr[ord(i) - 65] += 1

if arr.count(int(max(arr))) == 1:
    print(chr(arr.index(max(arr)) + 65))
else:
  print('?')
