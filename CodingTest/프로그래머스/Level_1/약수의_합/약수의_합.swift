//-- for문 사용
func solution(_ n:Int) -> Int {
  guard n > 1 else{return n == 0 ? 0 : 1}
  var sum = n
  for i in 1...(n / 2){
    if (n % i) == 0 { sum += i }
  }
  return sum
}
//-- filter 사용
func solution(_ n:Int) -> Int {
  guard n > 1 else{ return n == 0 ? 0 : 1 }
  return Array(1...n/2).filter { n % $0 == 0 }.reduce(0, +) + n
}