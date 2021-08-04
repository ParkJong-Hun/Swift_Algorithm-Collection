func solution(_ s:String) -> Bool {
    var ans = false
    var a:[Character] = []
    for i in s {
        if i == "(" {
            a.append(i)
        } else {
            if a.isEmpty {
                return ans
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
