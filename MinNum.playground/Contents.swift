import Foundation
func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let sortedA = A.sorted(by: <)
    let sortedB = B.sorted(by: >)
    for i in 0..<sortedA.count {
        ans += sortedA[i] * sortedB[i]
    }
    return ans
}
solution([1, 4, 2], [5, 4, 4])  //29
solution([1,2], [3,4])          //10
