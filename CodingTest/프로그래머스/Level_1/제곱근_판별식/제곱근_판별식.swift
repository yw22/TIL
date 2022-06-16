import Foundation

//-- sqrt함수의 활용(비교도 안될정도로 더 빠름)
func solution(_ n:Int64) -> Int64 {
    let n = sqrt(Double(n))
    if n == floor(n)  { 
        return Int64((n + 1) * (n + 1)) 
    }
    return -1
}

// 1...n까지 제곱하여 비교
func solution(_ n:Int64) -> Int64 {
    var result: Int64 = 0
    
    for i in 1...n {
        if i * i == n { 
            result = Int64(i + 1) * Int64(i + 1)
            break
        }
        if i * i > n {return -1}
    }
    
    return result
}