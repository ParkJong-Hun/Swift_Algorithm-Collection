import Foundation

func solution(_ record:[String]) -> [String] {
    var history:[String] = []
    var history_id:[String] = []
    var nickname:[String:String] = [:]
    var answer:[String] = []
    for i in record {
        let temp = i.components(separatedBy: " ")
        history.append(temp[temp.startIndex])
        history_id.append(temp[temp.index(after: temp.startIndex)])
        if temp[temp.startIndex] != "Leave" {
            nickname.updateValue(temp[temp.index(after: temp.index(after: temp.startIndex))], forKey: temp[temp.index(after: temp.startIndex)])
        }
    }
    for i in history.indices {
        switch history[i] {
        case "Enter":
            answer.append("\(nickname[history_id[i]]!)님이 들어왔습니다.")
            break
        case "Leave":
            answer.append("\(nickname[history_id[i]]!)님이 나갔습니다.")
            break
        default:
            break
        }
    }
    return answer
}
solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
