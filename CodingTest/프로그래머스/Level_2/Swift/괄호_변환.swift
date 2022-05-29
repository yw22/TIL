func findUV (_ p: String)-> (String, String) {
    var count = 0, index = p.startIndex

    repeat {
        count += String(p[index]) == "(" ? 1 : -1
        index = p.index(after: index)
    } while count != 0

    return (String(p[..<index]), String(p[index...]))
    
}

func solution(_ p:String) -> String {

    if p.count < 1 {return ""}
    
    let findUV = findUV(p)
    var u = findUV.0, v = findUV.1

    if String(u.first!) == "("{
        return u + solution(v)
    } else {
        u.removeLast()
        u.removeFirst()
        let a = solution(v)
        let b = u.map{String($0) == "(" ? ")" : "("}.joined()
        return "(\(a))\(b)"
    }
}

