import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var money = Int64(money)
    let price = Int64(price)
    for i in 1...count { money -= price * Int64(i) }

    return money < 0 ? -money : Int64(0)
}

// -- 수열을 사용하고싶을때
// let totalPrice = price * (count * (count+1)/2)