import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var data:[[String:String]] = []
    var answer:[Int] = []
    for i in info {
        let information = i.components(separatedBy: " ")
        data.append(save_data(information))
    }
    for i in query {
        var q = i.components(separatedBy: " and ")
        let temp = q.removeLast()
        let last = temp.components(separatedBy: " ")
        q.append(last[0])
        q.append(last[1])
        answer.append(execute_query(q, data))
    }
    return answer
}
func save_data(_ information:[String]) -> [String:String] {
    var data:[String:String] = [:]
    data["Language"] = information[0]
    data["Side"] = information[1]
    data["Level"] = information[2]
    data["Food"] = information[3]
    data["Score"] = information[4]
    return data
}
func execute_query(_ query:[String], _ data:[[String:String]]) -> Int {
    var count = 0
    for d in data {
        if d["Language"] == query[0] || query[0] == "-" {
            if d["Side"] == query[1] || query[1] == "-" {
                if d["Level"] == query[2] || query[2] == "-" {
                    if d["Food"] == query[3] || query[3] == "-" {
                        if query[4] != "-" {
                            if Int(d["Score"]!)! >= Int(query[4])! {
                               count += 1
                            }
                        } else {
                            count += 1
                        }
                    }
                }
            }
        }
    }
    return count
}
solution(
    ["java backend junior pizza 150",
     "python frontend senior chicken 210",
     "python frontend senior chicken 150",
     "cpp backend senior pizza 260",
     "java backend junior chicken 80",
     "python backend senior chicken 50"],
    ["java and backend and junior and pizza 100",
     "python and frontend and senior and chicken 200",
     "cpp and - and senior and pizza 250",
     "- and backend and senior and - 150",
     "- and - and - and chicken 100",
     "- and - and - and - 150"])
//[1,1,1,1,2,4]
//효율성 테스트 비통과(O(n2)이라서 아마도 해쉬 써야할듯?)
