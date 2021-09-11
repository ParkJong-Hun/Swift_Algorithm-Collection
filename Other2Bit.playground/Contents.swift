import Foundation
/*시간 초과
func solution(_ numbers:[Int64]) -> [Int64] {
    var answer:[Int64] = []
    for num in numbers {
        var binary = String(num, radix: 2)
        var another = num
        if num % 2 == 0 {
            another += 1
        } else {
            repeat {
                var dif = 0
                another += 1
                let another_binary = String(another, radix: 2)
                if another_binary.count > binary.count {
                    binary.insert("0", at: binary.startIndex)
                }
                for i in another_binary.indices {
                    dif = another_binary[i] == binary[i] ? dif + 0 : dif + 1
                }
                if dif <= 2{
                    break
                }
            } while (true)
        }
        answer.append(another)
    }
    return answer
}
*/
func solution(_ numbers:[Int64]) -> [Int64] {
    numbers.map {
        if $0 % 2 == 0 {
            return $0 + 1
        } else {
            let last = (~$0) & ($0 + 1)
            //!0111 & 1000
            //1000 & 1000
            //1000
            return ($0 | last) & ~(last >> 1)
            //0111 | 1000 & !(1000 >> 1)
            //1111 & !(1000 >> 1)
            //1111 & !(0100)
            //1111 & 1011
            //1011
            //Decimal(11)
        }
    }
}
solution([2, 7]) //[3,11]
