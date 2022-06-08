import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let len = progresses.count
    var result = [Int]()
    var day = Array(repeating: 0, count: len)
    var temp = 0
    var num = 0
    
    // 해당 작업 기간을 계산하기 위한 반복문
    for i in stride(from: 0, to: len, by: 1){
        // 처음 기능 개발의 완성도
        temp = progresses[i]
        while true{
            // 기능 개발 속도 더해주기
            temp += speeds[i]
            // 기능 개발이 완성되는 기간
            day[i] += 1
            //기능 개발 완성이 100퍼가 넘을 경우
            if temp >= 100 {
                break
            }
        }
    }
    // 기능이 다 완료되기 전까지
    while !day.isEmpty {
        var cnt = 0
        // 처음 개발 기간 저장
        num = day.removeFirst()
        // 개발 완성된 기능 증가
        cnt += 1
        // 처음 개발 기간보다 다음 개발 기간이 적거나 같을 경우
        while !day.isEmpty && num >= day.first! {
            // 개발 완성된 기능 1 증가
            cnt += 1
               // 기간이 더 적으니 한꺼번에 배포
            day.removeFirst()
        }
        // 한 번의 배포당 기능 수 저장
        result.append(cnt)
    }
    
    return result
}
