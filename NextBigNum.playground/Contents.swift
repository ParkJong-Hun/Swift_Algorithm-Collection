import Foundation
func solution(_ n:Int) -> Int
{
    var answer:Int = n
    while(true) {
        answer += 1
        if(String(answer, radix: 2).filter{$0 == "1"} == String(n, radix:2).filter{$0 == "1"}) {
            break
        }
    }
    return answer
}
solution(78) //83
solution(15) //23
