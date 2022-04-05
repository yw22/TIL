def solution(absolutes, signs):
    answer = 0
    for i in range(len(absolutes)):
        if signs[i]:
            answer += int(absolutes[i])
        else:
            answer += (int(absolutes[i]) * -1)
        
    return answer