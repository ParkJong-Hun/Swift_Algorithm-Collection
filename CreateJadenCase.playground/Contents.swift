func solution(_ s:String) -> String {
    var answer:String = ""
    answer.append(s[s.index(s.startIndex, offsetBy: 0)].uppercased())
    for i in 1..<s.count {
        let beforeIndex = s.index(s.startIndex, offsetBy: i - 1)
        let currentIndex = s.index(s.startIndex, offsetBy: i)
        if(s[beforeIndex] == " " && s[currentIndex].isCased) {
            answer.append(s[currentIndex].uppercased())
        } else if(s[currentIndex].isCased){
            answer.append(s[currentIndex].lowercased())
        } else {
            answer.append(s[currentIndex])
        }
    }
    return answer
}
solution("3people unFollowed me")   //"3people Unfollowed Me"
solution("for the last week")       //"For The Last Week"
