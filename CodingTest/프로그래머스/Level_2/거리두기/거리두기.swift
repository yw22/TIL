import Foundation

func check(_ n: [[Int]], _ x: Int, _ y: Int) -> Int{
    if n[x][y] == 2 {
        if  n[x + 1][y] == 2 || n[x - 1][y] == 2 || n[x][y + 1] == 2 || n[x][y - 1] == 2 {
            return 1
        }
        
        if n[x + 1][y] == 0 && (n[x + 2][y] == 2 || n[x + 1][y + 1] == 2 || n[x + 1][y - 1] == 2){
            return 1
        }
        if n[x - 1][y] == 0 && (n[x - 2][y] == 2 || n[x - 1][y + 1] == 2 || n[x - 1][y - 1] == 2){
            return 1
        }
        if n[x][y + 1] == 0 && (n[x][y + 2] == 2 || n[x + 1][y + 1] == 2 || n[x - 1][y + 1] == 2){
            return 1
        }
        if n[x][y - 1] == 0 && (n[x][y - 2] == 2 || n[x + 1][y - 1] == 2 || n[x - 1][y - 1] == 2){
            return 1
        }
    }
    
    return 0
}


func changeInt(_ str: [String]) -> Int {
    var arr = [[Int]]()
    for i in str{
        arr += [i.map{
            switch String($0) {
                case "P":
                    return 2
                case "O":
                    return 0
                case "X":
                    return 1
                default:
                    break
            }
            return 0
        }]
    }
    for i in 0...4{
        arr[i].insert(0, at: 0)
        arr[i].insert(0, at: 0)
        arr[i].append(0)
        arr[i].append(0)
    }
    arr.insert(Array(repeating: 0, count: 9), at: 0)
    arr.insert(Array(repeating: 0, count: 9), at: 0)
    arr.append(Array(repeating: 0, count: 9))
    arr.append(Array(repeating: 0, count: 9))
    
    var a = [Int]()
    for i in 2...6{
        for j in 2...6{
            a.append(check(arr, i, j))
        }
    }
    
    return a.contains(1) ? 0 : 1
}

func solution(_ places:[[String]]) -> [Int] {
    var arr = [Int]()
    
    places.forEach {
        arr += [changeInt($0)]
    }
    return arr
}
//----------------------------------------------------------------------------------------------------

func solution1(_ places:[[String]]) -> [Int] {
    let ps = places.map({ $0.map({ Array($0) }) })
    func dfs(_ r: Int, _ c: Int, _ count: Int, _ pp: [Array<String.Element>] ) -> Bool {
        if r < 0 || c < 0 || r >= ps.count || c >= ps[0].count || count == 3 || pp[r][c] == "X" {
            return true
        } else if pp[r][c] == "P" {
            return false
        }
        return dfs(r+1, c, count+1, pp) &&
            dfs(r-1, c, count+1, pp) &&
            dfs(r, c+1, count+1, pp) &&
            dfs(r, c-1, count+1, pp)
    }

    var result = Array(repeating: true, count: 5)

    for (i, p) in ps.enumerated() {
        for r in 0..<ps.count {
            for c in 0..<ps[r].count {
                if p[r][c] == "P" && result[i] {
                    var pp = p
                    pp[r][c] = "O"
                    result[i] = dfs(r, c, 0, pp)
                }
            }
        }
    }
    return result.map({ $0 ? 1 : 0 })
}
