import Foundation
func solution(_ s:String) -> Int {
    var answer:Int = s.count
    for i in 0..<s.count / 2 {
        var count = 1
        var str = ""
        var temp:String
        let start = s.startIndex
        let end = s.index(s.startIndex, offsetBy: i)
        temp = String(s[start...end])
        var last_index = s.startIndex
        for j in stride(from: i + 1, to: s.count -  i, by: i + 1) {
            let com_start = s.index(s.startIndex, offsetBy: j)
            let com_end = s.index(s.startIndex, offsetBy: j + i)
            if j + 1 != s.count - 1 {
                last_index = s.index(after: com_end)
            }
            if temp == String(s[com_start...com_end]) {
                count += 1
            } else {
                if count > 1 {
                    str.append(String(count))
                    str += temp
                } else {
                    str += temp
                }
                count = 1
                temp = String(s[com_start...com_end])
            }
        }
        if count > 1 {
            str += String(count)
        }
        str += temp
        str += String(s[last_index..<s.endIndex])
        answer = min(answer, str.count)
    }
    return answer
}
solution("aabbaccc")//7
solution("ababcdcdababcdcd")//9
solution("abcabcdede")//8
solution("abcabcabcabcdededededede")//14
solution("abrabcabcadqabcabc")//14
solution("xababcdcdababcdcd")//17
solution("a")//1
solution("aaaaa")//2
solution("aaaaaaaaaa")//3
solution("aaaaaaaaaabbbbbbbbbb")//6
solution("abcdefg")//7
//테스트 케이스 4번 문제 틀림 미해결
