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


//------------------------------------------------------------------------------------------------------

func solution(_ n:Int, _ stages:[Int]) -> [Int] {
    var total = Float(stages.count)
    var falseArr = Array<Float>(repeating: 0, count: n)
    var arr = [Int]()
    for i in stages {
        if i <= n { arr.append(i) }
    }
    for i in arr {
        falseArr[i - 1] += 1
    }
    
//    var falseArr = Array<Float>(repeating: 0, count: n)
//        stages.filter { $0 <= n }.forEach { falseArr[$0 - 1] += 1 }
//
    
    
//    var falseArr = Array<Float>(repeating: 0, count: n)
//    for i in 1...n {
//        if stages.contains(i){
//            falseArr[i - 1] = Float(stages.filter{$0 == i}.count)
//        } else { falseArr.append(0)}
//    }
    
    
    for i in 1...n {
        let tmp = falseArr[i - 1]
        falseArr[i - 1] = falseArr[i - 1] / total
        total -= tmp
    }
    

    return falseArr.enumerated().sorted{ $0.element > $1.element}.map{$0.offset + 1}
}

//----------------------------------------------------------------------------------------------------

func solution(_ n:Int, _ stages:[Int]) -> [Int] {
    // 각 단계별로 실패율 계산
    var total = Float(stages.count)
    var falseArr = Array<Float>(repeating: 0, count: n)
    stages.filter { $0 <= n }.forEach { falseArr[$0 - 1] += 1 }
    
    for i in 1...n {
        if total != 0{
            let temp = falseArr[i - 1]
            falseArr[i - 1] /= total
            total -= temp
        }
    }
    
    // 실패율이 높은 순으로 정렬, 실패율이 같을경우 스테이지가 낮은 순으로 정렬
    
    var dic = [Int: Float]()
    
    for i in 1...n {
        dic[i] = falseArr[i - 1]
    }

    
    return dic.sorted(by: <).sorted{$0.1 > $1.1}.map{$0.key}
}



//------------ 내 코드의 문제점

func falseCode () {
    var falseArr = Array<Float>(repeating: 0, count: n)
    stages.filter { $0 <= n }.forEach { falseArr[$0 - 1] += 1 }
    // for i in stages {
    //     if i <= n { arr.append(i) }
    // }
    // for i in arr {
    //     falseArr[i - 1] += 1
    // }
}

func betterCode() {
    var falseArr = Array<Float>(repeating: 0, count: n)
    for i in 1...n {
        falseArr[i - 1] = Float(stages.filter{$0 == i}.count)
    }
}


//-------------(51.76ms, 25.6MB)

import Foundation

func solution(_ n:Int, _ stages:[Int]) -> [Int] {
    // 각 단계별로 실패율 계산
    var total = Float(stages.count)
    var dicFalse = [Int: Float]()
    for i in stages {
        dicFalse[i] = (dicFalse[i] ?? 0) + 1
    }
    
    for i in 1...n {
        if total != 0{
            let temp = dicFalse[i] ?? 0
            dicFalse[i] = (dicFalse[i] ?? 0) / total
            total -= temp
        }
    }
    
    dicFalse[n + 1] = nil
    
    // 실패율이 높은 순으로 정렬, 실패율이 같을경우 스테이지가 낮은 순으로 정렬

    
    return dicFalse.sorted(by: <).sorted{$0.1 > $1.1}.map{$0.key}
}


solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
