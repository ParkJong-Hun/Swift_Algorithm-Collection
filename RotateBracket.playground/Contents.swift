import Foundation

func solution(_ s:String) -> Int {
    var answer:Int = 0
    var str:String = s
    var stack:[String] = []
    for _ in 0..<s.count {
        stack.removeAll()
        answer = isRightBrackets(rotate(&str), &stack) ? answer + 1 : answer
    }
    return answer
}
func isRightBrackets(_ s:String, _ stack:inout [String]) -> Bool {
    let brackets:[String:String] = ["{":"}",
                                    "[":"]",
                                    "(":")"]
    for bracket in s {
        if brackets.keys.contains(String(bracket)) {
            stack.append(String(bracket))
        } else {
            if !stack.isEmpty {
                if brackets[stack.last!] != String(bracket) {
                    return false
                } else {
                    stack.removeLast()
                }
            } else {
                return false
            }
        }
    }
    return stack.isEmpty ? true : false
}
func rotate(_ str:inout String) -> String {
    str.append(str.removeFirst())
    return str
}
solution("[](){}")  //3
//solution("}]()[{")  //2
//solution("[)(]")    //0
//solution("}}}")     //0
