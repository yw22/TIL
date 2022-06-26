import Foundation

func isPrime(_ n: Int) -> Bool{
    for i in 2...Int(sqrt(Double(n))){
        if n % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    for i in 0..<(nums.count - 2){
        for j in (i + 1)..<(nums.count - 1){
            for k in (j + 1)..<(nums.count){
                if isPrime(nums[i] + nums[j] + nums[k]) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}