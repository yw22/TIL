func solution(_ n:Int) -> String {
    let (str1,str2) = ("수", "박")
    var answer = ""
    for i in 1...n {
        if i % 2 == 1 {answer += "수"}
        else { answer += "박" }
    }
    return answer
}

func solution(_ n:Int) -> String {
    var str1 = String(repeating: "수박", count: n/2)
    var str2 = n % 2 == 0 ? "" : "수"
    return str1 + str2
}

func solution(_ n:Int) -> String {
  var result = (0 ..< n).map{($0 % 2 == 0 ? "수" : "박")}.joined()
  return result
}