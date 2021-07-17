import Foundation

func solution(_ n:Int) -> Int {"\(n)".map{$0.hexDigitValue!}.reduce(0){$0 + $1}}
