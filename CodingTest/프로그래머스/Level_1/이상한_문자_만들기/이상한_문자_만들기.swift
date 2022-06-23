import Foundation

// index를 이용한 방법
func upper (_ str: String) -> String {
    var result = ""
    
    //문자 순회
    for i in 0..<str.count{
        // 홀수 짝수 판별
        if i % 2 == 0 {
            answer += str[str.index(str.startIndex, offsetBy: i)].uppercased()
        } else {
            answer += str[str.index(str.startIndex, offsetBy: i)].lowercased()
        }
    }
    
    return result
}

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: [" "])
    for i in 0..<arr.count{
        arr[i] = upper(arr[i])
    }

    return arr.joined(separator: " ")
}


//-- flag를 이용한 방법
func solution(_ s:String) -> String {
    var check = true
    var result = ""
    for i in s
    {
        if(i == " ")
        {
            result += String(i)
            check = true
        }else{
            if(check)
            {
                result += String(i).uppercased()
                check = false
            }else{
                result += String(i).lowercased()
                check = true
            }
        }
    }
    return result
}

