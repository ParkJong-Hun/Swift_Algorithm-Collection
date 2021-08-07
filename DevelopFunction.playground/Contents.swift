import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = progresses
    var speeds = speeds
    var answer:[Int] = []
    while(!progresses.isEmpty) {
        while(true) {
            var count = 0
            for i in 0..<progresses.count {
                progresses[i] += speeds[i]
            }
            if progresses.first! >= 100 {
                for i in 0..<progresses.count {
                    if progresses[i] >= 100 {
                        count += 1
                    } else {
                        break
                    }
                }
                for _ in 0..<count {
                    progresses.removeFirst()
                    speeds.removeFirst()
                }
                answer.append(count)
                break
            }
        }
    }
    return answer
}
solution([93, 30, 55], [1, 30, 5]) //2, 1
solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]) //[1, 3, 2]
