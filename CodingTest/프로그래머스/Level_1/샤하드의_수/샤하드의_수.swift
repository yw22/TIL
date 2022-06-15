func solution(_ x:Int) -> Bool {
    // String(x).map() 형변환 주의
    let num = String(x).map{Int(String($0))!}.reduce(0, +)

    return x % num == 0
}
