def solution(answers):
    answer = []
    s1 = [1,2,3,4,5] * 2000
    s2 = [2,1,2,3,2,4,2,5] * 1250
    s3 = [3,3,1,1,2,2,4,4,5,5] * 1000
    s1_score = 0
    s2_score = 0
    s3_score = 0
    
    for i in range(len(answers)):
        if answers[i] == s1[i]:
            s1_score += 1
        if answers[i] == s2[i]:
            s2_score += 1
        if answers[i] == s3[i]:
            s3_score += 1
    
    if s1_score == max(s1_score,s2_score,s3_score):
        answer.append(1)
    if s2_score == max(s1_score,s2_score,s3_score):
        answer.append(2)
    if s3_score == max(s1_score,s2_score,s3_score):
        answer.append(3)
    
    return answer