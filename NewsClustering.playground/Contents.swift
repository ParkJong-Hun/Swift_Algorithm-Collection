func solution(_ str1:String, _ str2:String) -> Int {
    return Int(jaccard(str1, str2) * 65536)
}

func jaccard(_ str1:String, _ str2:String) -> Double {
    var intersection_count:Int = 0
    let str1 = str1.filter{$0.isCased}
    let str2 = str2.filter{$0.isCased}
    var union:[String] = []
    var d1:[String] = []
    var d2:[String] = []
    for index in 0..<str1.count - 1 {
        let index1 = str1.index(str1.startIndex, offsetBy: index)
        let index2 = str1.index(after: index1)
        d1.append("\(str1[index1])\(str1[index2])".uppercased())
    }
    for index in 0..<str2.count - 1 {
        let index1 = str2.index(str2.startIndex, offsetBy: index)
        let index2 = str2.index(after: index1)
        d2.append("\(str2[index1])\(str2[index2])".uppercased())
    }
    for ch1 in d1 {
        for ch2 in d2 {
            if ch1 == ch2 {
                intersection_count += 1
            }
        }
    }
    union = Array(Set(d1 + d2)).sorted()
    return Double(intersection_count) / Double(union.count)
}
solution("FRANCE", "french")//16384
solution("handshake", "shake hands")//65536
solution("aa1+aa2", "AAAA12")//43690
//테스트 케이스 3번 틀림
