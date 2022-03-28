# 큰 수 A+B 
# 파이썬을 이용한 더하기 기능 구현

def re(arr):
  x = len(arr)
  temp = ''
  for i in range(x // 2):
    arr[i],arr[x - i - 1] = arr[x - i - 1],arr[i]


a, b = map(str, input().split(' '))
a = list(a)
b = list(b)
c = list()
carry = 0
re(a)
re(b)
while True:
  if len(a) < len(b):
    a.append('0')
  elif len(b) < len(a):
    b.append('0')
  else:
    break


for i in range(len(a)):
  sum = ord(a[i]) - 48 + ord(b[i]) - 48 + carry
  while (sum < 0):
    sum += 48
  if sum > 9:
    carry = 1
  else:
    carry = 0
  c.append(chr((sum % 10) + 48))

if carry == 1:
  c.append('1')

re(c)
print("".join(c))