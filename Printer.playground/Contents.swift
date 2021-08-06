func solution(_ priorities:[Int], _ location:Int) -> Int {
    var answer = 0
    var priorities = priorities
    var index = location
    while true {
        if priorities.first == priorities.max() {
            answer += 1
            priorities.removeFirst()
            if index == 0 {
                break
            } else {
                index -= 1
            }
        } else {
            let temp = priorities.removeFirst()
            priorities.append(temp)
            if index == 0 {
                index = priorities.count - 1
            } else {
                index -= 1
            }
        }
    }
    return answer
}
solution([2, 1, 3, 2], 2)       //1
solution([1, 1, 9, 1, 1, 1], 0) //5
