//-- 딕셔너리 사용
func solution(_ a:Int, _ b:Int) -> String {
    let monthDayMach:[Int:Int] = [1:31, 2:29, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31]
    let weekName = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    var totalDay = b
    
    for i in 0..<a{
        totalDay += (monthDayMach[i] ?? 0 )
    }
  
    return weekName[totalDay % 7]
}


//-- 스위치 사용
func solution(_ a:Int, _ b:Int) -> String {
  var totalDay = b
  let weekName = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
  for i in 1..<a { 
    totalDay += numberOfDays(month: i) 
    }
  return weekName[(totalDay) % 7]
}


func numberOfDays(month: Int) -> Int {
  switch month {
  case 1, 3, 5, 7, 8, 10, 12:
    return 31
  case 4, 6, 9, 11:
    return 30
  case 2:
    return 29
  default:
    return 0
  }
}

//-- 고차함수 사용
func solution(_ a:Int, _ b:Int) -> String {
  let weekName = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
  var monthDay = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  let totalDay = monthDay[0..<a].reduce(0, +) + b
  return weekName[(totalDay) % 7]
}