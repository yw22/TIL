import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var x1 = [1, 2, 3, 4, 5]
    var x2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var x3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var count = [0,0,0]
    
    for (index,value) in answers.enumerated(){
        if x1[(index) % x1.count] == value { count[0] += 1}
        if x2[(index) % x2.count] == value { count[1] += 1}
        if x3[(index) % x3.count] == value { count[2] += 1}
    }
    
    var max = count.max()!
    var answer = [Int]()
    
    for (index,value) in count.enumerated(){
        if value == max{
            answer.append(index + 1)
        }
    }
    
    return answer
}