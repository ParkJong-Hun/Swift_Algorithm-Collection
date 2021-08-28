import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var zeroCount = 0, oneCount = 0, len = arr.count
    func check(_ square: [[Int]]) -> Int? {
        let first = square[0][0]
        for x in 0..<square.count {
            for y in 0..<square.count {
                if !(x == 0 && y == 0), square[x][y] != first {
                    return nil
                }
            }
        }
        return first == 0 ? 0 : 1
    }
    func quad_compress(_ arr: [[Int]],_ len: Int) {
        var quads = [[[Int]]](repeating: [], count: 4)
        for i in 0..<len/2 {
            var temp1:[Int] = []
            var temp2:[Int] = []
            for one in 0..<len/2 {
                temp1.append(arr[i][one])
            }
            quads[0].append(temp1)
            for two in len/2..<len {
                temp2.append(arr[i][two])
            }
            quads[1].append(temp2)
        }
        for i in len/2..<len {
            var temp1:[Int] = []
            var temp2:[Int] = []
        
            for three in 0..<len/2 {
                temp1.append(arr[i][three])
            }
            quads[2].append(temp1)
            for four in len/2..<len {
                temp2.append(arr[i][four])
            }
            quads[3].append(temp2)
        }
        for quad in quads {
            if let num = check(quad) {
                if num == 0 {
                    zeroCount += 1
                } else {
                    oneCount += 1
                }
            } else {
                quad_compress(quad, len/2)
            }
        }
    }
    if let num = check(arr) {
        if num == 0 {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    } else {
        quad_compress(arr, len)
    }
    return [zeroCount, oneCount]
}
solution([[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]) //[4, 9]
