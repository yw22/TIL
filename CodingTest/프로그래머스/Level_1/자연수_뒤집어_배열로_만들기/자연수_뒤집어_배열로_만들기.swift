func solution(_ n:Int64) -> [Int] {
    
    let str = String(n).map{ String($0) }
    let answer = str.reversed().map{Int($0)!}
    return answer
}