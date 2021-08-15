import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    for i in skill_trees {
        var stack:String = skill
        var visited:String = ""
        for j in 0..<i.count {
            let idx = i.index(i.startIndex, offsetBy: j)
            if stack.contains(i[idx]) {
                if i[idx] == stack.first {
                    stack.removeFirst()
                } else {
                    break
                }
            }
            visited.append(i[idx])
            if stack.isEmpty || visited == i{
                answer += 1
                break
            }
        }
    }
    return answer
}
solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"])  //2
solution("CBD", ["CED"])                            //0
solution("CBD", ["ASF"])                            //1
solution("CBD", ["CEFD"])                           //0
solution("C", ["BACDE", "CBADF", "AECB", "BDA"])    //4
