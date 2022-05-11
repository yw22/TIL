//-- Stack을 이용한 DFS
func solution1(_ numbers : [Int],_ target : Int) -> Int {
  var answer = 0
  var queue = [[numbers[0],0], [-1*numbers[0],0]]
  while !queue.isEmpty{
    count += 1
    let arr = queue.popLast()!
    let i : Int = arr[1] + 1
    let num : Int = arr[0]
    if i < numbers.count{
      queue.append([num + numbers[i], i])
      queue.append([num - numbers[i], i])
    } else{
      if num == target {answer += 1}
    }
  }
  return answer
}

//-- 재귀를 이용한 DFS
func solution2(_ numbers:[Int], _ target:Int) -> Int {
  var result = 0
  var count = 0
  func dfs (index x: Int, sum: Int ){
    // 배열 마지막까지 순회수 타겟넘버와 일치시 카운트
    if x == numbers.count && target == sum {
      result += 1
    }
    // numbers배열의 길이보다 길면 탈출
    guard x != numbers.count else {return}
    
    dfs(index: x + 1, sum: sum + numbers[x])
    dfs(index: x + 1, sum: sum - numbers[x])
  }
  
  dfs(index: 0, sum: 0)
  return result
}

//-- queue를 이용한 BFS
func solution(_ numbers : [Int],_ target : Int) -> Int {
  var answer = 0
  var queue = [[Int]]()
  
  let length = numbers.count
  
  queue.append(contentsOf: [[numbers[0] * -1, 0]])
  queue.append(contentsOf: [[numbers[0], 0]])
  
  var index = 0
  
  while index < queue.count{
    let num = queue[index][0]
    let i = queue[index][1]
    index += 1
    
    if i + 1 == length {
      if num == target { answer += 1 }
    } else {
      queue.append(contentsOf: [[num - numbers[i + 1], i + 1]])
      queue.append(contentsOf: [[num + numbers[i + 1], i + 1]])
    }
  }
  return answer
}
