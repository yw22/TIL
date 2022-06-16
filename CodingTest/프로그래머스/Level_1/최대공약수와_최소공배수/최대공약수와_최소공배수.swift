//-- 최대 공약수
func GCD(_ n: Int, _ m: Int) -> Int {
  var x = 1
  for i in 2 ... min(n,m) {
    if n % i == 0 && m % i == 0 { x = i }
  }
  return x
}

//-- 최소 공배수(for-in문)
func LCM(_ n: Int, _ m: Int) -> Int {
  return (n * m) / GCD(n, m)
}

//-- 최소 공배수(유클리드 호제법)
func LCM(_ n: Int, _ m: Int) -> Int {
  return (n * m) / GCD(n, m)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
  return [GCD(n, m), LCM(n, m)]
}