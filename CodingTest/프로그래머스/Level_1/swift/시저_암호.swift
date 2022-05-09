struct password1 {
  func lowerAscString(_ a : UInt8) -> String {
    var num = a
    if a > 90 { num -= 26 }
    return String(UnicodeScalar(num))
  }

  func upperAscString(_ a : UInt8) -> String {
    var num = a
    if a > 122 { num -= 26 }
    return String(UnicodeScalar(num))
  }

  func solution(_ s:String, _ n:Int) -> String {
    var newString = ""
    s.forEach {
      var num = $0.asciiValue!
      if (num > 64 && num < 91) {
        num += UInt8(n)
        newString += lowerAscString(num)
      } else if (num > 96 && num < 123) {
        num += UInt8(n)
        newString += upperAscString(num)
      } else {
        newString += " "
      }
    }
    
    return newString
  }
}

//-- switch 구문과 utf8을 활용한 방법
struct password2 {
  func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
  }
}

//-- index를 활용한 방법
struct password3 {
  func solution(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alphabets[(index + n) % 26]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
        })
    }
}

