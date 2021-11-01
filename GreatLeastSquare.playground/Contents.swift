import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var max = [Int]()
    var min = [Int]()
    for size in sizes {
        if size[0] > size[1] {
            max.append(size[0])
            min.append(size[1])
        } else {
            max.append(size[1])
            min.append(size[0])
        }
    }
    let h = max.max() ?? 0
    let m = min.max() ?? 0
    return h * m
}
solution([[60, 50], [30, 70], [60, 30], [80, 40]])//4000
solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]])//120
solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]])//133
