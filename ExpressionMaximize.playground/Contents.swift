import Foundation

func solution(_ expression:String) -> Int64 {
    var answer:[Int64] = []
    //값, 연산자를 각 인덱스에 넣게 변환
    var array:[String] = []
    //임시 저장 변수
    var temp = ""
    //expression의 각 글자 중 연산자이면 그 전까지 임시 변수에 넣은 값들을 array에 추가, 임시 변수를 초기화하고 연산자도 array에 추가
    for ch in expression {
        if ch == "-" || ch == "+" || ch == "*" {
            array.append(temp)
            temp.removeAll()
            array.append(String(ch))
        } else {
            temp.append(ch)
        }
    }
    //임시 저장 변수에 아직 마지막 값이 담겨 있기 때문에 array에 추가
    array.append(temp)
    //dfs, bfs 등을 사용해도 되나, 경우의 수가 적기 때문에 더 편리한 이 방법을 선택
    //answer에 각 우선순위를 이용해 계산한 값을 담음
    answer.append(calculator(expression: array, priority: ["*", "+", "-"]))
    answer.append(calculator(expression: array, priority: ["*", "-", "+"]))
    answer.append(calculator(expression: array, priority: ["+", "-", "*"]))
    answer.append(calculator(expression: array, priority: ["+", "*", "-"]))
    answer.append(calculator(expression: array, priority: ["-", "+", "*"]))
    answer.append(calculator(expression: array, priority: ["-", "*", "+"]))
    //가장 큰 값을 반환
    return answer.max()!
}
//식과 우선순위를 이용해 계산하기
func calculator(expression:[String], priority:[String]) -> Int64 {
    //값을 수정하기 위해 inout으로 해도 되지만, 더 편한 새 변수 선언을 이용
    var result = expression
    //우선순위에서 가장 먼저 오는 것부터 연산하기 위해 for in 변수 사용
    for op in priority {
        //변수에 해당 연산자가 하나도 없으면 반복문 탈출
        while(result.contains(op)) {
            //result 처음부터 끝까지의 인덱스 차례대로 index에 대입
            for index in result.indices {
                //result[index]가 연산자일 경우
                if result[index] == op {
                    //연산자 중 -, +, *를 다르게 연산해서 가장 앞 자리에 계산된 값으로 변경
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
                    /*연산자 위치와, 연산자 바로 다음 위치의 인덱스를 제거(어차피 연산자 위치가 제거되면 그 다음 위치의 값이 원래 연산자 위치로 오기 때문에
                    연산자 위치에서 반복을 두 번 하면 된다.*/
                    result.remove(at: index)
                    result.remove(at: index)
                    break
                }
            }
        }
    }
    //모든 우선순위에 대한 계산을 끝냈으면 result를 하나의 String으로 합친 후, Int64 타입으로 변환한 다음 절대값으로 변환
    return abs(Int64(result.joined())!)
}
solution("100-200*300-500+20")//60420
solution("50*6-3*2")//300
