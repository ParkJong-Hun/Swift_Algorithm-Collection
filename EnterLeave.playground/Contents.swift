import Foundation

func solution(_ enter:[Int], _ leave:[Int]) -> [Int] {
    var answer = [Int](repeating: 0, count: enter.count)
    var room = [Int]()
    var e = 0
    var l = 0
    while e < enter.count || l < leave.count {
        let nextEnter:Int = e < enter.count ? enter[e] : -1
        let nextLeave:Int = l < leave.count ? leave[l] : -1
        if !(room.contains(nextLeave)) {
            room.append(nextEnter)
            e += 1
        } else {
            room.remove(at: room.firstIndex(of: nextLeave)!)
            answer[nextLeave-1] += room.count
            for people in room {
                answer[people-1] += 1
            }
            l += 1
        }
    }
    return answer
}
solution([1,3,2], [1,2,3])//[0,1,1]
solution([1,4,2,3], [2,1,3,4])//[2,2,1,3]
solution([3,2,1], [2,1,3])//[1,1,2]
