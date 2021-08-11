import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 0
    var wait_truck = truck_weights
    var crossing_truck:[Int] = []
    var count:[Int] = []
    repeat {
        time += 1
        for i in 0..<crossing_truck.count {
            count[i] += 1
        }
        if !crossing_truck.isEmpty {
            if count[0] == bridge_length {
                crossing_truck.removeFirst()
                count.removeFirst()
            }
        }
        if !wait_truck.isEmpty {
            if crossing_truck.reduce(0, {$0 + $1}) + wait_truck[0] <= weight {
                crossing_truck.append(wait_truck.removeFirst())
                count.append(0)
            }
        }
    } while (!wait_truck.isEmpty || !crossing_truck.isEmpty)
    return time
}
solution(2, 10, [7,4,5,6])                          //8
solution(100, 100, [10])                            //101
solution(100, 100, [10,10,10,10,10,10,10,10,10,10]) //110
