import Foundation

func solution(_ n:Int) -> Int {
    var num:String = ""
    var answer:Int = 0
    for i in String(n, radix: 3).reversed() {
        num.append(i)
    }
    for i in 0..<num.count {
        let index = num.index(num.startIndex, offsetBy: i)
        answer += Int(String(num[index]))! * Int(pow(Double(3), Double(num.count - i - 1)))
    }
    return answer
}
solution(45) //7
solution(78413450) //110105530
