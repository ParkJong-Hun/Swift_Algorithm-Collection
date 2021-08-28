import Foundation

func solution(_ s:String) -> String {
    var answer:String = ""
    let splitS = s.components(separatedBy: " ")
    for i in 0..<splitS.count {
        let subS = splitS[i]
        for j in 0..<splitS[i].count {
            let index = subS.index(subS.startIndex, offsetBy: j)
            j % 2 == 0 ? answer.append(subS[index].uppercased()) : answer.append(subS[index].lowercased())
        }
        answer.append(" ")
    }
    answer.removeLast()
    return answer
}
solution("try hello world")
