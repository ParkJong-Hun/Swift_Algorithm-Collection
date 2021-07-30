func solution(_ s:String) -> String {
    var answer = ""
    var num:[Int] = []
    var temp = ""
    for i in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        if s[index] != " " {
            temp.append(s[index])
        } else {
            num.append(Int(temp)!)
            temp = ""
        }
        if i == s.count - 1 {
            num.append(Int(temp)!)
        }
    }
    answer = "\(num.min()!) \(num.max()!)"
    return answer
}
solution("1 2 3 4") //1 4
