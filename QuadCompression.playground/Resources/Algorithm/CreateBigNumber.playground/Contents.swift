import Foundation
 
func solution(_ number:String, _ k:Int) -> String {
    let char = number.map{ String($0) }
    var stack:[String] = []
    var count = 0
    for i in 0..<number.count{
        while count < k && !stack.isEmpty && stack.last! < char[i] {
            stack.removeLast()
            count += 1
        }
        if count >= k {
            for j in i..<char.count {
                stack.append(char[j])
            }
            break
        } else {
            stack.append(char[i])
        }
    }
    return String(stack.joined().prefix(number.count - k))
}
solution("1924", 2)         //94        //12
solution("1231234", 3)      //3234      //121
solution("4177252841", 4)   //775841    //4122
