func solution(_ s:String) -> Bool {(s.count == 4 || s.count == 6) && (s.filter{$0.isNumber} == s)}
solution("1234")
solution("a123")
