import Foundation
func solution(_ n:Int) -> Int
{
  let answer = String(n).map{ Int(String($0))!}
  return answer.reduce(0, +)
}

//-- 반복문을 이용한 방법 --//
// func solution(_ n:Int) -> Int {
//     var sum = 0
//     String(n).forEach(
//       sum += Int(String(i))!
//     )
//     return sum
// }


//-- 나머지를 활용한 방식 --//
// func solution(_ n:Int) -> Int {
//     var sum = 0
//     while n > 0 {
//         sum += n % 10
//         n /= 10
//     }
//     return sum
// }