import Foundation

//-- 각각 원소에 접근하여 더하는 방식 (속도 측면에서는 가장 우수함)
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = arr1
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            answer[i][j] += arr2[i][j]
        }
    }
    return answer
}


//-- zip, map을 활용한 방식
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
  var arr = zip(arr1,arr2)
  arr = arr.map{zip($0,$1).map{$0 + $1}}
  return arr
}



//-- map과 index를 이용한 방법

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
   var i = 0, j = 0

   return arr1.map { (numbers) -> [Int] in
       defer {
           i += 1
           j = 0
       }
       return numbers.map { (number) -> Int in
           defer {
               j += 1
           }
           return number + arr2[i][j]
       }
   }
}

