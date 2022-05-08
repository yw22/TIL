func solution(_ num:Int) -> Int {
    var num = num
    var count = 0
    while num != 1{
        guard count <= 500 else {return -1}
        if num % 2 == 0 { num = num / 2 }
        else { num = (num * 3) + 1 }
        count += 1
    }
    return count
}