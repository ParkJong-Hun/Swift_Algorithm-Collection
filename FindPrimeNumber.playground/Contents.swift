import Foundation

func solution(_ numbers:String) -> Int {
    func dfs(_ number:[String], _ current:String) -> Bool {
        var n = number
        stack.append(Int(current)!)
        if stack.isEmpty {
            stack.append(Int(current)!)
        }
        if n.count == 0 {
            return false
        }
        for _ in 0..<n.count {
            let next = n.removeFirst()
            dfs(n, "\(current)\(next)")
            n.append(next)
        }
        return true
    }
    func isPrimeNumber(_ number:Int) -> Bool {
        if number <= 1 {
            return false
        }
        for i in 2..<Int(sqrt(Double(number))) {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
    
    var stack:[Int] = []
    var answer = 0
    var number:[String] = []
    var current:String
    var set:Set<Int> = []
    for i in numbers {
        number.append(String(i))
    }
    for i in 0..<number.count {
        number.sort()
        current = number.remove(at: i)
        dfs(number, current)
        number.append(current)
    }
    set = Set(stack)
    for i in set {
        if isPrimeNumber(i) {
            answer += 1
        }
    }
    return answer
}
solution("17") //3
solution("011") //2
