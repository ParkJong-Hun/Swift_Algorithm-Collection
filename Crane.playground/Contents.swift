import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var realBoard = board
    var answer:Int = 0
    var basket:[Int] = []
    for i in 0..<moves.count {
        for j in 0..<realBoard.count {
            if realBoard[j][moves[i] - 1] != 0 {
                basket.append(realBoard[j][moves[i] - 1])
                realBoard[j][moves[i] - 1] = 0
                break
            }
        }
        //print(basket)
        if basket.count >= 2 {
            if basket[basket.count - 1] == basket[basket.count - 2] {
                //print(basket)
                basket.removeLast()
                basket.removeLast()
                //print(basket)
                answer += 2
            }
        }
    }
    return answer
}




solution([
            [0,0,0,0,0],
            [0,0,1,0,3],
            [0,2,5,0,1],
            [4,2,4,4,2],
            [3,5,1,3,1]
], [1,5,3,5,1,2,1,4]) //4
