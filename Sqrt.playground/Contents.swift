import Foundation
func solution(_ n:Int64) -> Int64 {
    let a = Double(n)
    if Int64(pow(sqrt(a), 2)) == n {
        if Int64(pow(sqrt(a) + 1, 2)) == Int64(sqrt(a) + 1) * Int64(sqrt(a) + 1) {
            return Int64(pow(sqrt(a) + 1, 2))
        } else {
            return -1
        }
    } else {
        return -1
    }
}
solution(121)
solution(3)
solution(122)
solution(120)
