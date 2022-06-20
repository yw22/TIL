import Foundation

//-- 사전(dictionary)
func solution(_ s : String) -> Int {
  let numDic = ["zero" : "0", "one" : "1","two" : "2","three" : "3","four" : "4","five" : "5","six" : "6","seven" : "7" ,"eight" : "8","nine" : "9"]
  var answer = s
  for value in numDic{
    answer = answer.replacingOccurrences(of: value.key, with: value.value)
  }
  return Int(answer)!
}

//-- 배열과 인덱스
func solution1(_ s:String) -> Int {
    let arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var s = s
    for i in 0..<arr.count{
        s = s.replacingOccurrences(of: arr[i], with: "\(i)")
    }
    return Int(s)!
}
