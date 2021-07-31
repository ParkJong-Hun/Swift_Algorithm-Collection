import Foundation
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer:[[Int]] = []
    for i in 0..<arr1.count {
        var temp:[Int] = []
        for k in 0..<arr2[0].count {
            var sum = 0
            for j in 0..<arr2.count {
                sum += arr1[i][j] * arr2[j][k]
            }
            temp.append(sum)
        }
        answer.append(temp)
    }
    return answer
}
solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]])                            //[[15, 15], [15, 15], [15, 15]]
solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]])  //[[22, 22, 11], [36, 28, 18], [29, 20, 14]]
