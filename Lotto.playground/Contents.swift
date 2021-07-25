import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var answer:[Int] = []
    var count:Int = 0
    var unknown:Int = 0
    //0 = 알아볼 수 없는 번호
    for i in lottos {
        if i != 0 {
            if win_nums.contains(i) {
                count += 1
            }
        } else {
            unknown += 1
        }
    }
    answer.append(7 - count - unknown)
    answer.append(7 - count)
    for i in 0..<answer.count {
        if answer[i] == 7 {
            answer[i] = 6
        }
    }
    return answer
}
solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]) //[3,5]
solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25])  //[1,6]
solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35])  //[1,1]
