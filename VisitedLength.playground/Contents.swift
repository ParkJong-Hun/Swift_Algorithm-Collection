import Foundation

func solution(_ dirs:String) -> Int {
    var visited:[[Int]] = []
    var current:[Int] = [0, 0]
    var after:[Int] = [0, 0]
    for dir in dirs {
        switch dir {
        case "U":
            after[1] += 1
            break
        case "R":
            after[0] += 1
            break
        case "D":
            after[1] -= 1
            break
        case "L":
            after[0] -= 1
            break
        default:
            break
        }
        if after[1] == 6 {
            after[1] = 5
        } else if after[0] == 6 {
            after[0] = 5
        } else if after[0] == -6 {
            after[0] = -5
        } else if after[1] == -6 {
            after[1] = -5
        }
        if !(current[0] == after[0] && current[1] == after[1]) {
            if !(visited.contains([after[0], after[1], current[0], current[1]])) {
                visited.append([current[0], current[1], after[0], after[1]])
            }
            current[0] = after[0]
            current[1] = after[1]
        }
    }
    let set = Set(visited)
    return set.count
}
solution("ULURRDLLU") //7
solution("LULLLLLLU") //7
