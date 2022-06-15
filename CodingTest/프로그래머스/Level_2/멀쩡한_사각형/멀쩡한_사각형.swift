import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer: Int64 = 0
    // w,h를 Int로 계산하면 소수점까지 나오지 않기 때문에 형변환
    let width = Double(w)
    let height = Double(h)
    // y = ax 함수
    // 기울기 : h/w
    // y = (h/w)x
    
    for x in 1..<w{
    	// 1. x에 값 넣고 y값 구한다.
        // 2. y값 반올림해준다.
        let y = ceil(height/width*Double(x))
        // 3. h에서 y값을 빼준다.
        answer += Int64(height - y)
    }
    // 4. 대각선을 기준으로 한 쪽면만 구했으니 *2를 해준다.
    return answer * 2
}