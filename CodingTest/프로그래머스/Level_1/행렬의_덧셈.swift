import Foundation

//////////////////// zip, map을 활용한 방식 ///////////////////
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
  var arr = zip(arr1,arr2).map{zip($0,$1).map{$0 + $1}}

  // zip, for문을 활용한 방식
  // var arr :[[Int]] = []
  // let a1 = zip(arr1,arr2)
  
  // for (i,j) in a1 {
  //   let a2 = zip(i,j)
  //   var arrX: [Int] = []
  //   for (x,y) in a2 {
  //     arrX += [x+y]
  //   }
  //   arr.append(arrX)
  //   print(arr)
  // }
  
  return arr
}

solution([[1,2],[3,4]], [[4,5],[6,7]])



//************ map과 index를 사용 **********//

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var i = 0, j = 0
//
//    return arr1.map { (numbers) -> [Int] in
//        defer {
//            i += 1
//            j = 0
//        }
//        return numbers.map { (number) -> Int in
//            defer {
//                j += 1
//            }
//            return number + arr2[i][j]
//        }
//    }
//}
//


//#######################     속도면에서는 가장 우수    #########################//
//####################### 반복문을 활용한 인덱스 접근방식 #########################//
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var answer: [[Int]] = arr1
//    for i in 0 ..< arr1.count {
//        for j in 0 ..< arr1[i].count {
//            answer[i][j] += arr2[i][j]
//        }
//    }
//    return answer
//}
