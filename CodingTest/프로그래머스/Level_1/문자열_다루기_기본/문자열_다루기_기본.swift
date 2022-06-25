//-- ** allSatisfy() 적용
func solution(_ s:String) -> Bool {  
    guard s.count == 4 || s.count == 6 else { return false }
    return s.allSatisfy({ $0.isNumber })
}

//-- guard let을 활용
func solution(_ s:String) -> Bool {
    guard s.count == 6 || s.count == 4 else {return false} 
    guard let _ = Int(s) else {return false}    
    return true
}

//-- 1) 인트형변환시 안된다면 nil을 반환하는것을 활용 
func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if Int(s) != nil { return true }
    }
    return false
}
//-- 2)
func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
