import Foundation

//-- for-in
func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted()
    var budget = budget
    var count = 0
    for i in arr {
        budget -= i
        if budget < 0 { break }
        else {count += 1}
    }
    
    return count
}

//-- forEach
func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var money = budget
    d.sorted().forEach {
        money -= $0
        guard money >= 0 else { return }
        result += 1
    }
    return result
}

//*********** fillter를 활용한 방법 **********//
func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget

    return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
    }.count
}