import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    for i in numbers {
        if answer.contains(i) {
            answer[i] = 0
        }
    }
    return answer.reduce(0, {$0+$1})
}
solution([1,2,3,4,6,7,8,0]) //14
