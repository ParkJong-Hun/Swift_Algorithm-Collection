import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var answer:[Int] = [0, 0]
    var history:[String] = []
    var count = 1
    for i in words.indices {
        if count % n == 1 {
            count = 1
        }
        if history.contains(words[i]) || (i > 0 && history.last!.last != words[i].first){
            answer[0] = count
            answer[1] = i / n + 1
            break
        }
        history.append(words[i])
        count += 1
    }
    return answer
}
solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]) //3, 3
solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]) //0, 0 (탈락자가 없어서)
solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]) //1, 3
