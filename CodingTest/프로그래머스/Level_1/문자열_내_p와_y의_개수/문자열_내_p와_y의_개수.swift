import Foundation

func solution(_ s:String) -> Bool {
    var P = 0
    var Y = 0
    s.lowercased().forEach{
        if $0 == "p" {P += 1}
        if $0 == "y" {Y += 1}
    }
    return P == Y
    //-- 한줄코딩
    //return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}

//-- components을 이용한 방법
func solution(_ s:String) -> Bool
{
    let s = s.lowercased()
    return s.components(separatedBy: "p").count == s.components(separatedBy: "y").count
}
