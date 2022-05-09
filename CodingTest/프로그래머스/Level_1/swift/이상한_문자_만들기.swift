import Foundation

func evenUpperStr(_ s: String) -> [String] {
  var result = ""
  for (index, string) in s.enumerated() {
    if index % 2 == 0 { result += string.uppercased() }
    else { result += string.lowercased() }
  }
  return [result]
}

func solution(_ s:String) -> String {
  // 새로담을 배열
  var arrChaged: [String] = []

  // 단어별로 배열 만들기
  let arr = s.components(separatedBy: " ")
  
  // 문자별 홀수 인덱스는 대문자로 변경
  arr.forEach { str in
    arrChage += evenUpperStr(str)
  }

  // 배열합치기
  let answer = arrChaged.joined(separator: " ")

  return answer
}