import Foundation

func triangle(_ n:Int, _ startCount:Int) -> [[Int]] {
    var arr = [[Int]](repeating: [], count: n)
    var count = startCount
    for i in 0..<n {
        arr[i].append(count)
        count += 1
    }
    for _ in 0..<n - 1 {
        arr[n - 1].append(count)
        count += 1
    }
    for i in stride(from: n - 2, to: 0, by: -1) {
        arr[i].append(count)
        count += 1
    }
    if n >= 4 {
        let returned = triangle(n - 3, count)
        for i in 0..<returned.count {
            arr[i + 2].insert(contentsOf: returned[i], at: arr.index(after: arr.startIndex))
        }
    }
    return arr
}

func solution(_ n:Int) -> [Int] {
    let answer:[Int] = triangle(n, 1).flatMap{$0}
    return answer
}
solution(4) //[1,2,9,3,10,8,4,5,6,7]
solution(5) //[1,2,12,3,13,11,4,14,15,10,5,6,7,8,9]
solution(6) //[1,2,15,3,16,14,4,17,21,13,5,18,19,20,12,6,7,8,9,10,11]
