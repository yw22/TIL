def solution(strings, n):
    answer = []
    for i in range(len(strings) - 1):
        for j in range(i, len(strings)):
            if strings[i][n] > strings[j][n]:
                strings[i], strings[j] = strings[j], strings[i]
    return strings
arr = ["sun", "bed", "car"]
print(solution(arr, 1))