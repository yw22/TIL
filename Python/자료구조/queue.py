# 큐 자료구조

from collections import deque

# 파이썬에서 큐 구형을 위해 deque 라이브러리 사용하는것이 시간복잡도 면에서 유리하다
queue = deque()

queue.append(5) # [5]
queue.append(2) # [5, 2]
queue.append(3) # [5, 2, 3]
queue.append(7) # [5, 2, 3, 7]
queue.popleft() # [2, 3, 7]
queue.append(1) # [2, 3, 7, 1]
queue.append(4) # [2, 4, 7, 1, 4]
queue.popleft() # [4, 7, 1, 4]

print(queue)    # 먼저 들어온 순서대로 출력
queue.reverse() # 역순으로 바꾸기
print(queue)    # 나중에 들어온 원소부터 출력