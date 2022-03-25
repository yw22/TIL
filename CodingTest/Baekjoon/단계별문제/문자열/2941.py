# 크로아티아 알파벳 [크로아티아 알파벳의 개수를 세는 문제]

arr = ['=', '-', 'dz=', 'lj', 'nj']
a = input()
print(len(a) - sum(a.count(c) for c in arr))