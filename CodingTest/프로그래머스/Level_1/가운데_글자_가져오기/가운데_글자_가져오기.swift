
//-- index활용
extension String {
    subscript(idx: Int) -> String{
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

func solution(_ name:String) -> String {
    var answer = ""
    if name.count % 2 != 0 {
        answer += name[name.count / 2]
    } else{
        answer += name[(name.count / 2) - 1]
        answer += name[name.count / 2]
    }
    return answer
}

//-- array변경후 서브스크립트 사용
func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    }else{
        return String(Array(s)[s.count/2])
    }
}