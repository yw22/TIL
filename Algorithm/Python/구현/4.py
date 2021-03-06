# 문자열 재정렬

'''
  알파벳 대문자와 숫자로만 구성된 문자열이 입력으로 주어집니다. 이때 모든 알파벳을 오름차순으로 정렬하여
  이어서 출력한 뒤에, 그 뒤에 모든 숫자를 더한 값을 이어서 출력합니다.
  예를 들어 K1KA5CB7이라는 값이 들어오면 ABCKK13을 출력하니다.
'''

s = input()
chars = list()
sum_number = 0
for i in s:
  # if ord("A") <= ord(i) <= ord("Z"):
    # chars.append(i)
  # 알파벳인 경우 결과 리스트에 삽입
  if i.isalpha():
    chars.append(i)
  else:
    sum_number += int(i)
chars.sort() # 알파벳을 오름차순으로 정렬

# 숩자가 하나라도 존재하는 경우 가장 뒤에 삽입
if sum_number != 0:
  chars.append(str(sum_number))

# 최종 결과 출력(리스트를 문자열로 변화하여 출력)
print(''.join(chars))

#* join *#
'''
'구분자'.join(리스트)

join 함수는 매개변수로 들어온 리스트에 있는 요소 하나하나를 합쳐서 하나의 문자열로 바꾸어 반환하는 함수입니다.

- ''.join(리스트)
''.join(리스트)를 이용하면 매개변수로 들어온 ['a', 'b', 'c'] 이런 식의 리스트를 'abc'의 문자열로 합쳐서 반환해주는 함수인 것입니다.

- '구분자'.join(리스트)
'구분자'.join(리스트)를 이용하면 리스트의 값과 값 사이에 '구분자'에 들어온 구분자를 넣어서 하나의 문자열로 합쳐줍니다.
'_'.join(['a', 'b', 'c']) 라 하면 "a_b_c" 와 같은 형태로 문자열을 만들어서 반환해 줍니다.

예. 눈치 빠르신 분들은 눈치채셨겠지만
처음에 소개 해준 ''.join(리스트)는 '구분자'.join(리스트)에서 '구분자'가 그냥 공백인 것과 같습니다.

즉, 정리하자면 join함수의 찐 모양은 '구분자'.join(리스트) 입니다.



출처: https://blockdmask.tistory.com/468 [개발자 지망생]
'''