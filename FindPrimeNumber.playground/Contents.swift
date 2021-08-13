import Foundation

func solution(_ numbers:String) -> Int {
    func dfs(_ cnt: Int, _ totalCnt: Int, _ list: [String.Element], _ current: String) {
        if cnt == totalCnt {
            isPrimeNumber(current)
            return
        } else {
            for i in 0..<list.count {
               var removedArray = list
                let k = removedArray.remove(at: i)
                dfs(cnt + 1, totalCnt, removedArray, "\(current)\(k)")
            }
        }
    }
    func isPrimeNumber(_ number: String) {
        var c = 0
        let n = Int(number)!
        if n > 1 {
            for i in 2...n {
                if c > 1 {
                    break
                }
                if n % i == 0 {
                    c += 1
                }
            }
            if c == 1 {
                set.insert(n)
            }
        }
    }
    var set: Set<Int> = []
    let arr = Array(numbers)
    for i in 1...arr.count{
        dfs(0, i, arr, "")
    }
    return set.count
}
solution("17") //3
solution("011") //2
