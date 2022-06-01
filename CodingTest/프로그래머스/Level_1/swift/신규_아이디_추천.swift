import Foundation

func solution(_ new_id:String) -> String {
  
  
  //1단계
  var id = new_id.lowercased()
  
  //2단계 
  let escape = ["-", "_", "."]
  id = id.filter{ $0.isLetter || $0.isNumber || escape.contains(String($0)) }
  
  //3단계
  while id.contains(".."){
    id = id.replacingOccurrences(of:"..", with: ".")
  }
  
  //4단계
  while id.first == "."{
    id.removeFirst()
  }
  while id.last == "."{
    id.removeLast()
  }
  
  //5단계 
  if id.isEmpty { id += "a" }
  
  //6-1단계
  if id.count > 15 {
    let start = id.startIndex
    let end = id.index(start, offsetBy: 14)
    id = String(id[start...end])
  }
  //6-2단계
  while id.last == "."{
    id.removeLast()
  }
  
  //7단계
  while id.count < 3 {
    id += String(id.last!)
  }
  
  return id
}