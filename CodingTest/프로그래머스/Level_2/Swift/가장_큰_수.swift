import Foundation

func solution(_ numbers:[Int]) -> String {
    guard numbers.reduce(0,+) != 0 else { return "0" }
    
    var newArr = numbers.map{String($0)}.sorted(by: >)
    let result = newArr.sorted{$0 + $1 > $1 + $0}.joined(separator: "")

    return result
}