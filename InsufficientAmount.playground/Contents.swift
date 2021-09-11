import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var total:Int64 = 0
    for i in 1...count {
        let current_price:Int64 = Int64(price) * Int64(i)
        total += current_price
    }
    return total - Int64(money) > 0 ? total - Int64(money) : 0
}
solution(3, 20, 4) //10
