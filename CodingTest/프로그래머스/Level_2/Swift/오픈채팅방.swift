import Foundation

func solution(_ record:[String]) -> [String] {
  var answer = [String]()
  // Enter 와 Leave 구현
  let alet = ["Enter":"님이 들어왔습니다.", "Leave":"님이 나갔습니다."]
  
  // id와 닉네임 딕셔너리화
  var nameDic : [String : String ] = [:]
  record.forEach {
    let idName = $0.components(separatedBy: " ")
    if idName.count > 2 { //-- 들어올때 [1](id)과 [2](닉네임)을 받고
                          //   아이디를 바꾸더라도 다시 들어올때 [1](id)과 [2](닉네임)값을 받는다
      nameDic[idName[1]] = idName[2]
    }
  }
  
  
  answer = record.filter {!$0.contains("Change")} //-- change는 표현할 필요가 없다
  answer = answer.map {
    let actionArr = $0.components(separatedBy: " ") //-- ["enter, leave", "id", "닉네임]
    let newString = nameDic[actionArr[1]]! + alet[actionArr[0]]!
    return newString
  }
  return answer
}



enum Statement : String ,CustomStringConvertible{

    case enter = "Enter"

    case change = "Change"

    case leave = "Leave"

    var description: String {
        switch self {
        case .enter:
            return "들어왔습니다"
        case .leave:
            return "나갔습니다"
        default:
            return ""
        }
    }
}

class User{
    var curName : String
    var historys = [(Int,[String])]()
    
    init(name : String,time:Int) {

        self.curName = name

        historys.append((time,[name,Statement.enter.description]))

    }

    func enter(name : String,time:Int) {
        self.curName = name
        historys=historys.map { ($0.0 ,[name,$0.1[1]] )}
        historys.append((time,[name,Statement.enter.description]))
    }

    func leave(time:Int) {
        historys.append((time,[self.curName,Statement.leave.description]))
    }

    func changeName(name : String) {
        self.curName = name
        historys=historys.map { ($0.0 ,[name,$0.1[1]] )}
    }
}

func solution(_ record:[String]) -> [String] {
    var users = [User]()
    var dictionary = [String:User]()
    for index in 0..<record.count {
        let strings = record[index].split(separator: " ").map{String($0)}
        let curState = Statement(rawValue: strings[0])!
            if dictionary[strings[1]] == nil {
            dictionary[strings[1]] = User( name: strings[2], time: index)
        } else {
            switch curState {
            case .enter:
                dictionary[strings[1]]?.enter(name: strings[2],time: index)
            case .change:
                dictionary[strings[1]]?.changeName(name: strings[2])
            case .leave:
                dictionary[strings[1]]?.leave(time: index)
            }
        }
    }

    var output=dictionary.values.map({ user in
        user.historys
    }).flatMap{$0}.map {
        ($0.0,"\($0.1[0])님이 \($0.1[1])")
    }
    output.sort { $0.0 < $1.0 }
    print(output)
    return output.map {$0.1}
}



import Foundation
enum Action {
    case enter, leave, change, unkown
    static func fromString(_ command: String) -> Action {
        switch command.lowercased() {
        case "enter": return .enter
        case "leave": return .leave
        case "change": return .change
        default: return .unkown
        }
    }
}


var userInfo = [String: String]()
struct Record {
    let action: Action
    let uid: String
    func toComment() -> String {
        switch action {
        case .enter:
            return "\(getValue(forKey: uid)!)님이 들어왔습니다."
        case .leave:
            return "\(getValue(forKey: uid)!)님이 나갔습니다."
        default:
            return ""
        }
    }
}


func updateValue(_ value: String, forKey key: String) {
    userInfo[key] = value
}

func getValue(forKey key: String) -> String? {
    return userInfo[key]
}

func solution(_ record: [String]) -> [String] {
    return record.compactMap { recordItem -> Record? in
        let activityInfo = recordItem.split(separator: " ").map(String.init)
        switch activityInfo[0] {
        case "Enter":
            updateValue(activityInfo[2], forKey: activityInfo[1])
            return Record(action: Action.fromString(activityInfo[0]), uid: activityInfo[1])
        case "Leave":
            return Record(action: Action.fromString(activityInfo[0]), uid: activityInfo[1])
        case "Change":
            updateValue(activityInfo[2], forKey: activityInfo[1])
            return nil
        default:
            return nil
        }
    }.map { $0.toComment() }
}


solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
