func solution(_ s:String) -> String {
    if s.count % 2 == 0 {
        let middleIndex = s.index(s.startIndex, offsetBy: s.count/2 - 1)
        let endIndex = s.index(s.startIndex, offsetBy: s.count/2)
        return String(s[middleIndex...endIndex])
    } else
    {
        let middleIndex = s.index(s.startIndex, offsetBy: s.count/2)
        return String(s[middleIndex])
    }
}
solution("qwer")
