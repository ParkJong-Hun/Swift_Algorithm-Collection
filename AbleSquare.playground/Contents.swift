import Foundation
//유클리드 호제법
func solution(_ w:Int, _ h:Int) -> Int64{
    var a = w
    var b = h
    while a%b != 0 {
        let x = a%b
        a = b
        //최대공약수
        b = x
    }
    //넓이 - (가로 + 세로 - 최대공약수(겹치는 부분))
    return Int64(w*h-(w+h-b))
}
solution(8, 12) //80
