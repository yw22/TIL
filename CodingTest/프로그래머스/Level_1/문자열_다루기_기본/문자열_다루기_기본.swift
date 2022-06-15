//-- ** allSatisfy() 적용
func solution(_ s:String) -> Bool {  
    guard s.count == 4 || s.count == 6 else { return false }
    return s.allSatisfy({ $0.isNumber })
}

func solution(_ s:String) -> Bool {
    guard s.count == 6 || s.count == 4 else {return false} 
    guard let _ = Int(s) else {return false}    
    return true
}

func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if Int(s) != nil {
            return true
        }
    }
    return false
}