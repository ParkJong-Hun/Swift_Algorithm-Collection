import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let tester:[[Int]] = [
        [1, 2, 3, 4, 5, 1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    var count:[Int] = [0, 0, 0]
    var max:Int = 0
    var answer:[Int] = []
    for i in 0..<answers.count {
        for j in 0...2 {
            if(answers[i] == tester[j][i % tester[j].count]) {
                count[j] += 1
            }
        }
    }
    for i in 0..<count.count {
        if max <= count[i] {
            max = count[i]
        }
    }
    for i in 0..<count.count {
        if max == count[i] {
            answer.append(i + 1)
        }
    }
    return answer
}
solution([1,2,3,4,5])
solution([1,3,2,4,2])
solution([3,3,1,1,1,1,2,3,4,5])
