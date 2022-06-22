import Foundation

func solution(_ expression:String) -> Int64 {
    let number = expression.split(whereSeparator: {$0 == "+" || $0 == "-" || $0 == "*"}).map{Int64($0)!}
    let symbol = expression.split(whereSeparator: {$0.isNumber}).map{String($0)}
    
    var arr = [Int64]()
    
    for s1 in "*+-"{
        for s2 in "*+-"{
            guard s1 != s2 else { continue }
            let s3 = "*+-".filter{$0 != s1 && $0 != s2}
            arr.append(operators(number, symbol, [String(s1),String(s2),String(s3.first!)]))
        }
    }

    return arr.max()!
}

func operators(_ n:[Int64], _ s:[String], _ c:[String]) -> Int64{
    var number = n
    var symbol = s
    while symbol.contains(c[0]) {
        for i in 0..<symbol.count {
            if symbol[i] == c[0] {
                number[i] = operate(number[i], number[i + 1], c[0])
                symbol.remove(at: i)
                number.remove(at: i + 1)
                break
            }
        }
    }
    while symbol.contains(c[1]) {
        for i in 0..<symbol.count {
            if symbol[i] == c[1] {
                number[i] = operate(number[i], number[i + 1], c[1])
                symbol.remove(at: i)
                number.remove(at: i + 1)
                break
            }
        }
    }
    while symbol.contains(c[2]) {
        for i in 0..<symbol.count {
            if symbol[i] == c[2] {
                number[i] = operate(number[i], number[i + 1], c[2])
                symbol.remove(at: i)
                number.remove(at: i + 1)
                break
            }
        }
    }
    
    if number[0] < 0 {number[0] *= -1}
    
    return number[0]
}

func operate (_ a: Int64, _ b: Int64, _ c: String) -> Int64 {
    switch c{
        case "*":
            return a * b
        case "+":
            return a + b
        case "-":
            return a - b
        default:
            break
    }
    return 0
}