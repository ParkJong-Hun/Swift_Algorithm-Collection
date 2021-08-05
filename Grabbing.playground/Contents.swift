func solution(_ land:[[Int]]) -> Int{
    var memLand = land
    for i in 0..<land.count - 1 {
        memLand[i+1][0] += max(memLand[i][1],memLand[i][2],memLand[i][3])
        memLand[i+1][1] += max(memLand[i][0],memLand[i][2],memLand[i][3])
        memLand[i+1][2] += max(memLand[i][0],memLand[i][1],memLand[i][3])
        memLand[i+1][3] += max(memLand[i][0],memLand[i][1],memLand[i][2])
    }
    return memLand[land.count - 1].max()!
}
solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]) //16
