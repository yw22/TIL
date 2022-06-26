func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    commands.forEach{
        var newArr = array[($0[0] - 1)...($0[1] - 1)].sorted()
        answer.append(newArr[$0[2] - 1])
    }
    return answer
}