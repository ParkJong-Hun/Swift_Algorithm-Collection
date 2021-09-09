import Foundation

func solution(_ p:String) -> String {
    if p.isEmpty {
        return ""
    } else if isRightBracket(p){
        return p
    }
    var v = p
    var u = String(v.removeFirst())
    while u.filter({$0 == "("}).count != u.filter({$0 == ")"}).count {
        let temp = v.removeFirst()
        u.append(temp)
    }
    if isRightBracket(u) {
        return u + solution(v)
    } else {
        let temp = "(" + solution(v) + ")"
        u.removeFirst()
        u.removeLast()
        u = u.map{
            return $0 == "(" ? ")" : "("
        }.reduce(""){$0 + $1}
        return temp + u
    }
}
func isRightBracket(_ u:String) -> Bool {
    if u.isEmpty {
        return true
    }
    var u = u
    var stack : [String] = []
    while !u.isEmpty {
        let temp = String(u.removeFirst())
        if stack.isEmpty {
            stack.append(temp)
        } else if stack.last! == "(" && temp == ")" {
            stack.removeLast()
        } else {
            stack.append(temp)
        }
    }
    return stack.isEmpty
}
solution("(()())()")//"(()())()"
solution("()))((()")//"()(())()"
