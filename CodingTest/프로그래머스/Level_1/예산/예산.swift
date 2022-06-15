import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var money = budget
    d.sorted().forEach {
        money -= $0
        guard money >= 0 else { return }
        result += 1
    }
    return result

    //*********** fillter를 활용한 방법 **********//
    // return d.sorted().filter{
    //     budget = budget - $0
    //     return budget >= 0
    // }.count
}