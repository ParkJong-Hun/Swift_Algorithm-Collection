import Foundation

func solution(_ numbers:[Int]) -> String {
    let sort:[Int] = numbers.sorted{Int("\($0)\($1)")! > Int("\($1)\($0)")!}
    return sort[0] == 0 ? "0" : sort.reduce("") {"\($0)" + "\($1)"}
}
solution([6, 10, 2])        //"6210"
solution([3, 30, 34, 5, 9]) //"9534330"
