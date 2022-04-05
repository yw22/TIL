def solution(lottos, win_nums):
    count = 7
    result = []
    for i in win_nums:
        count -= lottos.count(i)
    if count - lottos.count(0) == 7:
        result.append(6)
    else:
        result.append(count - lottos.count(0))
    result.append(count if count != 7 else count - 1)
    return result