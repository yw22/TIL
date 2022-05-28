import Foundation


// k단위만큼 문자열 나누기
func slideArr(_ str: String, _ k: Int) -> [String]{
    var arr: [String] = []
    // k 단위 만큼 슬라이스하여 arr에 추가
    for i in stride(from: 0, to: str.count - k, by: k){
        let a1 = str.index(str.startIndex, offsetBy: i )
        let a2 = str.index(str.startIndex, offsetBy: i + k - 1)
        arr.append(String(str[a1...a2]))
    }
    // 남은 문자열이 있다면
    if arr.count != str.count {
        arr.append(String(str[str.index(str.endIndex, offsetBy: (str.count - arr.joined(separator: "").count) * -1)...str.index(str.endIndex, offsetBy: -1)]))
    }
    
    return arr
}

// 나눈 문자열 지정한 형식으로 압축하기
func joinStr(_ arr: [String]) -> String {
    var temp = ""
    var result = ""
    var count = 1
    for str in arr {
        // 비교할 문자열
        if temp == "" {
            temp = str
            continue
        }
        // 비교할 문자열과 다음 문자열비교하여 같으면 +1
        if temp == str {
            count += 1
        }
        // 같지 않다면 result문자열에 문자추가
        else {
            //count가 2이상이면 지정한 형식으로 압축
            result += (count > 1) ? "\(temp)\(count)" : "\(temp)"
            //다른 문자열 다시 비교할 문자열로 초기화와 count 초기화
            temp = str
            count = 1
        }
    }
    
    if temp != "" { result += (count > 1) ? "\(temp)\(count)" : "\(temp)" }
    
    return result
}


func solution(_ s:String) -> Int {
    guard s.count > 3 else { return s.count }
    
    var min = s.count
    
    // i 단위 만큼 슬라이스
    for i in 1...(s.count / 2) {
        
        let arr = slideArr(s, i)
        
        min = joinStr(arr).count < min ? joinStr(arr).count : min
        
    }

    return min
}

solution("aaabbbb")

