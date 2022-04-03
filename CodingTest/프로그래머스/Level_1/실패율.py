def solution(N, stages):
    answer = []
    fail = list()
    people_number = len(stages)
    for i in range(1, N + 1):
        if people_number != 0:
            fail.append(stages.count(i) / people_number)
            people_number -= stages.count(i)
        else:
            fail.append(0)
    
    # 실패율 비교
    for i in range(N):
        answer.append(fail.index(max(fail)) + 1)
        fail[fail.index(max(fail))] = -2
            
    
    return answer