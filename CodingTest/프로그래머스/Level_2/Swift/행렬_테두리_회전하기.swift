import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var arr = Array(repeating: Array(repeating: 0, count: columns), count: rows )
    var count = 1
    for i in 0..<rows {
        for j in 0..<columns {
            arr[i][j] = count
            count += 1
        }
    }
    var minArr = [Int]()
    
    
    for i in queries {
        var min = Int.max
        var x = i[0] - 1
        var y = i[1] - 1
        let minRow = i[0] - 1
        let minCol = i[1] - 1
        let maxRow = i[2] - 1
        let maxCol = i[3] - 1
        
        
        var temp1 = arr[x][y]
        var temp2 = arr[x][y]
        // 위 ->
        while true {
            guard y < maxCol else { break }
            min = min < temp1 ? min : temp1
            temp1 = temp2
            temp2 = arr[x][y + 1]
            arr[x][y + 1] = temp1
            y += 1
        }
        
        // 오른쪽 아래로
        
        while true {
            guard x < maxRow else { break }
            min = min < temp1 ? min : temp1
            temp1 = temp2
            temp2 = arr[x + 1][y]
            arr[x + 1][y] = temp1
            x += 1
        }
        
        // 아래 <-
        while true {
            guard y > minCol else { break }
            min = min < temp1 ? min : temp1
            temp1 = temp2
            temp2 = arr[x][y - 1]
            arr[x][y - 1] = temp1
            y -= 1
        }
        
        // 왼쪽 위로
        while true {
            guard x > minRow else { break }
            min = min < temp1 ? min : temp1
            temp1 = temp2
            temp2 = arr[x - 1][y]
            arr[x - 1][y] = temp1
            x -= 1
        }
        
        minArr.append(min)
    }
    
    return minArr
}
