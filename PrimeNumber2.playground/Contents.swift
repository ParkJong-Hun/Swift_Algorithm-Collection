func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var che = [Int](repeating: 0, count: n + 1)
    for i in 2...n {
        che[i] = i
    }
    for i in 2...n {
        if che[i] == 0 {
            continue
        }
        for j in stride(from: i * i, through: n, by: i) {
            che[j] = 0
        }
    }
    for i in 2...n {
        if che[i] != 0 {
            answer = answer + 1
        }
    }
    return answer
}
solution(10)
