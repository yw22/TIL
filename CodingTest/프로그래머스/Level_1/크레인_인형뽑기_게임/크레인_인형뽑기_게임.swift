import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var arr = board
  var stackArr: [Int] = []
  var count = 0
  
  //-- 지정 colum
  moves.forEach {
    //-- 전체 row 순회
    for i in 0 ..< board.count {
      //-- 값이 있다면
      if arr[i][$0 - 1] != 0 {
        if stackArr.last == arr[i][$0 - 1]{
          stackArr.removeLast()
          //-- 들어오는 값과 stackArr의 마지막 값을 지우므로 2를 더해준다
          count += 2
        } else { 
          stackArr += [arr[i][$0 - 1]] 
        }
        //-- stackArr에 원소 추가후 board에 있던 값은 0으로 변환
        arr[i][$0 - 1] = 0
        break
      }
    }
  }
  return count
}
