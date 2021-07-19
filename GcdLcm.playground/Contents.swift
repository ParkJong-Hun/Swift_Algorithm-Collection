func gcd(_ num1:Int, _ num2:Int ) -> Int {
    if num2 == 0 { return num1 }
    else { return gcd(num2, num1 % num2) }
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer:[Int] = []
    answer.append(gcd(n, m))
    answer.append(n * m / gcd(n, m))
    return answer
}
solution(3, 12)//3, 12
solution(2, 5)//1, 10
