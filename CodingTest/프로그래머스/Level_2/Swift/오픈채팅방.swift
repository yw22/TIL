import Foundation

func solution(_ record:[String]) -> [String] {
  var answer = [String]()
  // Enter 와 Leave 구현
  let alet = ["Enter":"님이 들어왔습니다.", "Leave":"님이 나갔습니다."]
  
  // id와 닉네임 딕셔너리화
  var nameDic : [String : String ] = [:]
  record.forEach {
    let idName = $0.components(separatedBy: " ")
    if idName.count > 2 { //-- 들어올때 [1](id)과 [2](닉네임)을 받고
                          //   아이디를 바꾸더라도 다시 들어올때 [1](id)과 [2](닉네임)값을 받는다
      nameDic[idName[1]] = idName[2]
    }
  }
  
  
  answer = record.filter {!$0.contains("Change")} //-- change는 표현할 필요가 없다
  answer = answer.map {
    let actionArr = $0.components(separatedBy: " ") //-- ["enter, leave", "id", "닉네임]
    let newString = nameDic[actionArr[1]]! + alet[actionArr[0]]!
    return newString
  }
  return answer
}


solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
