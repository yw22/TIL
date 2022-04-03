
let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]

var a = board
var num : [Int] = []
for i in moves{
    for j in 0...4{
        if a[j][i - 1] != 0 {
            num.append(a[j][i - 1])
            a[j][i - 1] = 0
        }
    }
}
print(a)
print(num)
for i in 1...((num.count) - 1){
    if num[i - 1] == num[i]{
        num.remove(at : i - 1)
        num.remove(at : i - 1)
    }
}

print(num.count)
