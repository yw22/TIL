func solution(_ strings:[String], _ n:Int) -> [String] {
     var dic : [String: String] = [:]
  
    strings.forEach {
        let stringsIndex = $0.index($0.startIndex, offsetBy: n)
        dic[$0] = String($0[stringsIndex])
    }

    return dic.sorted{ 
        if $0.1 == $1.1{ return $0.0 < $1.0 }
        return $0.1 < $1.1
        }.map{$0.0}
}