func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  var arr = [0] + Array(repeating: 1, count: n) + [0]

  let reserves = reserve.filter{!lost.contains($0)}
  let losts = lost.filter{!reserve.contains($0)}
  reserves.forEach{ arr[$0] = 2 }
  losts.forEach{ arr[$0] = 0 }
    
  for i in 1...n {
    if arr[i] == 0{
      if arr[i - 1] == 2{
        arr[i] = 1
        arr[i - 1] = 1
      } else if arr[i + 1] == 2{
        arr[i] = 1
        arr[i + 1] = 1
      }
    }
  }
  
  
  return arr.filter{$0 == 1 || $0 == 2}.count
}