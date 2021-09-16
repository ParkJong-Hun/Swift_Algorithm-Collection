import Foundation

func solution(_ expression:String) -> Int64 {
    var answer:[Int64] = []
    var array:[String] = []
    var temp = ""
    for ch in expression {
        if ch == "-" || ch == "+" || ch == "*" {
            array.append(temp)
            temp.removeAll()
            array.append(String(ch))
        } else {
            temp.append(ch)
        }
    }
    array.append(temp)
    answer.append(calculator(expression: array, priority: ["*", "+", "-"]))
    answer.append(calculator(expression: array, priority: ["*", "-", "+"]))
    answer.append(calculator(expression: array, priority: ["+", "-", "*"]))
    answer.append(calculator(expression: array, priority: ["+", "*", "-"]))
    answer.append(calculator(expression: array, priority: ["-", "+", "*"]))
    answer.append(calculator(expression: array, priority: ["-", "*", "+"]))
    return answer.max()!
}

func calculator(expression:[String], priority:[String]) -> Int64 {
    var result = expression
    print(result)
    for op in priority {
        while(result.contains(op)) {
            for index in result.indices {
                if result[index] == op {
                    switch op {
                    case "-":
                        result[result.index(before: index)] = String(Int64(result[result.index(before: index)])! - Int64(result[result.index(after: index)])!)
                        break
                    case "+":
                        result[result.index(before: index)] = String(Int64(result[result.index(before: index)])! + Int64(result[result.index(after: index)])!)
                        break
                    case "*":
                        result[result.index(before: index)] = String(Int64(result[result.index(before: index)])! * Int64(result[result.index(after: index)])!)
                        break
                    default:
                        break
                    }
                    print(result)
                    result.remove(at: index)
                    result.remove(at: index)
                    break
                }
            }
        }
    }
    return abs(Int64(result.joined())!)
}
solution("100-200*300-500+20")//60420
solution("50*6-3*2")//300
