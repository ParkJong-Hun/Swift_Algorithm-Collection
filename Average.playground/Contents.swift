func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, { $0 + $1}))/Double((arr.count))
}
