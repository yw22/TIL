func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var min = arr[0]
    arr.forEach{ if min > $0 { min = $0 } }
    // firter사용
    arr.filter{ $0 > min }
    // remove 활용
    // arr.remove(at: arr.firstIndex(of: min)!)

    if arr.isEmpty {return [-1]}
    
    return arr
}