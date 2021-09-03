import Foundation

/*func solution(_ s:String) -> Int{
    var str = s
    var changed = false
    while(true) {
        for i in 0..<str.count - 1 {
            let index = str.index(str.startIndex, offsetBy: i)
            let afterindex = str.index(after: index)
            if str[index] == str[afterindex] {
                str.remove(at: index)
                str.remove(at: index)
                changed = true
                break
            }
            changed = false
        }
        if str.isEmpty || !changed {
            break
        }
    }
    return str.isEmpty ? 1 : 0
}*/
func solution(_ s:String) -> Int{
    var stack:String = ""
    //Array(s)는 참조할 때 O(1) 속도!
    let str = Array(s)
     for i in str.indices {
         if stack.isEmpty { stack.append(str[i]) }
         else {
             if stack.last! == str[i] { stack.removeLast() }
             else { stack.append(str[i]) }
         }
     }

     return stack.isEmpty ? 1 : 0
}
solution("baabaa")//1
solution("cdcd")//0
