import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    //전체 스테이지 수 : n, 사용자가 현재 멈춰있는 스테이지
    //실패율 = 스테이지 도달했으나 클리어하지 못한 플레이어 수 / 스테이지에 도달한 플레이어의 수
    var challenge = [Int](repeating: 0, count: N + 1)
    var answer:[Int : Double] = [:]
    /*
    var fail:[Int:Double] = [:]
    var a:[Int] = [0]
    var b:[Int] = [stages.count]
    */
    for stage in stages {
        for i in 0..<stage {
            challenge[i] += 1
        }
    }
    for i in 0..<N {
        answer[i + 1] = Double(challenge[i] - challenge[i + 1]) / Double(challenge[i])
    }
    /*
    for i in 1...N {
        a.append(stages.filter{$0 == i}.count)
        b.append(b[i - 1] - a[i - 1])
        fail[i] = Double(a[i]) / Double(b[i])
    }
    */
    print(challenge)
    //실패율이 높은 스테이지부터 리턴
    return answer.sorted(by: <).sorted(by: {$0.value > $1.value}).map({$0.key})
}
solution(5, [2, 1, 2, 6, 2, 4, 3, 3]) //[3,4,2,1,5]
solution(4, [4,4,4,4,4])
