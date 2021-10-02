import Foundation

func solution(_ relation:[[String]]) -> Int {
    var cases:[[Int]] = []
    func combination(n: [Int], m: Int, current index: Int, pickedArray: [Int]) {
        if m == 0 {
            cases.append(pickedArray)
        } else if index == n.count {
            return
        } else {
            var newSelected = pickedArray
            newSelected.append(n[index])
            combination(n: n, m: m-1, current: index+1, pickedArray: newSelected)
            combination(n: n, m: m, current: index+1, pickedArray: pickedArray)
        }
    }
    let colSize = Array(0..<relation[0].count)
    var candidateKeys:[[Int]] = []
    for i in 0..<colSize.count {
        combination(n: colSize, m: i+1, current: 0, pickedArray: [])
    }
    outer: for c in cases {
        let set = Set(c)
        for key in candidateKeys {
            if set.isSuperset(of: key) {
                continue outer
            }
        }
        var attributeArrays:[[String]] = []
        for row in relation {
            var attributeArray:[String] = []
            for i in c {
                attributeArray.append(row[i])
            }
            if !attributeArrays.contains(attributeArray) {
                attributeArrays.append(attributeArray)
            } else {
                break
            }
        }
        if attributeArrays.count == relation.count {
            candidateKeys.append(c)
        }
    }
    return candidateKeys.count
}
solution([["100","ryan","music","2"],
          ["200","apeach","math","2"],
          ["300","tube","computer","3"],
          ["400","con","computer","4"],
          ["500","muzi","music","3"],
          ["600","apeach","music","2"]])
