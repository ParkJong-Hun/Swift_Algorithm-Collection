import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer:String = ""
    var currentLeftHand:Int = 10//"*" == 10
    var currentRightHand:Int = 12//"#" == 12
    for i in numbers {
        var num = i
        if (num == 1 || num == 4 || num == 7) {
            currentLeftHand = num
            answer.append("L")
        } else if (num == 3 || num == 6 || num == 9) {
            currentRightHand = num
            answer.append("R")
        } else if (num == 2 || num == 5 || num == 8 || num == 0) {
            if num == 0 {
                num = 11//0 = 11
            }
            let leftDistance = abs(((num - currentLeftHand) / 3) + ((num - currentLeftHand) % 3))
            let rightDistance = abs(((num - currentRightHand) / 3) + ((num - currentRightHand) % 3))
            if leftDistance < rightDistance {
                currentLeftHand = num
                answer.append("L")
            } else if rightDistance < leftDistance {
                currentRightHand = num
                answer.append("R")
            } else {
                if hand == "right" {
                    currentRightHand = num
                    answer.append("R")
                } else if hand == "left" {
                    currentLeftHand = num
                    answer.append("L")
                }
            }
        }
    }
    return answer
}
solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
