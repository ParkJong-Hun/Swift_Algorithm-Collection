func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1){$0 / gcd($0, $1) * $1}
}
func gcd(_ a: Int, _ b: Int) -> Int {
    let c = a % b
    if c != 0 {
        return gcd(b, c)
    } else {
        return b
    }
}
solution([2,6,8,14])    //168
solution([1,2,3])       //6
solution([3,4,9,16])    //144
solution([2,3,4])       //12
solution([2,7,14])      //14
solution([28,70])       //140
