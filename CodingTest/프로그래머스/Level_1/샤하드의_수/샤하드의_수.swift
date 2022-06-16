// for-in문 활용
func solution(_ x:Int) -> Bool {
    var num = String(x)
    var syahad = 0

    for i in num {
        syahad += Int(String(i))!
    }

    var result: Bool = (x % syahad == 0)
    return result
}


// 고차함수의 활용
func solution(_ x:Int) -> Bool {
    // String(x).map() 형변환 주의
    let num = String(x).map{Int(String($0))!}.reduce(0, +)

    return x % num == 0
}
