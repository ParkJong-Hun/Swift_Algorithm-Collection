import Foundation

func solution(_ n:Int) -> Int {
    var i = 1
    while n % i != 1 {
        i += 1
    }
    return i
}
solution(10)//3
solution(12)//11
