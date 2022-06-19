import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var arr = board
  var stackArr: [Int] = []
  var count = 0
  moves.forEach {
    for i in 0 ..< board.count {
      if arr[i][$0 - 1] != 0 {
        if stackArr.last == arr[i][$0 - 1]{
          stackArr.removeLast()
          count += 2
        } else { 
          stackArr += [arr[i][$0 - 1]] 
        }
        arr[i][$0 - 1] = 0
        break
      }
    }
  }
  return count
}
