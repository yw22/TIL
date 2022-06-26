// sorted 활용
func solution(_ strings:[String], _ n:Int) -> [String] {
    var answer = strings.sorted(by: <)
    
    answer = answer.sorted{
        $0[$0.index($0.startIndex, offsetBy:n)] < $1[$1.index($1.startIndex, offsetBy:n)]
    }
    return answer
}

//-- 딕셔너리 활용
func solution(_ strings:[String], _ n:Int) -> [String] {
     var dic : [String: String] = [:]
  
    strings.forEach {
        let stringsIndex = $0.index($0.startIndex, offsetBy: n)
        dic[$0] = String($0[stringsIndex])
    }

    return dic.sorted{ 
        if $0.1 == $1.1{ return $0.0 < $1.0 }
        return $0.1 < $1.1
        }.map{$0.0}
}



//-- sort함수

func sorting (_ str: [String]) -> [String] {
    guard str.count > 0 else {return []}
    var rightStr = [String]()
    var leftStr = [String]()
    var pivotStr = [String]()

    var pivot: String = str[0]

    for s in str {
        if pivot > s {
            leftStr.append(s)
        } else if pivot < s {
            rightStr.append(s)
        } else {
            pivotStr.append(s)
        }
    }

    return leftStr + pivotStr + rightStr
}

//-- index sort함수 구현


extension String { // 서브스크립트에 인트형도 사용할 수 있게 기능 추가
    subscript(idx: Int) -> String{
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

func sortingIndex (_ str: [String], _ n: Int) -> [String] {
    guard str.count > 0 else {return []}
    var rightStr = [String]()
    var leftStr = [String]()
    var pivotStr = [String]()

    let pivot: String = str[0]

    for s in str {
        if pivot[n] > s[n] {
            leftStr.append(s)
        } else if pivot[n] < s[n] {
            rightStr.append(s)
        } else {
            pivotStr.append(s)
        }
    }

    return leftStr + pivotStr + rightStr
}