import Foundation

func solution(_ word:String) -> Int {
    let collection = [
        "A":0,
        "E":1,
        "I":2,
        "O":3,
        "U":4
    ]
    let count = [781, 156, 31, 6, 1]
    return word.enumerated().map{count[$0.offset] * collection[String($0.element)]!}.reduce(word.count){$0 + $1}
}

solution("AAAAE") //6
solution("AAAE") //10 A AA AAA AAAA AAAAA AAAAE AAAAI AAAAO AAAAU AAAE
solution("I") //1563
