import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
  var reported : [String : Int] = [:]
  var user : [String : [String]] = [:]
  var reportedName : [String] = []

  for r in Set(report) {
    let splited = r.split(separator: " ").map{String($0)}
    user[splited[0]] = (user[splited[0]] ?? []) + [splited[1]]
    reported[splited[1]] = (reported[splited[1]] ?? 0) + 1
    }
  print(user)
  print(reported)
  for i in reported{
    if i.value >=  k {
      reportedName.append(i.key)
    }
  }
  print(reportedName)

  return id_list.map { id in
      return (user[id] ?? []).reduce(0) {
          $0 + ((reported[$1] ?? 0) >= k ? 1 : 0)
      }
  }
}


print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

