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

//-- 2차도전 

func solution(_ new_id:String) -> String {
    var id = new_id
    
    //-- 1
    id = new_id.lowercased()
    
    //-- 2
    id = id.filter{ $0.isNumber || $0.isLetter || String($0) == "-" || String($0) == "_" || String($0) == "."}
    
    //-- 3
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    //-- 4
    id = id.trimmingCharacters(in: ["."])

    //-- 5 
    if id.isEmpty { id += "a" }
    
    //-- 6
    if id.count > 15 { id = String(id.prefix(15)) }
    id = id.trimmingCharacters(in: ["."])
    
    //-- 7
    while id.count < 3 {
        id += String(id.last!)
    }
    
    return id
}