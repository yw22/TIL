func solution(_ n: Int, _ m: Int, _ arr: [String]) -> Int {
  var newArr = [[Bool]]()
  arr.forEach{
    newArr += [$0.map{
      Int(String($0))! == 1 ? true : false
    }]
  }
  var min = n * m
  func bfs(_ x: Int,_ y: Int, _ count: Int){
    guard (-1 < x) && (-1 < y) && (x < n) && (y < m) && newArr[x][y] != false else{return}
    if x == n - 1 && y == m - 1{
      min = min > count ? count : min
      return
    }
    newArr[x][y] = false
    bfs(x + 1, y,count + 1)
    bfs(x, y + 1,count + 1)
    bfs(x - 1, y,count + 1)
    bfs(x, y - 1,count + 1)
  }
  bfs(0,0,0)
//  newArr
  return min
}

let arr = ["1110111",
           "1000101",
           "1111101",
           "1000001",
           "1111101",
           "1111001"]

solution(arr.count, arr[0].count, arr)


import Foundation

func solution(_ x: Int, _ y: Int) -> Int {
  var (x,y) = (x,y)
  var queue = [[Int]]()
  queue.append([x,y])
  queue
  while !queue.isEmpty {
    x = queue[0][0]
    y = queue[0][1]
    queue.remove(at: 0)
    
    for i in 0...3 {
      let nx = x + dx[i]
      let ny = y + dy[i]
      
      if nx < 0 || nx >= n || ny < 0 || ny >= m { continue }
      if graph[nx][ny] == 0 { continue }
      if graph[nx][ny] == 1{
        graph[nx][ny] = graph[x][y] + 1
        queue.append([nx,ny])
      }
    }
  }
  
  return graph[n-1][m-1]
}


let arr = ["1110111",
           "1000101",
           "1111101",
           "1000001",
           "1111111",
           "1111011"]

var graph = [[Int]]()
arr.forEach{
  graph += [$0.map{
    Int(String($0))!
  }]
}

var n = arr.count
var m = arr[0].count

// 상하좌우
let dx = [-1,1,0,0]
let dy = [0,0,-1,1]

solution(0, 0)

graph.forEach{
  print($0)
}
