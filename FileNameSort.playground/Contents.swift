import Foundation

extension String {
    var decimal: ClosedRange<Character>{ "0"..."9" }
    var head: String {
        return self.prefix{ decimal.contains($0) == false }.lowercased()
    }
    var number: Int {
        print(self.drop{decimal.contains($0) == false})
        return Int(self.drop{ decimal.contains($0) == false}.prefix{ decimal.contains($0) == true })!
    }
}
func solution(_ files:[String]) -> [String] {
    return files.enumerated().sorted { (lhs, rhs) in
        let l = lhs.element
        let r = rhs.element
        if l.head != r.head { return l.head < r.head}
        if l.number != r.number { return l.number < r.number}
        return lhs.offset < rhs.offset
    }.map{ $0.element }
}
solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"])
//["img1.png", "IMG01.GIF", "img02.png", "img2.JPG", "img10.png", "img12.png"]
solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"])
//["A-10 Thunderbolt II", "B-50 Superfortress", "F-5 Freedom Fighter", "F-14 Tomcat"]
