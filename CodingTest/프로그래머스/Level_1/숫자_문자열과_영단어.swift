import Foundation

func solution(_ s : String) -> Int {
  let numDic = ["zero" : "0", "one" : "1","two" : "2","three" : "3","four" : "4","five" : "5","six" : "6","seven" : "7" ,"eight" : "8","nine" : "9"]
  var answer = s
  for value in numDic{
    answer = answer.replacingOccurrences(of: value.key, with: value.value)
  }
  return Int(answer)!
  
}