import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
  
    let str1 = str1.lowercased().map{String($0)}
    let str2 = str2.lowercased().map{String($0)}
    var newStr1 = [String]()
    var newStr2 = [String]()

    // 2글자씩 끊어서 원소를 만듬  
    for i in 0...(str1.count - 2) {
        newStr1 += [str1[i...(i+1)]]
    }
    for i in 0...(str2.count - 2) {
        newStr2 += [str2[i...(i+1)]]
    }

    // 문자만 볼 수 있게
    newStr1 = newStr1.filter{
        for i in $0{
            if !i.isLetter{
                return false
            }
        }
        return true
    }

    newStr2 = newStr2.filter{
        for i in $0{
            if !i.isLetter{
                return false
            }
        }
        return true
    }
    
    //-- 비교할 원소가 없다면
    guard !newStr1.isEmpty || !newStr2.isEmpty else {return 65536}

    let set1 = Set(newStr1)
    let set2 = Set(newStr2)

    // 교집합
    let intersection = set1.intersection(set2)

    // 다중집합의 교집합
    var min = 0
    for i in intersection {
        var count1 = 0
        var count2 = 0
        newStr1.forEach{
            if $0 == i {count1 += 1}
        }
        newStr2.forEach{
            if $0 == i {count2 += 1}
        }
        min += count1 < count2 ? count1 : count2
    }

    // 다중집합의 합집합
    let max = newStr1.count + newStr2.count - min
    

    //자가드 유사도
    let jacard = (Double(min) / Double(max)) * 65536

    return Int(floor(jacard))
}