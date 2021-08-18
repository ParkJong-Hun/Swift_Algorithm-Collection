func solution(_ clothes:[[String]]) -> Int {
    var dic:[String:[String]] = [:]
    for c in clothes{
        if dic[c[1]] != nil{
            dic[c[1]]!.append(c[0])
        }else{
            dic[c[1]] = [c[0]]
        }
    }
    let answer = dic.mapValues{$0.count}.values.reduce(1){$0*($1+1)}
    return answer - 1
}
solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]])  //5
solution([["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]])              //3
