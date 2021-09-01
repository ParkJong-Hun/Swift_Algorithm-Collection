import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var d = [[Int]](repeating: [Int](repeating: 20010, count: N), count: N)
    for i in 0..<N {
        d[i][i] = 0
    }
    for i in road {
        if d[i[0]-1][i[1]-1] > i[2] {
            d[i[0]-1][i[1]-1] = i[2]
            d[i[1]-1][i[0]-1] = i[2]
        }
    }
    for i in 0..<N {
        for j in 0..<N {
            for k in 0..<N {
                d[i][k] = min(d[i][j] + d[j][k], d[i][k])
            }
        }
    }
    print(d)
    return d[0].filter{$0 <= k}.count
}
solution(5, [[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]], 3)           //4
solution(6, [[1,2,1],[1,3,2],[2,3,2],[3,4,3],[3,5,2],[3,5,3],[5,6,1]], 4)   //4
//11번 케이스부터 틀림
