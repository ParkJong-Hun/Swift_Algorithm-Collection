var arr = [Int](repeating: 0, count: 100001)
func solution(_ n:Int) -> Int {
    return n >= 2 ? pibo(n) % 1234567 : 1
}
// ((A % C) + (B % C)) % C = (A + B) % C
func pibo(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    }
    if arr[n] != 0 {
        return arr[n]
    }
    arr[n] = pibo(n - 1) % 1234567 + pibo(n - 2) % 1234567
    return arr[n]
}
solution(3) //2
solution(5) //5
solution(100) //963606
