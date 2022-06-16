//-- for-in

func solution(_ arr:[Int]) -> Double {
  var sum = 0
  let count = arr.count
  
  for i in arr {
    sum += i
  }
  
  let avg = Double(sum) / Double(count)

  return avg
}

//-- 고차함수
func solution(_ arr:[Int]) -> Double {
  let sum = Double(arr.reduce(0, +))
  let count = Double(arr.count)

  return num / count
}