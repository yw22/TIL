def solution(d, budget):
    answer = 0
    sum_money = 0
    arr = sorted(d)
    for i in arr:
        sum_money += i
        if sum_money <= budget:
            answer += 1
        else:
            break
    
    return answer