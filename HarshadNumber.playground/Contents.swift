func solution(_ x:Int) -> Bool {x % "\(x)".map{$0.hexDigitValue!}.reduce(0){$0+$1} == 0}
solution(11)
solution(12)
