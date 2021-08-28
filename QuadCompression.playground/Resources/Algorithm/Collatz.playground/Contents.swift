func solution(_ num:Int) -> Int {
    var count = 0
    var result = num
    while(result != 1) {
        if count >= 500 {
            return -1
        }
        if result % 2 == 0 {
            result /= 2
        } else {
            result = result * 3 + 1
        }
        count += 1
    }
    return count
}
solution(6)
solution(16)
solution(7999999)
