func solution(_ s:String) -> Int {
    var answer:String = ""
    let word:[String: String] = [
        "zero" : "0",
        "one" : "1",
        "two" : "2",
        "three" : "3",
        "four" : "4",
        "five" : "5",
        "six" : "6",
        "seven" : "7",
        "eight" : "8",
        "nine" : "9",
        "ten" : "10"
    ]
    var sWord:String = ""
    for i in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        if s[index].isNumber {
            answer.append(s[index])
        } else {
            sWord.append(s[index])
            if word[sWord] != nil {
                answer.append(word[sWord]!)
                sWord.removeAll()
            }
        }
    }
    return Int(answer)!
}
solution("one4seveneight")
solution("23four5six7")
