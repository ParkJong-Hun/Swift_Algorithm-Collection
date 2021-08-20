import Foundation

func solution(_ name:String) -> Int {
    let name = name.map({$0})
    var count = 0
    for i in 0..<name.count {
        if name[i] != "A" {
            let upMin = Int(name[i].asciiValue!) - Int("A".unicodeScalars.first!.value)
            let downMin = Int("Z".unicodeScalars.first!.value) - Int(name[i].asciiValue!) + 1
            if upMin < downMin {
                count += upMin
            } else {
                count += downMin
            }
        }
    }
    var minMove = name.count - 1
    for i in 0..<name.count {
        if name[i] != "A" {
            var next = i + 1
            while next < name.count && name[next] == "A" {
                next += 1
            }
            let move = i * 2 + name.count - next
            minMove = min(move, minMove)
        }
    }
    count += minMove
    return count
}
solution("JEROEN")  //56
//solution("JAN")     //23
