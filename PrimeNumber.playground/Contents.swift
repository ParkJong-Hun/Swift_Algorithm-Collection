import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var arr:[Int] = []
    //배열로 만들 수 있는 합을 arr에 넣음
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                arr.append(nums[i]+nums[j]+nums[k])
            }
        }
    }
    arr.sorted()
    //합을 하나하나 소수인지 검사
    for i in 0..<arr.count {
        for j in 2..<arr[i]+1 {
            if arr[i] % j == 0 {
                if j == arr[i] {
                    answer += 1
                }
                break
            }
        }
    }
    //결과값 반환
    return answer
}
solution([2,4,6,9])
