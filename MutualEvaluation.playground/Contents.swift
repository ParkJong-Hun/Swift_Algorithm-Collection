import Foundation

func solution(_ scores:[[Int]]) -> String {
    var answer:[String] = []
    for i in 0..<scores.count {
        var score = scores.map{$0[i]}
        var check = -1
        if score[i] == score.max() ?? 0 || score[i] == score.min() ?? 0 {
            check = score.remove(at: i)
        }
        if check != -1 {
            for s in score {
                if s == check {
                    score.append(s)
                    break
                }
            }
        }
        let avg = score.reduce(0){$0 + $1} / score.count
        answer.append(rank(avg))
    }
    return answer.joined()
}
func rank(_ score:Int) -> String {
    switch score {
    case 90...100:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    case 50..<70:
        return "D"
    default:
        return "F"
    }
}
solution([[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]])//"FBABD"
solution([[50,90],[50,87]])//"DA"
