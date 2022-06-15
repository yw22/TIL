def gcd(x ,y):
    
    answer = 1
    for i in range(2, min(x,y) + 1):
        if x % i == 0 and y % i == 0:
            answer = i
    return answer
    

def solution(arr):
    if len(arr) == 1:
        return arr[0]
    for i in range(0,len(arr) - 1):
        arr[i + 1] = (arr[i] * arr[i + 1]) // gcd(arr[i], arr[i + 1])
    return arr[-1]