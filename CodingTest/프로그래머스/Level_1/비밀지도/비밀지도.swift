import Foundation

//-- 내 첫번째 풀이 (직접 2진수로 변경후 zip을 활용한 비교방식)
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    let arr1 = arr1.map{ Int(String($0, radix: 2))! }
    let arr2 = arr2.map{ Int(String($0, radix: 2))! }
    
    var newArr = [String]()
    
    for (i,j) in zip(arr1, arr2) {
        newArr.append(String(format: "%0\(n)ld", i + j))        
    }
    
    for i in 0..<newArr.count{
        newArr[i] = newArr[i].replacingOccurrences(of: "0", with: " ")
        newArr[i] = newArr[i].replacingOccurrences(of: "1", with: "#")
        newArr[i] = newArr[i].replacingOccurrences(of: "2", with: "#")
    }
    
    return newArr
}

// 비트 연산자를 이용한 방ㅓ
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