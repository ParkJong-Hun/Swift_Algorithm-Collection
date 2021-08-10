import Foundation

func dfs(_ numbers:[Int], _ target:Int, _ depth:Int, _ sum:Int) -> Int {
    var c:Int = 0
    
    if depth == numbers.count {
        if sum == target {
            return 1
        }
        return 0
    }
    c += dfs(numbers, target, depth + 1, sum + numbers[depth])
    c += dfs(numbers, target, depth + 1, sum - numbers[depth])
    return c
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    return dfs(numbers, target, 0, 0)
}
solution([1, 1, 1, 1, 1], 3)    //답(만들어질 수 있는 경우의 수) 5
