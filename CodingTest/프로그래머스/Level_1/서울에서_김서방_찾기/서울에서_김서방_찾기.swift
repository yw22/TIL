
//-- firstIndex 활용
func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}

//-- enumerated() 활용
func solution(_ seoul:[String]) -> String {
    seoul.enumerated().forEach{
        if $0.element == "Kim" { 
            return "김서방은 \($0.offset)에 있다" 
        }
    }
    return ""
}