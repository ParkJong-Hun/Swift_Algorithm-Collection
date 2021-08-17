import Foundation

func solution(_ citations:[Int]) -> Int {
    var answer = -1
    let sort = citations.sorted(by: >)
    for i in 0..<sort.count {
        let value = sort[i]
        let h = i + 1
        if h > value {
            answer = i
            break
        }
    }
    if answer == -1 {
        return sort.count
    }
    return answer
}
solution([3, 0, 6, 1, 5]) //3
solution([20, 19, 18, 1]) //3
solution([22, 42])        //2
solution([5, 5, 5, 5])    //4
solution([10, 100])       //2
solution([6, 6, 6, 6, 6, 6])   //6
solution([2, 2, 2])       //2
