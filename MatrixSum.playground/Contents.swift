func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer:[[Int]] = []
    for i in 0..<arr1.count {
        var sum:[Int] = []
        for j in 0..<arr1[0].count {
            sum.append(arr1[i][j] + arr2[i][j])
        }
        answer.append(sum)
    }
    return answer
}
solution([[1,2],[2,3]], [[3,4],[5,6]])
solution([[1],[2]], [[3],[4]])
