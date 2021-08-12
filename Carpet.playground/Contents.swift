import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var col = 3
    var row = 3
    while(true) {
        let leftBrown = brown - ((col * 2) + ((row - 2) * 2))
        let leftYellow = yellow - ((col - 2) * (row - 2))
        if leftBrown == 0 && leftYellow == 0 {
            break
        } else if leftBrown < 0 {
            col -= 1
        } else if leftYellow < 0 {
            row -= 1
        } else if leftBrown > 0 {
            col += 1
        } else if leftYellow > 0 {
            row += 1
        }
    }
    return [col, row]
}
solution(10, 2) //4,3
solution(8, 1)  //3,3
solution(24, 24)//8,6
