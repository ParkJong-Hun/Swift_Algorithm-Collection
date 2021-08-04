func solution(_ s:String) -> Bool {
    var a:[Character] = []
    for i in s {
        if i == "(" {
            a.append(i)
        } else {
            if a.isEmpty {
                return false
            }
            a.popLast()
        }
    }
    return a.isEmpty ? true : false
}
solution("()()")    //true
solution("(())()")  //true
solution(")()(")    //false
solution("(()(")    //false
