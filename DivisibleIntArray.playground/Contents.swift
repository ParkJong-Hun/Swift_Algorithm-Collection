func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var returnArray:[Int] = []
    for i in 0..<arr.count {
        if(arr[i]%divisor == 0) {
            returnArray.append(arr[i])
        }
    }
    if(returnArray.count == 0) {
        returnArray.append(-1)
    }
    returnArray.sort()
    return returnArray
}
solution([5, 9, 8, 3], 5)
