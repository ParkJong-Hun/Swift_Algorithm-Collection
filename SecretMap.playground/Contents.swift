func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for i in 0..<n {
        var a = String(arr1[i] | arr2[i], radix: 2)
        if n > a.count {
            for i in 0..<n - a.count {
                let index = a.index(a.startIndex, offsetBy: i)
                a.insert("0", at: index)
            }
        }
        var row:String = ""
        for j in 0..<a.count {
            let index = a.index(a.startIndex, offsetBy: j)
            if a[index] == "1" {
                row.append("#")
            } else {
                row.append(" ")
            }
        }
        answer.append(row)
    }
    return answer
}
solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10])
