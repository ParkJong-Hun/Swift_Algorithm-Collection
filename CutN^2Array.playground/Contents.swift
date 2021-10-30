import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer = [Int]()
    var left = left
    
    while (left <= right) {
        let row = left / Int64(n)
        let column = left % Int64(n)
        answer.append(Int(max(row + 1, column + 1)))
        left += 1
    }
    return answer
}

solution(3, 2, 5) // [3,2,2,3]
//solution(4, 7, 14) // [4,3,3,3,4,4,4,4]

/*
[1,2,3]
[2,2,3]
[3,3,3]
 row = 2/3 = 0
 column = 2%3 = 2
 */
