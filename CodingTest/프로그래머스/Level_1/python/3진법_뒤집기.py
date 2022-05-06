def solution(n):
    answer = 0
    ternary = []
    x = 1
    while True:
        if n > 2:
            ternary.append(n % 3)
            n //= 3
        else:
            ternary.append(n)
            break
            
    ternary.reverse()
    
    for i in ternary:
        answer += i * x
        x *= 3
        
    return answer