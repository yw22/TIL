import Foundation

//x -> x + x 를 n개만큼한 배열 만들기
func solution(_ x: Int, _ n: Int) -> Array<Int> {
  var arr = [x]
  for i in 0 ..< n {
    arr.append(arr[i] + x)
  }
  return arr
}

// 1부터 n까지의 숫자배열을 만든후 각 원소마다 x를 곱한다
func solution(_ x: Int, _ n: Int) -> Array<Int> {
  let arr = Array(1...n).map{$0 * x}
  return arr
}
