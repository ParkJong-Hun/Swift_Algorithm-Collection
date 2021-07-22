import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer:[Int] = []
    for i in 0..<numbers.count {
        for j in 1..<numbers.count {
            if i != j {
                if !(answer.contains(numbers[i] + numbers[j])) {
                    answer.append(numbers[i] + numbers[j])
                }
            }
        }
    }
    return answer.sorted(by: <)
}
solution([2,1,3,4,1])
