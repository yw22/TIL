func solution(_ n:Int) -> Int {
    var arr: Array<Int> = [Int](repeating: 1, count: n + 1)
    var count = 0
    if n == 2{
      return 1
    }

    // 에라토스테네스의 체 사용
    for i in 2...(arr.count - 1){
        if arr[i] == 1{
            for j in stride(from : i * 2, to : arr.count, by : i){
                arr[j] = 0
            }
        }
    }
    
    for i in 2...n{
        count += arr[i]
    }
    
    return count
}

print(solution(10))
