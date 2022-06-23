func solution(_ n:Int64) -> [Int] {
    let str = String(n).map{ Int(String($0)!) }
    let answer = str.reversed()
    return answer
}