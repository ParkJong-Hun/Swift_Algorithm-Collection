import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var ans:Int = 0
    while n > 0 {
        ans += n % 2
        n /= 2
    }
    return ans
}
solution(6) //2
solution(5) //2
solution(5000) //5
