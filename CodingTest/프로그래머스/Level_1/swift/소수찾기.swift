//-- 에라토스테네스의 체
func solution(_ n:Int) -> Int {
  guard n != 2 else{ return 1 }
  var arr = Array(repeating: 1, count: n + 1)
  for i in 2...(n / 2) {
    var count = 2
    while (i * count) <= n {
      arr[i * count] = 0
      count += 1
    }
  }
  return arr[2...n].filter{$0 == 1}.reduce(0, +)
}