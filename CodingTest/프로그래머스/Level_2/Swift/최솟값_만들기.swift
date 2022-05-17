func solution(_ A:[Int], _ B:[Int]) -> Int{
  var ans = 0
    
  let A = A.sorted(by : >)
  var B = B.sorted(by : <)

  
  for i in 0 ..< A.count {
    ans += (A[i] * B[i])
  }
    
  return ans
}