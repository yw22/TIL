def gcd(n, m):
    for i in range(m + 1, 1, -1):
        if n % i == 0 and m % i == 0:
            return i
    return 1

def solution(n, m):
    answer = []
    if m > n:
        n,m = m,n
    answer.append(gcd(n,m))
    answer.append(n * m // answer[0])

    return answer