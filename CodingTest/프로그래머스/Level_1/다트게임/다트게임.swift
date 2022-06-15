import Foundation

func solution(_ dartResult:String) -> Int {
  let strings = dartResult.components(separatedBy: ["0","1","2","3","4","5","6","7","8","9"]).filter{!String($0).isEmpty}
  let numbers = dartResult.components(separatedBy: ["S","T","D","#","*"]).filter{!String($0).isEmpty}.map{Int(String($0))!}
  

  var score = 0
  var result : [Int] = []
  for (str,num) in zip(strings, numbers){
    str.forEach {
      switch $0 {
      case "S":
        score = num
      case "D":
        score = num * num
      case "T":
        score = num * num * num
      case "#":
        score *= -1
      default:
        break
      }
    }
    result.append(score)
  }
  
  if strings[0].contains("*"){
    result[0] *= 2
  }
  if strings[1].contains("*"){
    result[0] *= 2
    result[1] *= 2
  }
  if strings[2].contains("*"){
    result[1] *= 2
    result[2] *= 2
  }

  
  return result.reduce(0, +)
}