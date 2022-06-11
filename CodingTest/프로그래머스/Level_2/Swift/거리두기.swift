import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var location = [String: [(Int, Int)]]()
    var arr = [(Int, Int)]()
    var result = [Int]()
    
    places.map { place in
        place.indices.map { x in
            let line = place[x].map { String($0) }
            line.indices.map { y in
                // location 딕셔너리에 값 넣기
                // ex) ["P":[(0, 0)], "O":[(0, 1)], "X":[(0, 2)]]
                if location[line[y]] == nil {
                    location[line[y]] = [(x, y)]
                } else {
                    arr = location[line[y]]!
                    arr.append((x, y))
                    location.updateValue(arr, forKey: line[y])
                }
            } // 한 행(줄) 다 돌음
        } // 대기실 한 곳 다 돌음
        
        // 거리두기 확인해서 result 배열에 Int 값 넣기
        result.append(isKeepDistance(location))
        
        // arr, location 초기화
        arr = []
        location = [:]
        
    } // 모든 대기실 다 돌음
    
    return result
}

func isKeepDistance(_ location: [String: [(Int, Int)]]) -> Int {
    var isKeep = 1
    
    // 응시자 없으면 거리두기 지키고 있으므로 1 반환
    guard let p = location["P"] else { return isKeep }
    
    // 재귀로 P(응시자) 좌표 조합 생성
    func getCombination(_ arr: [(Int, Int)], _ r: Int, _ res: inout [[(Int, Int)]], _ now: [(Int, Int)] = [(Int, Int)]()) {
        let n = arr.count
        guard n > 0 else { return }
        
        if r == 0 {
            res.append(now)
        } else if n == r {
            res.append(now + arr)
        } else {
            getCombination(Array(arr[1...]), r - 1, &res, now + [arr.first!])
            getCombination(Array(arr[1...]), r, &res, now)
        }
    }
    var pCombi = [[(Int, Int)]]()   // P(응시자) 좌표 조합
    getCombination(p, 2, &pCombi)
    
    pCombi.forEach {
        // (r1, c1), (r2, c2) = |r1 - r2| + |c1 - c2|
        let distance = ($0[0].0 - $0[1].0).magnitude + ($0[0].1 - $0[1].1).magnitude    // 맨해튼 거리
        if distance < 3 {
            // 맨해튼 거리 2이하이면 findPartion 함수로 근처에 파티션있나 확인
            guard let x = location["X"] else { return isKeep = 0 }
            if !findPartion($0, x) {
                isKeep = 0
            }
        }
    }
    return isKeep
}

func findPartion(_ p: [(Int, Int)], _ x: [(Int, Int)]) -> Bool {
    if p[0].0 == p[1].0 {
        // x가 같은 경우 y 사이에 파티션 확인
        // ex) (2, 1), (2, 3)
        return !(x.filter { $0 == ((p[0].0, p[0].1 + 1)) }.isEmpty)
    } else if p[0].1 == p[1].1 {
        // y가 같은 경우 x 사이에 파티션 확인
        // ex) (1, 3), (3, 3)
        return !(x.filter { $0 == ((p[0].0 + 1, p[0].1)) }.isEmpty)
    } else {
        // xy 둘다 다르면(대각선에 위치한 경우) 교차하여 확인
        // ex) (0, 1), (1, 0)
        // 이때, 두 군데 모두 파티션이 있어야 함 (&&연산자 사용)
        return !(x.filter { $0 == ((p[1].0, p[0].1)) }.isEmpty) && !(x.filter { $0 == ((p[0].0, p[1].1)) }.isEmpty)
    }
}