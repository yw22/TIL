def solution(n, lost, reserve):
    answer = 0
    
    lost_check = [1] * (n + 1)
    
    for i in lost:
        lost_check[i] = 0
        if reserve.count(i) == 1:
            reserve.remove(i)
            lost_check[i] = 1
        
    for i in range(1, n + 1):
        if lost_check[i] == 0:
            if  1 < i and reserve.count(i - 1) == 1:
                lost_check[i] = 1
                reserve.remove(i - 1)
            elif i < n and reserve.count(i + 1) == 1:
                lost_check[i] = 1
                reserve.remove(i + 1)
                
    answer = sum(lost_check) - 1
        
    return answer