private func solutionP42860(_ name:String) -> Int {
    let aValue = 65
    let zValue = 90
    let name = name.map{ $0 }
    
    func stickUpDown(c: Character) -> Int {
        let ascii = Int(c.asciiValue!)
        let front = ascii - aValue
        let back = zValue + 1 - ascii
        return min(front, back)
    }
    
    // 위아래는 좌우의 이동과 상관이 없음 먼저 더해줌
    var result = 0
    for i in 0..<name.count {
        result += stickUpDown(c: name[i])
    }
    
    // 좌우로 움직이는경우는 한방향 또는 도중에 돌아가는경우이고 한방향으로갈시에는 문자열 수 - 1 과 같음
    var count = name.count - 1
    for i in 0..<name.count {
        if name[i] != "A" {
            var nextIndex = i + 1
            // 연속된 A가 많으면 되돌아 가는경우 검사
            while nextIndex < name.count && name[nextIndex] == "A" {
                nextIndex += 1
            }
            // 지금까지 온거리 * 2 -> 왓다가 되돌아가는경우
            // 문자열수 - nextIndex -> 끝나는 마지막 인덱스까지의 거리
            let move = i * 2 + name.count - nextIndex
            count = min(move, count)
        }
    }
  
    return result+count
}