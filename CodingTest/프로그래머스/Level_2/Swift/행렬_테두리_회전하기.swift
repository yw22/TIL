func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {

    var matrix = [[Int]]()
    var ans = [Int]()
    for r in 0..<rows {
        matrix.append(Array(r*columns + 1...r*columns + columns))
    }

    for q in queries {
        let miny = q[0] - 1
        let minx = q[1] - 1
        let maxy = q[2] - 1
        let maxx = q[3] - 1
        //빼버릴 값 (좌상단)
        let pivott = matrix[miny][minx]
        //회전의 최소값 추적용
        var minn = pivott

	//좌상단에서 하단으로 가면서 퍼즐을 한칸씩 위로 올림
        for y in miny..<maxy {
            minn = min(matrix[y+1][minx], minn)
            matrix[y][minx] = matrix[y+1][minx]
        }
        //좌하단에서부터 오른쪽으로 가며 퍼즐을 한칸씩 왼쪽으로
        for x in minx..<maxx {
            minn = min(matrix[maxy][x+1], minn)
            matrix[maxy][x] = matrix[maxy][x+1]
        }
        //우하단에서 위로 가며 퍼즐을 한칸씩 아래로
        for y in (miny+1...maxy).reversed() {
            minn = min(minn, matrix[y-1][maxx])
            matrix[y][maxx] = matrix[y-1][maxx]
        }
        //우상단에서 왼쪽으로 가며 퍼즐을 한칸씩 오른쪽으로
        for x in (minx+1...maxx).reversed() {
            minn = min(minn, matrix[miny][x-1])
            matrix[miny][x] = matrix[miny][x-1]
        }
        //마지막엔 빼둔값을 한칸 오른쪽에 넣어주면 완성
        matrix[miny][minx+1] = pivott
        //회전한 숫자중 최솟값을 배열에 더해준다
        ans.append(minn)
    }

    return ans
}