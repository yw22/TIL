import Foundation

// 재귀함수
func solution(_ n:Int) -> [[Int]] {
    var answer = [[Int]]()
    
    func hanoi(_ n: Int, _ start: Int, _ end: Int, _ mid: Int){
        if n == 1{
          answer += [[start,end]]
          return
        }
    
        hanoi(n - 1, start, mid, end)
        answer += [[start,end]]
        hanoi(n - 1, mid, end, start)
    }
    
    hanoi(n, 1, 3, 2)
    
    return answer
}

print(solution(2))