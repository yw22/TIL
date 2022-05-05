import Foundation

func solution(_ sizes:[[Int]]) -> Int {
  var maxNum : [Int] = []
  var minNum : [Int] = []
  for i in sizes{
    minNum.append(i.min()!)
    maxNum.append(i.max()!)
  }
  return minNum.max()! * maxNum.max()!
}