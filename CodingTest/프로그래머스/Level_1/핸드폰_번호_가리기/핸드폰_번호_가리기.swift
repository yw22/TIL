import Foundation

//-- suffix 활용
func solution(_ phone_number:String) -> String {
    let replaceNum = String(repeating: "*", count: phone_number.count - 4)
    let num = phone_number.suffix(4)
    return replaceNum + num
}

func solution(_ phone_number:String) -> String {
  let sub = phone_number.index(phone_number.endIndex, offsetBy: -4)
  // 고차함수를 이용하여 문자를 바꿈
  let answer = String(phone_number[phone_number.startIndex..<sub].map{_ in "*"} + phone_number.suffix(4))
    
  return answer
}

//-- index를 활용한 방법
func solution(_ phone_number:String) -> String {

    let answer = String(repeating: "*", count: phone_number.count - 4)
    
    let sub = phone_number.index(phone_number.endIndex, offsetBy: -4)
    let end = phone_number.endIndex
    
    return answer + phone_number[sub..<end]
}

//-- map을 이용한 방법 Check해보기!
func solution(_ phone_number:String) -> String {
    guard phone_number.count > 4 else { return phone_number }
    return String(phone_number.enumerated().map{($0.offset<phone_number.count-4 ? Character("*") : $0.element)})
}

