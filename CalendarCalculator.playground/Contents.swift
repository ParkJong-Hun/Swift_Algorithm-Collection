func solution(_ a:Int, _ b:Int) -> String {
    var day:Int = 0
    let answer:[String] = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let monthToDay:[Int: Int] = [
        1: 0,
        2: 31,
        3: 29,
        4: 31,
        5: 30,
        6: 31,
        7: 30,
        8: 31,
        9: 31,
        10: 30,
        11: 31,
        12: 30,
    ]
    for i in 1...a {
        day += monthToDay[i]!
    }
    day += b - 1
    let index = answer.index(answer.startIndex, offsetBy: day % 7)
    return answer[index]
}
solution(2, 1)
