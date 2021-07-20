import Foundation
func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)
    return strings.sorted(by : {(a : String, b : String) -> Bool in return a[index] == b[index] ? a < b : a[index] < b[index]})
}
solution(["sun", "bed", "car"], 1)
