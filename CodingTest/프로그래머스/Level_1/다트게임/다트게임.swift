import Foundation

func solution(_ dartResult:String) -> Int {
    
    //-- components 활용
    let strings = dartResult.components(separatedBy: ["0","1","2","3","4","5","6","7","8","9"]).filter{!String($0).isEmpty}
    let numbers = dartResult.components(separatedBy: ["S","T","D","#","*"]).filter{!String($0).isEmpty}.map{Int(String($0))!}
    
    //-- split활용
   let strings1 = dartResult.split(whereSeparator: {$0.isNumber})
   let numbers1 = dartResult.split(whereSeparator: {$0.isLetter || $0 == "#" || $0 == "*"}).map{Int(String($0))!}
    
    var result : [Int] = numbers

    for i in 0...2 {
        strings[i].forEach {
            switch $0 {
            case "D":
                result[i] *= result[i]
            case "T":
                result[i] *= result[i] * result[i]
            case "#":
                result[i] *= -1
            case "*":
                if i == 0 {
                    result[i] *= 2
                }
                else {
                    result[i - 1] *= 2
                    result[i] *= 2
                }
            default:
                break
            }
        }
    
    }
    
    return result.reduce(0, +)
}
