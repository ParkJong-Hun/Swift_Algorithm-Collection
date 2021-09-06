import Foundation

func manhattanDistance(_ places:[[String]]) -> Bool {
    let dx = [1, 2, 0, 0, 1, -1]
    let dy = [0, 0, 1, 2, 1, 1]
    for row in 0..<5 {
        for col in 0..<5 {
            if places[row][col] == "P" {
                for i in 0..<6 {
                    let (nx, ny) = (row+dx[i], col+dy[i])
                    if (0..<5).contains(nx) && (0..<5).contains(ny) && places[nx][ny] == "P" {
                        if row == nx {
                            if places[row][col+1] != "X" {
                                    return false
                                }

                        } else if col == ny {
                            if places[row+1][col] != "X" {
                                return false
                            }
                        } else {
                            if row > nx {
                                if places[row-1][col] != "X" || places[row][col+1] != "X"{
                                    return false
                                }
                            } else {
                                if places[row+1][col] != "X" || places[row][col+1] != "X"{
                                    return false
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return true
}
func solution(_ places:[[String]]) -> [Int] {
    var answer:[Int] = []
    let places = places.map{$0.map{$0.map{String($0)}}}
    for place in places {
        answer.append(manhattanDistance(place) ? 1:0)
    }
    return answer
}
solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"],
          ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"],
          ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"],
          ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"],
          ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]) //[1, 0, 1, 1, 1]
