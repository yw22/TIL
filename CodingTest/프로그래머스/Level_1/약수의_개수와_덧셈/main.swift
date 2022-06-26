import Foundation

// 제곱근 활용
func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    
    for i in (left...right){
        if sqrt(Double(i)) == floor(sqrt(Double(i))){
            answer -= i
        } else {answer += i}
    }
    
    return answer
}

//-- sqrt함수 구현

func m_sqrt(_ num: Double) -> Double{
    var num2: Double = 0
    var temp: Double = 0

    num2 = num / 2

    while (num2 != temp){
        temp = num2
        num2 = ((num / temp) + temp) / 2
    }
    return num2
}

//-- 반복문 사용

func solution(_ left: Int, _ right: Int) -> Int {

    var arr = Array(left...right)
    var answer = 0
    
    for num in arr{
      var count = 0
        for i in 1...num{
            if num % i == 0{
                count += 1
            }
        }
      if count % 2 == 0{
        answer += num
      } else {
        answer += (-num)
      }
    }

    return answer
}