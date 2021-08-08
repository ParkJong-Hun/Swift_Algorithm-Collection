import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var answer = 0
    var countBoard = board
    for i in 1..<countBoard.count {
        for j in 1..<countBoard[i].count {
            if (countBoard[i][j] != 0) {
                countBoard[i][j] += min(countBoard[i - 1][j], countBoard[i][j - 1], countBoard[i - 1][j - 1])
                answer = max(answer, countBoard[i][j])
            }
        }
    }
    if answer == 0 && countBoard[0].contains(1) {
        answer = 1
    }
    return answer * answer
}
solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]) //9
solution([[0,0,1,1],[1,1,1,1]]) //4
