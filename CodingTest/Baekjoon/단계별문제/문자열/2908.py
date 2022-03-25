# 상수 [숫자를 뒤집어서 비교하는 문제]

def reverse_num(n) -> int:
  return int(n[2]) * 100 + int(n[1]) * 10 + int(n[0])

a, b = input().split(' ')

# my solution
# print(reverse_num(a) if reverse_num(a) > reverse_num(b) else reverse_num(b))

# [::-1]문자열을 역순으로 출력
print(max(a[::-1], b[::-1]))