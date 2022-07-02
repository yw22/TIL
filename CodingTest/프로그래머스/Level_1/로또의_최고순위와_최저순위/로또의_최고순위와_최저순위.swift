import Foundation

// 등수판별
func Ranking(_ Num : Int) -> Int {
    switch Num {
    case 2: return 5
    case 3: return 4
    case 4: return 3
    case 5: return 2
    case 6: return 1
    default: return 6
    }
}

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    // 알수없는 번호를 제외한 로또 번호와 같은 개수
    let countNum = lottos.filter{ win_nums.contains($0) }.count
    // 알수없는 번호 개수
    let countZero = lottos.filter{ $0 == 0 }.count
    // 최고순위와 최저순위
    let highRanking = Ranking(countNum + countZero)
    let lowRanking = Ranking(countNum)

    return [highRanking,lowRanking]
}

// 딕셔너리로 매치
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    // 랭크 매치
    var rankDic: [Int: Int] = [0: 6, 1: 6, 2: 5, 3: 4, 4: 3, 5: 2, 6: 1]
    
    // 잃어버린 숫자 카운트
    var count = 0
    // 맞춘 숫자 카운트
    var checkCount = 0
    
    lottos.forEach{
        if $0 == 0 {count += 1}
        if win_nums.contains($0) {checkCount += 1}
    }
    
    return [rankDic[checkCount + count]!, rankDic[checkCount]!]
    
}