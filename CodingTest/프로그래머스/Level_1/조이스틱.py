def solution(name):
    answer = 0
    
    name = list(name)
    for i in name:
        if i == 'N':
            answer += 13
        elif i < 'N':
            answer += ord(i) - 65
        elif i > 'N':
            answer += (ord('Z') + 1) - ord(i) 
        
    return answer + len(name) - 1

print(solution("JAN"))