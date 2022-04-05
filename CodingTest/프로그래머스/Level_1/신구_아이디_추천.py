def solution(new_id):
    # 1단계
    new_id = new_id.lower()  
    
    # 2단계
    remove_char = list('~!@#$%^&*()=+[{]}:?,<>/')
    for i in remove_char:
        new_id = new_id.replace(i, "")
        
    # 3단계
    while True:
        if new_id.count('..') > 0:
            new_id = new_id.replace('..', '.')
        else:
            break
            
    # 4단계
    new_id = new_id.strip(".")
    
    # 5단계
    if len(new_id) == 0:
        new_id = 'a'
        
    # 6단계
    while True:
        if len(new_id) > 15:
            new_id = new_id[:-1]
        else:
            break
    new_id = new_id.strip(".")
    
    # 7단계
    while len(new_id) < 3:
        new_id += new_id[-1]
        
    answer = new_id
    return answer