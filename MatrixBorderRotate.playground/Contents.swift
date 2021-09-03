import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    func rotate(startX:Int, startY:Int, endX:Int, endY:Int) {
        var temp:[Int] = []
        for i in startY...endY {
            temp.append(matrix[startX][i])
        }
        for i in startX + 1...endX {
            temp.append(matrix[i][endY])
        }
        for i in (startY...endY - 1).reversed() {
            temp.append(matrix[endX][i])
        }
        if startX + 1 < endX - 1 {
            for i in (startX + 1...endX - 1).reversed() {
                temp.append(matrix[i][startY])
            }
        }
        print(temp)
        answer.append(temp.min()!)
        temp.insert(temp.removeLast(), at: 0)
        for i in startY...endY {
            matrix[startX][i] = temp.removeFirst()
        }
        for i in startX + 1...endX {
            matrix[i][endY] = temp.removeFirst()
        }
        for i in (startY...endY - 1).reversed() {
            matrix[endX][i] = temp.removeFirst()
        }
        if startX + 1 < endX - 1 {
            for i in (startX + 1...endX - 1).reversed() {
                matrix[i][startY] = temp.removeFirst()
            }
        }
    }
    var answer:[Int] = []
    var matrix:[[Int]] = [[Int]](repeating: [], count: rows)
    var count = 1
    for row in 0..<matrix.count {
        for _ in 0..<columns {
            matrix[row].append(count)
            count += 1
        }
    }
    for query in queries {
        rotate(startX: query[0] - 1, startY: query[1] - 1, endX: query[2] - 1, endY: query[3] - 1)
    }
    return answer
}
solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]) //[8, 10, 25]
solution(3, 3, [[1,1,2,2],[1,2,2,3],[2,1,3,2],[2,2,3,3]]) //[1, 1, 5, 3]
solution(100, 97, [[1,1,100,97]]) //1
//3~11번 실패
