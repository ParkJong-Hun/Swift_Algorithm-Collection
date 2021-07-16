import Foundation
 
func solution(_ d:[Int], _ budget:Int) -> Int {
    var answer:Int = 0
    var sum:Int = 0
    let sortedD:[Int] = d.sorted()
    for i in 0..<d.count {
        sum += sortedD[i]
        if(sum > budget) {
            break
        } else {
            answer += 1
        }
    }
    return answer
}
solution([1,3,2,5,4], 9)
