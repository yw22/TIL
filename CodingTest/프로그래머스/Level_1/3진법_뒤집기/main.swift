import Foundation

func solution(_ n:Int) -> Int {
    var str = String(n, radix: 3).reversed()
    str = Int(str, radix: 3)!
    return str
}

//-- radix 없이
import Foundation

func change(_ num: Int) -> Int{
    var n = num
    var s = ""
    // 10진법 -> 3진법
    while n > 0 {
        s += String(n % 3)
        n /= 3
    }
    
    // 거꾸로
    s = String(s.reversed())

    // 3진법 -> 10진법
    var mul = 1
    var number = 0
    for i in s{
        number += Int(String(i))! * mul
        mul *= 3
    }
    
    return number
}