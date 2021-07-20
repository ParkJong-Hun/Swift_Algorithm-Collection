import Foundation

func solution(_ dartResult:String) -> Int {
    var answer:Int = 0
    var round:[Int: String] = [0:"", 1:"", 2:""]
    var roundCounter:Int = 0
    var sum:[Int] = [0, 0, 0]
    for i in 0..<dartResult.count {
        let index = dartResult.index(dartResult.startIndex, offsetBy: i)
        if dartResult[index] != "#" && dartResult[index] != "*" {
            round[roundCounter]?.append(dartResult[index])
        } else {
            round[roundCounter - 1]?.append(dartResult[index])
        }
        if dartResult[index].isCased {
            roundCounter += 1
        }
    }
    for i in round.keys.sorted() {
        var score:String = ""
        var scoreCombo:Int = 0
        var bonus:String = ""
        for j in 0..<round[i]!.count {
            let index = round[i]!.index(round[i]!.startIndex, offsetBy: j)
            if round[i]![index].isNumber {
                score.append(round[i]![index])
            } else if round[i]![index].isCased {
                switch round[i]![index] {
                case "S":
                    scoreCombo = 1
                    break
                case "D":
                    scoreCombo = 2
                    break
                case "T":
                    scoreCombo = 3
                    break
                default:
                    break
                }
            } else {
                bonus.append(round[i]![index])
            }
        }
        let realScore:Int = Int(score)!
        sum[i] += Int(pow(Double(realScore), Double(scoreCombo)))
        switch bonus {
            case "*":
                if i == 0 {
                    sum[i] *= 2
                } else {
                    sum[i-1] *= 2
                    sum[i] *= 2
                }
                break
            case "#":
                sum[i] *= -1
                break
            default:
                break
        }
    }
    for i in 0..<3 {
        answer += sum[i]
        print(sum[i])
    }
    return answer
}
solution("1S2D*3T")//37     O
solution("1D2S#10S")//9     X
solution("1D2S0T")//3       O
solution("1S*2T*3S")//23    O
solution("1D#2S*3S")//5     X
solution("1T2D3D#")//-4     X
solution("1D2S3T*")//59     X
