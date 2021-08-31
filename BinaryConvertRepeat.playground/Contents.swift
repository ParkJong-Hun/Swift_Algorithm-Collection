import Foundation

func solution(_ s:String) -> [Int] {
    var deleted:Int = 0
    var count:Int = 0
    var x = s
    repeat {
        count += 1
        deleted += x.filter{$0 == "0"}.count
        x = x.filter{$0 == "1"}
        x = String(x.count, radix: 2)
    } while(x != "1")
    return [count, deleted]
}
solution("110010101001")    //[3,8]
solution("01110")           //[3,3]
solution("1111111")         //[4,1]
