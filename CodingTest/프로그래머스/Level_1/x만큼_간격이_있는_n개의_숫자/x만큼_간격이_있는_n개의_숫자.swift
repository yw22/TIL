import Foundation

func solution(_ x: Int, _ n: Int) -> Array<Int> {
  //x -> x + x 를 n개만큼한 배열 만들기
  var arr = [x]
  for i in 0 ..< n {
    arr.append(arr[i] + x)
 }
  
  //let arr = Array(1...n).map{Int($0 * x)}
  return arr
}

solution(2, 10)
