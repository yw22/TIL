import Foundation

// 한줄에 n과 m을 입력받기
let input = readLine()!.split(separator: " ").map{Int($0)!}
// n x m의 (*)찍기
let (n,m) = (input[1], input[0])
for _ in 0 ..< n{
  for _ in 0 ..< m{
    print("*", terminator: "")
  }
  print()
}


// Array(repeating: ,count : ) -> 배열 초기화하여 joined으로 병합한후 m줄 반복

for _ in 0..<input[0] {
  print(Array(repeating: "*", count: 10).joined())
}

// components로 입력받기

let n = readLine()!.components(separated: [" "]).map { Int($0)! }
print(String(repeating: String(repeating: "*", count: n[0])+"\n", count: n[1]))
