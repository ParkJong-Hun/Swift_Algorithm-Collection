func solution(_ n:Int64) -> [Int] {
    var x:Int = Int(n)
    var a:Int = x
    var answer:[Int] = []
    while (x > 10) {
        a %= 10
        if(a < 10) {
            answer.append(a)
            x = x / 10
            a = x
        }
    }
    answer.append(x)
    return answer
}
solution(54321)
