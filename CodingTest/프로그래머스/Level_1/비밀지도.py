def binary(n):
    strA = ''
    if n == 0:
        strA += '0'
    while n > 0:
        if n % 2 == 0:
            strA += '0'
        else:
            strA += '1'
        n //= 2
    return strA[::-1]
    


def solution(n, arr1, arr2):
    answer = []
    solve1 = [''] * n
    solve2 = [''] * n

    for i in range(n):
        solve1[i] += "".join(binary(arr1[i]))
    for i in range(n):
        solve2[i] += "".join(binary(arr2[i]))
        
    for i in range(n):
        answer.append(str(int(solve1[i]) + int(solve2[i])))
    
    for i in range(n):
        while len(answer[i]) < n:
            answer[i] = "0" + answer[i]

    for i in range(n):
        answer[i] = answer[i].replace('1', '#', n)
        answer[i] = answer[i].replace('2', '#', n)
        answer[i] = answer[i].replace('0', ' ', n)
    

    
    return answer