import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var newArr = [Int]()
    
    for i in 0..<(numbers.count - 1) {
        for j in (i + 1)...(numbers.count - 1){
            newArr += [numbers[i] + numbers[j]]
        }
    }
    
    return Set(newArr).sorted(by : <)
}