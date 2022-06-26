import Foundation

// 노가다..
func solution(_ numbers:[Int], _ hand:String) -> String {
  func checkRL(_ number : Int) -> String {
    var left = 0
    var right = 0
    let checkNumber = "\(number)"
      
    switch checkNumber{
    case "2":
        if lastLeftHand == "*"{
          left = 4
        } else if lastLeftHand == "7" || lastLeftHand == "0"{
          left = 3
        } else if lastLeftHand == "4" || lastLeftHand == "8"{
          left = 2
        } else if lastLeftHand == "1" || lastLeftHand == "5"{
          left = 1
        } else {
          left = 0
        }

    case "5":
        if lastLeftHand == "*"{
          left = 3
        } else if lastLeftHand == "7" || lastLeftHand == "0" || lastLeftHand == "1"{
          left = 2
        } else if lastLeftHand == "4" || lastLeftHand == "8" || lastLeftHand == "2" {
          left = 1
        } else {
          left = 0
        }

    case "8":
        if lastLeftHand == "1"{
          left = 3
        } else if lastLeftHand == "*" || lastLeftHand == "4" || lastLeftHand == "2"{
          left = 2
        } else if lastLeftHand == "0" || lastLeftHand == "7" || lastLeftHand == "5" {
          left = 1
        } else {
          left = 0
        }

    case "0":
        if lastLeftHand == "1"{
          left = 4
        } else if lastLeftHand == "4" || lastLeftHand == "2"{
          left = 3
        } else if lastLeftHand == "7" || lastLeftHand == "5"{
          left = 2
        } else if lastLeftHand == "*" || lastLeftHand == "8"{
          left = 1
        } else {
          left = 0
        }
      
    default:
        break
    }
    
    
    switch checkNumber{
    case "2":
        if lastRightHand == "#"{
          right = 4
        } else if lastRightHand == "9" || lastRightHand == "0"{
          right = 3
        } else if lastRightHand == "6" || lastRightHand == "8"{
          right = 2
        } else if lastRightHand == "3" || lastRightHand == "5"{
          right = 1
        } else {
          right = 0
        }

      
    case "5":
        if lastRightHand == "#"{
          right = 3
        } else if lastRightHand == "9" || lastRightHand == "0" || lastRightHand == "3"{
          right = 2
        } else if lastRightHand == "6" || lastRightHand == "8" || lastRightHand == "2" {
          right = 1
        } else {
          right = 0
        }

      
    case "8":
        if lastRightHand == "3"{
          right = 3
        } else if lastRightHand == "#" || lastRightHand == "6" || lastRightHand == "2"{
          right = 2
        } else if lastRightHand == "0" || lastRightHand == "9" || lastRightHand == "5" {
          right = 1
        } else {
          right = 0
        }

      
    case "0":
        if lastRightHand == "3"{
          right = 4
        } else if lastRightHand == "6" || lastRightHand == "2"{
          right = 3
        } else if lastRightHand == "9" || lastRightHand == "5"{
          right = 2
        } else if lastRightHand == "#" || lastRightHand == "8"{
          right = 1
        } else {
          right = 0
        }
      default:
        break
    }
    
    if hand == "right"{
        if right > left {
            lastLeftHand = "\(checkNumber)"
            return "L"
        } else {
            lastRightHand = "\(checkNumber)"
            return "R"
        }
    } else {
          if right < left {
              lastRightHand = "\(checkNumber)"
              return "R"
      } else {
            lastLeftHand = "\(checkNumber)"
            return "L"
      }
    }
  }
  
  
  
    var result : String = ""
    var lastLeftHand : String = "*"
    var lastRightHand : String = "#"

    for number in numbers {
        switch number {
        case 1, 4, 7:
            result += "L"
            lastLeftHand = "\(number)"
        case 3, 6, 9:
            result += "R"
            lastRightHand = "\(number)"
        case 2, 5, 8, 0:
            result += "\(checkRL(number))"
        default:
            break
        }
    }

  return result
}

//-- 좀더 좋은 풀이
func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""

    for i in numbers{
        result += check(i, hand)
    }
    
    return result
}


          // 어느 손가락이 누르는지 체크
func check(_ num: Int, _ hand: String) -> String {
    var rf = -2
    var lf = -1
    
    switch num {
    case 1,4,7:
        lf = num
        return "L"
        
    case 3,6,9:
        rf = num
        return "R"
        
    default:
        let rLen = len(rf,num)
        let lLen = len(lf,num)
        
        if rLen < lLen {
            rf = num
            return "R"
        } else if rLen > lLen{
            lf = num
            return "L"
        } else {
            if hand == "right"{
                rf = num
                return "R"
            } else {
                lf = num
                return "L"
            }
        }
    }
}

          // 키패드 거리 계산
func len (_ current: Int, _ nextNum: Int) -> Int {
    
    let p = [[1,2,3],
             [4,5,6],
             [7,8,9],
             [-1,0,-2]]
    
    var rc1 = [Int]()
    var rc2 = [Int]()
    
    for i in 0..<4{
        for j in 0..<3{
            if p[i][j] == current{
                rc1 = [i,j]
            }
            if p[i][j] == nextNum{
                rc2 = [i,j]
            }
        }
    }
    
    let len1 = (rc1[0] - rc2[0]) < 0 ? -(rc1[0] - rc2[0]) : (rc1[0] - rc2[0])
    let len2 = (rc1[1] - rc2[1]) < 0 ? -(rc1[1] - rc2[1]) : (rc1[1] - rc2[1])
    
    return len1 + len2
    
}
