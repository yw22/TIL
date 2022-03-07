# round() 함수 : 소수점 자리를 반올림해서 표현 
print(round(2.41673, 2))

# 파이썬에서는 /을 사용할때는 실수형으로 반환
# [나머지연산자 %] [몫 연산자 //] [거듭제곱 연산자 **]

print(7 / 3)
print(7 // 3)
print(7 * 3)
print(7 ** 3)

####### 리스트 ######## 
print("\n----------------------------------------------------------\n")

# 직접 데이터를 넣어 초기화
array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(array1)

# 4 번째 원소만 출력
print(array1[3])
array1[3] = 1111
print(array1)
print(array1[3])

# 뒤에서 첫 번째 원소 출력
print(array1[-1])

# 뒤에서 세 번째 원소 출력
print(array1[-3])

# 크기가 N이고, 모든 값이 0인 1차원 리스트 초기화
array2 = [0] * 10
print(array2)

# 리스트의 인덱싱과 슬라이싱
# 리스트에서 연속적인 위체를 갖는 원소들을 가져와야 할 때는 슬라이싱을 이용

print(array1[1 : 4])

# 리스트 컴프리헨션
# 리스트를 초기화하는 방법 중 하나로 대괄호 안에 조건문과 반복문을 적용하여 리스트를 초기화

array3 = [i for i in range(10, 30)]
print(array3)

# 0부터 19까지의 수 중에서 홀수만 포함하는 리스트
array4 = [i for i in range(20) if i % 2 == 1]
print(array4)

# 위에 선언방식은 밑의 선언방식과 동일한 효과를 가지고 있다
# array4 = []
# for i in range(20):
#   if i % 2 == 1:
#     array4.append(i)


# 1부터 9 까지의 수들의 제곱 값을 포함하는 리스트
array5 = [i * i for i in range(1, 10)]
print(array5)

# 리스트 컴프리헨션은 2차원 리스트를 초기화할 떄 효과적으로 사용
# M * N 크기의 2차원 리스트를 한번에 초기화 해야 할 떄
# array = [[0] * M for _ in range(N)]으로 간단하게 표현할수 있다

print("\n----------------------------------------------------------\n")

############## 언더바의 활용 ###############

# 반복을 수행하되 반복을 위한 변수의 값을 무시하고자 할 떄 언더바( _ )를 자주 사용

# ex1) 1부터 9까지의 자연수를 더하기
summary = 0
for i in range(1, 10):
  summary += i
print(summary)

# ex2) "Hello World"를 5번 출력하기
for _ in range(5):
  print("Hello world")

print("\n----------------------------------------------------------\n")

# 리스트 관련 기타 메서트

'''
.append()                    리스트에 원소를 하나 삽입할때 사용              O(1)
.sort()                      기본 정렬 기능으로 오름차순으로 정렬            O(NlogN)  
.sort(reverse = True)        기본 정렬 기능으로 내림차순으로 정렬            O(N)
.reverse()                   원소의 순서를 모두 뒤집에 놓는다                O(N)
.insert(위치 인덱스, 삽입할 값)   특정한 인덱스 위치에 원소를 삽입                O(N)
.count(특정 값)               리스트에서 특정한 값을 가지는 데이터의 개수 계산    O(N)

.remove(특정 값)              특정한 값을 갖는 원소를 제거하는데,              O(N)
                            값을 가진 원소가 여러 개면 하나만 제거
'''

# 리스트에서 특정 값을 가지는 원소를 모두 제거하기

exArray = [1, 2, 3, 3, 4, 5, 5, 6, 5, 4]
remove_set = {3, 5}
print(exArray)

result = [i for i in exArray if i not in remove_set]
print("3과 5를 제거한 exArray :",result)

print("\n----------------------------------------------------------\n")
################## 문자열 자료형 ######################

a = "Hello"
b = "world"
print(a + " " + b)

a = "String"
print(a * 4)

a = "ABCDEF"
print(a[2 : 4])


# 튜플 자료형
# 튜플은 한 번 선언되 값을 변경할 수 없다
# 리스트는 대괄호를 이용하지만, 듀플은 소괄호를 이용

exTuple = (1, 2, 3, 4, 5, 6, 7, 8 ,9)

# 네 번째 원소만 출력
print(exTuple[3])

#두 번째 원소부터 네 번째 원소까지
print(exTuple[1 : 4])

# exTuple[2] = 7 로 변경할경우 오류 발생

'''
 튜플의 사용경우
 서로 다른 성질의 데이터를 묶어서 관리해야 할 때
 최단 경로 알고리즘에서는 비용, 노드번호의 형태로 튜플 자료형을 자주 사용
 데이터의 나열을 해싱의 키값으로 사용 할 때
 튜플은 병경이 불가능하므로 리스트와 다르게 키 값으로 사용
 리스트보다 메모리를 효율적으로 사용 할 때
'''

print("\n----------------------------------------------------------\n")
######################### 사전 자료형 ######################3

'''
 키와 값을 쌍으로 데이터를 가지는 자료형
 리스트나 튜플이 값을 순차적으로 저장하는 것과는 대비
 사전 자료형은 키와 값의 쌍을 데이터로 가지며 원하는 변경 불가능한 자료형을 키로 사용
 파이썬의 사전 자료형은 해시 테이블을 이용 하므로 데이터의 조회 및 수정이 있어서 
 O(1)의 시간에 처리할 수 있다
'''

data = dict()
data['사과'] = 'Apple'          # 키 : 사과   -  값 : Apple
data['바나나'] = 'Banana'       # 키 : 바나나  -  값 : Banana
data['코코넛'] = 'Coconut'      # 키 : 코코넛  -  값 : Coconut

print(data)

if '사과' in data:
  print("'사과'를 키로 가지는 데이터가 존재한다.")

# 사전 자료형 관련 메서드
# 키 데이터만 뽑아서 리스트로 이용할 때는 key() 함수를 이용
# 값 데이터만 뽑아서 리스트로 이용할 때는 values() 함수를 이용

key_list = data.keys()
value_list = data.values()

print(key_list)
print(value_list)

#위와같이 정의하면 하나의 객체로 반환되기 때문에 list()함수를 하용하면 리스트 형태로 반환할 수 있다

key_list = list(data.keys())
value_list = list(data.values())

print(key_list)
print(value_list)

for key in key_list:
  print(data[key])

print("\n----------------------------------------------------------\n")
########################## 집합 자료형 ##############################
'''
  집합은 중복을 허용하지 않고 순서가 없다
  집합은 리스트 혹은 문자열을 이용해서 초기화 가능
  이때 set()함수를 사용
  혹은 중괄호{} 안에 각 원소를 콤마를 기준으로 구분하여 삽입함으로써 초기화 할 수 있다.
  데이터의 조회 및 수정에 있어서 O(1)의 시간에 처리할 수 있다.
'''

# 집합 자료형 초기화 방법 1
data1 = set([1, 1, 2, 3, 4, 4, 5])
print(data1)

# 집합 자료형 초기화 방법 2
data2 = {1, 4, 7, 7, 3, 3, 3}
print(data2)

data3 = {'사과', '바나나', '포도', '수박'}
print(data3)

# 합집합
print(data1 | data2)
# 교집합
print(data1 & data2)
# 차집합
print(data1 - data2)

# 새로운 원소 추가
data1.add(10)
print(data1)

# 새로운 원소 여러 개 추가
data1.update([20,30])
print(data1)

# 특정한 값을 갖는 원소 삭제
data1.remove(3)
print(data1)

print("\n----------------------------------------------------------\n")
############################## 기본 입출력 ############################

'''
 input() 한줄의 문자열을 입력 받는 합수
 map() 리스트의 모든 원소에 각각 특정한 함수를 적용할 때 사용
 ### 사용자로부터 입력을 최대한 빠르게 받아야 하는 경우 ###
 파이썬의 경우 sys 라이브러리에 정의 되어 있는 sys.stdin.readline() 메서드를 사용
 단, 입력 후 엔터가 줄 바꿈 기호(\n)로 입력되므로 rstrip() 메서드를 함께 사용
'''

# pinrt(, end ="") 으로 마지막을 변경할수 있음
print(7, end = " ")
print(8)

# f-string   문자열 앞에 접두사 'f'를 붙여 사용
answer = 7
print(f'좋아하는 숫자 {answer}')

print("\n----------------------------------------------------------\n")
############################# 조건문 #############################

score = 89
# 조건부 표현식은 is ~문을 한 줄에 작성할 수 있다
result = "Success" if score >= 80 else "Fail"

print(result)

# 파이썬은 수학의 부등식을 그대로 사용할 수 있다
x = 15
if 0 < x < 20:
  print("x는 0 이상 20 미만의 수입니다.")

print("\n----------------------------------------------------------\n")
############################## 전역변수 ##############################

num = 0
arrayX = [1, 2, 3, 4, 5]

def func():
  global num
  num += 1
  # arrayX.append(6) # 리스트는 전역변수를 사용할경우 global가 필요없다
  # print(arrayX)
  arrayX = [3, 4, 5]
  arrayX.append(6) # 지역변수안에 있는경우 지역변수안에 객체부터 참조한다
  print(arrayX)

  # 지역변수 안에서 전역변수의 값을 변경해 사용하고 싶은경우는 global키워드가 필요
  # global arrayX
  # arrayX = [3, 4, 5]
  # arrayX.append(6) -> arrayX =[3, 4, 5, 6] 



for i in range(1):
  func()

print(num)

print("\n----------------------------------------------------------\n")
######################## 여러 개의 반환 값 ############################

def operator(a, b):
  add = a + b
  sub = a - b
  mul = a * b
  div = int(a / b)
  return add, sub, mul, div # 여러개의 값을 반화나는것을 패킹이라 한다

aa, bb, cc, dd = operator(7, 3)
print(aa, bb, cc, dd)

print("\n----------------------------------------------------------\n")
############################# 람다 표현식##############################

def add(a, b):
  return a + b
# 일반적인 add() 함수 호출
print(add(3, 7))

# 람다 표현식으로 구현한 add() 메서드

print((lambda a, b: a+ b)(3, 7))



array123 = [('홍길동', 50), ('이순신', 32), ('아무개', 74)]

def my_key(x):
  return x[1]

print(sorted(array123, key = my_key))
print(sorted(array123, key = lambda x: x[1]))

list1 = [1,2,3,4,5]
list2 = [6,7,8,9,10]

result1 = map(lambda a, b: a+ b, list1, list2)

print(list(result1))

print("\n----------------------------------------------------------\n")
########################## 실전에서 유용한 표준 라이브러리 #######################

'''
  내장 함수 : 기본 입출력 함수부터 정렬 함수까지 기본적인 함수들을 제공한다
  itertools : 파이썬에서 반복되는 형태의 데이터를 처리하기 위한 유용한 기능들을 제공
              특히 순열과 조합 라이브러리는 코딩 테스트에서 자주 사용
  heapq : 힙 자료구조를 제공
          일반적으로 우선순위 큐 기능을 구현하기 위해 사용
  bisect : 이진 탐색 기능을 제공
  collections : 덱(deque),카운터(counter) 등의 유용한 자료구조를 포함
  math : 필수적인 수학적 기능을 제공
         팩토리얼, 제곱근, 최대공약수(GCD), 삼각함수 관련 함수부터 PI와 같은 상수를 포함
        
'''

# 순열 : 서로 다른 n개에서 서로 다른 r개를 선택하여 일렬로 나열하는 것
#       {'A', 'B', 'C'}에서 두 개를 선택하여 나열하는 경우

from itertools import permutations
import re

data123 = ['A', 'B', 'C']

result = list(permutations(data123, 3)) # 모든 순영 구하기
print(result)

# 조합 : 서로 다른 n개에서 순서에 상관 없이 서로 다른 r개를 선택하는 것
#       {'A', 'B', 'C'}에서 순서를 고려하지 않고 두개를 뽑는 경우

from itertools import combinations
data123 = ['A', 'B', 'C']

result = list(combinations(data123, 2))
print(result)

# 중복 순열
from itertools import product

result = list(product(data123, repeat = 2)) # 2개를 뽑는 모든 수열 구하기(중복 허용)
print(result)

# 중복 조합
from itertools import combinations_with_replacement

result = list(combinations_with_replacement(data123, 2)) # 2개를 뽑는 모든 조합 구하기(중복 허용)
print(result)


#Counter : 등장 횟수를 세는 기능을 제공한다.
#          리스트와 같은 반복 가능한 객체가 주어졌을 때 내부의 원소가 몇 번씩 등장햇는지 알 수 있다

from collections import Counter

counter = Counter(['red', 'blue', 'red', 'green', 'blue', 'blue'])

print(counter['blue'])
print(counter['green'])
print(dict(counter))