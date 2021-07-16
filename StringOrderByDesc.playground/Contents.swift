func solution(_ s:String) -> String {
    return s.sorted{$0 > $1}
}
solution("bdca")
