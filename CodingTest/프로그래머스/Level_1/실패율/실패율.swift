import Foundation

// 현재 스테이지 인원 계산
func nowStageCount(_ arr: [Int], _ n: Int) -> Int {
  var count = 0
  for i in arr {
    if n == i {
      count += 1
    }
  }
  return count
}

func solution(_ N:Int, _ stages:[Int]) -> [Int] {

  // 변수정의
  var falseStage = 0.0 // 실패율  // 스테이지와 실패율을 담을 딕셔너리
  var answer : [Double] = []
  var userCount = stages.count // 스테이지 유저수
  var arr: [Int] = []

  
  // 각 스테이지마다 실패율 계산(클리어 못한 수/ 스테이지에 도달한 플레이어수)
  
  for i in 1 ... N { // 스테이지마다 확인
    if userCount > 0 {
      let currentUserCount = nowStageCount(stages, i) // 클리어 못한 수
      
      falseStage = Double(currentUserCount) / Double(userCount) // 실패율
      userCount -= currentUserCount
      answer += [falseStage]
    } else {
      answer += [0]
    } 
  }
  
  for _ in 0 ... (N - 1){
    let a = answer.firstIndex(of: answer.max()!)
    arr += [a! + 1]
    answer[a!] = -1
  }
  return arr
}