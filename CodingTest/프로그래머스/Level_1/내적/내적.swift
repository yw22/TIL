import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    return result
}

//zip 활용

func solution1(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    for (x,y) in zip(a,b){
        result += (x * y)
    }
    return result
}

//zip과 고차함수

func solution2(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a,b).map(*).reduce(0,+)
}