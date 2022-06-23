import Foundation

//-- 유니코드 활용
func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    let s = Array(s).map{String($0)}
    s.forEach{ char in
        switch char{
        case("A"..."Z"):
            let num = Int(UnicodeScalar(char)!.value) - 65 + n
            result += String(UnicodeScalar((num % 26) + 65)!)
        case("a"..."z"):
            let num = Int(UnicodeScalar(char)!.value) - 97 + n
            result += String(UnicodeScalar((num % 26) + 97)!)
        default:
            result += char
        }
    
    }
    
    return result
}


//-- utf8 활용
import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    let s = s.utf8.map{Int($0)}
    s.forEach{ 
        switch $0{
        case 65...91:
            let code = ($0 + n - 65) % 26 + 65
            result += String(UnicodeScalar(code)!)
        case 97...123:
            let code = ($0 + n - 97) % 26 + 97
            result += String(UnicodeScalar(code)!)
            
        default:
            result += String(UnicodeScalar($0)!)
        }
    
    }
    
    return result
}

//-- utf8 활용2

func solution(_ s:String, _ n:Int) -> String {
    let s = s.utf8.map{
          switch Int($0){
          case 65...91:
              let code = ($0 + n - 65) % 26 + 65
          case 97...123:
              let code = ($0 + n - 97) % 26 + 97
          default:
              return " "
          }
          return String(UnicodeScalar(code)!)
      }
    
    return s.joined(" ")
}