func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer:Int = 0
    for i in 0..<absolutes.count {
        if signs[i] {
            answer += absolutes[i]
        } else {
            answer -= absolutes[i]
        }
    }
    return answer
}
solution([4,7,12], [true,false,true])
