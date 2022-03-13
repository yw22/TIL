# 성택 정렬과 기본 정렬 라이브러리 수행 시간 비교

from random import randint
import time

array = list()
for _ in range(10000):
  array.append(randint(1, 100))

start_time = time.time()

for i in range(len(array)):
  min_index = i
  for j in range(i + 1, len(array)):
    if array[min_index] > array[j]:
      min_index = j
  array[i], array[min_index] = array[min_index], array[i]

end_time = time.time()

print("선택 정렬 성능 측정 :", end_time - start_time)

array = []

for I in range(100000):
  array.append(randint(1, 100))

start_time = time.time()

array.sort()

end_time = time.time()

print("기본 정렬 라이브러리 성능 측정 :", end_time - start_time)

