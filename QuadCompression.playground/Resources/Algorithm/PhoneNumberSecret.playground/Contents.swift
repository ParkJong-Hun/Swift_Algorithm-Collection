func solution(_ phone_number:String) -> String {
    var answer:String = ""
    for i in 0..<phone_number.count {
        if(i < phone_number.count - 4) {
            answer.append("*")
        } else {
            answer.append(phone_number[phone_number.index(phone_number.startIndex, offsetBy: i)])
        }
    }
    return answer
}
solution("01033334444")
