import Foundation

func solution(_ s:String) -> Int{
    let str = Array(s)
    var stackArr: [Character] = []

    for i in 0..<str.count {
        if !stackArr.isEmpty && stackArr.last! == str[i] {
            stackArr.removeLast()
        } else {
            stackArr.append(str[i])
        }
    }
    return result.isEmpty ? 1 : 0
}

//-- 다른사람 풀이

// 빈 배열일때만 추가

func solution(_ s:String) -> Int{
    var str = ""

    for i in s {
        if str == ""{
            str.append(i)
        }
        else if str.last == i {
            str.removeLast()
        }
    }

    return str == "" ? 1 : 0
}