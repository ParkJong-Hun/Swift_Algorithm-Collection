func solution(_ arr:[Int]) -> [Int] {
    var answer:[Int] = []
    var min = 1000
    for i in 0..<arr.count {
        if(min > arr[i]) {
            min = arr[i]
        }
    }
    for i in 0..<arr.count {
        if(min != arr[i]) {
            answer.append(arr[i])
        }
    }
    return answer.isEmpty ? [-1] : answer
}
solution([4,3,2,1])
