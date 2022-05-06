import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var arr = board
  var characters: [Int] = []
  var count = 0
  moves.forEach {
    for i in 0 ..< board.count {
      if arr[i][$0 - 1] != 0 {
        if characters.last == arr[i][$0 - 1]{
          characters.removeLast()
          count += 2
        } else { characters += [arr[i][$0 - 1]] }
        arr[i][$0 - 1] = 0
        break
      }
    }
  }
  return count
}
let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]
print(solution(board, moves))
