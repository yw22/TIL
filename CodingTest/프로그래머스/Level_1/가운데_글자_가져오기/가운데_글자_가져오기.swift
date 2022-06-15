func solution(_ name:String) -> String {
    var strings = ""
    if name.count % 2 != 0 {
        strings += String(name[name.index(name.startIndex, offsetBy: name.count / 2)])
    } else{
        strings += String(name[name.index(name.startIndex, offsetBy: (name.count / 2) - 1)])
        strings += String(name[name.index(name.startIndex, offsetBy: (name.count / 2))])
    }
    return strings
}