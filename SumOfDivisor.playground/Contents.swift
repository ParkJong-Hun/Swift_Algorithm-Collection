func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    var sum = 0
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    return sum
}
solution(12)
solution(5)
