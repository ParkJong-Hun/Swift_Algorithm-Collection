import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    //a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1]
    var answer:Int = 0
    for n in 0..<a.count {
        answer += a[n] * b[n]
    }
    return answer
}
solution([1,2,3,4], [-3,-1,0,2])
