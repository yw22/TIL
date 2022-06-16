
//-- 가장 작은수의 인덱스를 찾아 제거하는 방법
func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else {return [-1]}
    var arr = arr
    var min = arr[0]
    var temp = 0 // 가장 작은수의 인덱스를 저장할 변수

    for (index,value) in arr.enumerated() {
        if min > value { 
            min = value
            temp = index
        }
    }
    arr.remove(at: temp)
    
    return arr
}

//-- 새로운 배열에 추가하는 방법
func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var min = arr[0]
    arr.forEach{ if min > $0 { min = $0 } }
    arr = arr.filter{ $0 > min }
    
    if arr.isEmpty {return [-1]}
    
    return arr
}