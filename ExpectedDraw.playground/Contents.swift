import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var a = a
    var b = b
    var answer = 0
    while a != b {
        a = a % 2 == 0 ? a / 2 : a / 2 + 1
        b = b % 2 == 0 ? b / 2 : b / 2 + 1
        answer += 1
    }
    return answer
}
solution(8, 4, 7) //3
solution(8, 4, 5) //3
solution(8, 1, 2) //1
solution(4, 1, 3) //2
