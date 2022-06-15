import Foundation
struct solution1{ //-- 내 첫번째 풀이 (직접 2진수로 변경후 zip을 활용한 비교방식)
  func binary (_ num : Int ,_ count : Int) -> String {
    var s = ""
    var n = num
    while n > 0{
      s += String(n % 2)
      n = n / 2
    }
    return String(format: "%0\(count)ld", Int(String(s.reversed())) ?? 0)
  }
  
  func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    let a1 = arr1.map{binary($0, n)}
    let a2 = arr2.map{binary($0, n)}
    
    for (x,y) in zip(a1,a2) {
      let newString : [String] = zip(x,y).map{
        guard String($0) == "1" || String($1) == "1" else { return " " }
        return "#"
      }
      answer += [newString.joined()]
    }
    return answer
  }
}


func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
  var mergeArr: [String] = []   // arr1, arr2를 합친 값을 담을 배열
  var answer: [String] = []   // #를 담을 배열
  
    // 1) arr1과 arr2를 OR연산하고 2진수로 바꿔준다
  for i in 0..<arr1.count {
    mergeArr.append(String((arr1[i] | arr2[i]), radix: 2))
  }

  for binary in mergeArr {
    var oneLine = ""
    
    // 2) 6자리가 되지 않을 경우 앞 부분에 빈공간을 채워서 6자리를 맞춰준다
    if binary.count != n {
      for _ in 0..<n-binary.count {
        oneLine += " "
      }
    }
    
    // 3) 2진수의 0을 빈칸, 1을 '#"로 바꾸어 출력해준다
    for oneNum in binary {
      oneLine += (oneNum == "1" ? "#" : " ")
    }
    answer.append(oneLine)
  }
  
  return answer
}