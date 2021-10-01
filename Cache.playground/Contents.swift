func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    //빈 캐시(가상의 메모리) 생성
    var cache:[String] = []
    //실행시간
    var runTime = 0
    //캐시 사이즈가 0일 경우
    if cacheSize == 0 {
        //cache miss(5) * cities의 길이 리턴
        return 5 * cities.count
    } else { //캐시 사이즈가 0이 아닌 경우
        //cities의 각 인덱스의 값을 처음부터 끝까지 대입
        for city in cities {
            //city의 이름을 모두 소문자로 변경
            let city = city.lowercased()
            //캐시에 city가 포함되어 있으면 count에 1 추가(cache hit). 없으면 5 추가(cache miss).
            runTime = cache.contains(city) ? runTime + 1 : runTime + 5
            //현재 city를 이용해 LRU를 실행한 후
            cache = LRU(cache: cache, city: city, cacheSize: cacheSize)
        }
    }
    //실행시간을 리턴
    return runTime
}

//가장 안 사용된 것을 앞으로 옮기는 스케일링
func LRU(cache : [String], city : String, cacheSize : Int) -> [String] {
    var cache = cache
    //캐시에 해당 city가 존재하면
    if cache.contains(city) {
        //캐시에서 해당 city를 마지막부분부터 찾아서 삭제
        cache.remove(at: cache.lastIndex(of: city)!)
    }
    //캐시의 저장된 값의 수가 캐시크기와 같으면
    if cache.count == cacheSize {
        //캐시의 첫번째 순서를 삭제(수행 완료)
        cache.removeFirst()
    }
    //캐시의 가장 마지막 순서에 city를 삽입
    cache.append(city)
    //바뀐 캐시를 리턴
    return cache
}

solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"])//50
