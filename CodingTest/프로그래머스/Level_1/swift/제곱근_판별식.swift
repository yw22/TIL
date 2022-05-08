import Foundation
func solution(_ n:Int64) -> Int64 {
    let n = sqrt(Double(n))
    if n == floor(n)  { 
        return Int64((n + 1) * (n + 1)) 
    }
    return -1
}