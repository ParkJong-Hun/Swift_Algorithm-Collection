import Foundation

func solution(_ enter:[Int], _ leave:[Int]) -> [Int] {
    var answer = [Int](repeating: 0, count: enter.count)
    
    //나보다 먼저 들어왔는데 나보다 늦게 나감.
    for me in 1...enter.max()! {
        answer[me-1] = findPeople(enter, leave, me)
    }
    
    return answer
}

func findPeople(_ enter:[Int], _ leave:[Int], _ me:Int) -> Int {
    var ealryEnter = [Int]()
    //나보다 먼저 들어왔는데 나보다 늦게 나감.
    for i in enter {
        if i == me {
            break
        }
        ealryEnter.append(i)
    }
    for i in leave {
        if i == me {
            break
        }
        if ealryEnter.contains(i) {
            ealryEnter.remove(at: ealryEnter.firstIndex(of: i)!)
        }
    }
    //나보다 늦게 들어왔는데 나보다 먼저 나감.
    var lateEnter = [Int]()
    for i in enter.reversed() {
        if i == me {
            break
        }
        lateEnter.append(i)
    }
    for i in leave.reversed() {
        if i == me {
            break
        }
        if lateEnter.contains(i) {
            lateEnter.remove(at: lateEnter.firstIndex(of: i)!)
        }
    }
    print(ealryEnter, lateEnter)
    return Set(ealryEnter + lateEnter).count
}
//solution([1,3,2], [1,2,3])//[0,1,1]
solution([1,4,2,3], [2,1,3,4])//[2,2,1,3]
//solution([3,2,1], [2,1,3])//[1,1,2]

//들어오는 순서를 생각 안했음... 틀렸다.
