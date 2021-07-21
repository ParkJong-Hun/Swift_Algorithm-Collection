import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer:Int = 0
    var people = [Int](repeating: 1, count: n)
    for i in 0..<lost.count {
        people[lost[i]-1] -= 1
    }
    for i in 0..<reserve.count {
        people[reserve[i]-1] += 1
    }
    for i in 0..<people.count {
        if people[i] == 0 {
            if i == 0 {
                if people[i + 1] == 2 {
                    people[i] += 1
                    people[i + 1] -= 1
                }
            } else if i == people.count - 1 {
                if people[i - 1] == 2 {
                    people[i] += 1
                    people[i - 1] -= 1
                }
            } else {
                if people[i - 1] == 2 {
                    people[i] += 1
                    people[i - 1] -= 1
                } else if people[i + 1] == 2{
                    people[i] += 1
                    people[i + 1] -= 1
                }
            }
        }
    }
    for i in 0..<people.count {
        if people[i] >= 1 {
            answer += 1
        }
    }
    return answer
}
solution(5, [2,4], [1,3,5]) //5 //20202
solution(5, [2,4], [3])     //4 //10201
solution(4, [1,2], [3])     //3 //0021
solution(3, [3], [1])       //2 //210
solution(3, [3], [1, 2])    //3 //220
