func solution(_ n:Int64) -> Int64 {
    let numStr = String(n)
    
    // 문자열도 sorted함수를 사용할 수 있으며 String.Element(Charater)배열로 리턴한다
    let numStrArr = numStr.sorted(by: >)

    // 다시 문자열로 변형
    let str = String(numStrArr)

    // 문자열을 다시 인트형변환
    let answer = Int64(str) ?? 0

    return answer
}


// 한 줄 코딩
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: > )))!
}