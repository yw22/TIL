import Foundation

func solution(_ number:String, _ k:Int) -> String {
    
    var number = Array(number).map{Int(String($0))!}
    var newArr = [number[0]]
    var cnt = 0
    
    for i in 1...number.count - 1 {
        while !newArr.isEmpty && cnt < k && newArr.last! < number[i]{
            newArr.removeLast()
            cnt += 1
        }
        
        if cnt == k && number.count - k == newArr.count { break }
        newArr.append(number[i])
        
        
    }
    
    while number.count - k < newArr.count {
        newArr.removeLast()
    }
    
    return newArr.map{String($0)}.joined()
}