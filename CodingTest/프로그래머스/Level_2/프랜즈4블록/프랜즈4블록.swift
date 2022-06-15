import Foundation
func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    let blank = "#" // 빈칸으로 사용할 문자
    
    // m이 행, n이 열 갯수
    func isSameBlock(_ row: Int, _ col: Int) -> Bool {
        guard case let first = mat[row][col], first != blank else {
            return false
        }
        if mat[row][col + 1] == first &&
            mat[row + 1][col] == first &&
            mat[row + 1][col + 1] == first {
            return true
        } else {
            return false
        }
    }
    
    let bd = board.map { $0.map { String($0) } } // 문자열을 각각 문자들로 나눔
    var mat = [[String]](repeating: [String](repeating: "", count: m), count: n) // 시계방향으로 90도 회전한 bd를 저장할 배열
    // 시계방향으로 90도 회전한 값으로 값을 채움
    for i in (0..<n) {
        for j in (0..<m) {
            mat[i][j] = bd[m - j - 1][i]
        }
    }
    
    while true {
        var position = [[Int]]() // 2x2을 찾았을 때 그 위치를 담을 배열 [[row, col]]
        // 회전한 mat에서 2x2블록 찾기. m행 n열 -> n행 m열로 바뀜
        for row in (0 ..< n - 1) {
            for col in (0 ..< m - 1) {
                if isSameBlock(row, col) {
                    position.append([row, col])
                }
            }
        }
        // 찾은 2x2블록이 없으면 종료
        if position.count == 0 { break }
        // 찾은 2x2블록 빈칸으로 만들기
        for pos in position {
            mat[pos[0]][pos[1]] = blank
            mat[pos[0]][pos[1] + 1] = blank
            mat[pos[0] + 1][pos[1]] = blank
            mat[pos[0] + 1][pos[1] + 1] = blank
        }
        // 빈 공간 지우기
        for i in (0..<mat.count) {
            mat[i].removeAll(where: { $0 == blank })
            mat[i] += [String](repeating: blank, count: m - mat[i].count)
        }
    }
    
    return mat.reduce(0) { $0 + $1.filter { $0 == blank }.count }
}