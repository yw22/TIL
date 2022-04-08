from collections import defaultdict

def solution(id_list, report, k):
    answer = []

    x = defaultdict(set)
    y = defaultdict(set)
    for i in report:
        report_from, report_to = i.split(' ')
        x[report_from].add(report_to)
        y[report_to].add(report_from)
    
    for id in id_list:
        count = 0 
        for re in x[id]:
            if len(y[re]) >= k:
                count += 1
        answer.append(count)
    return answer