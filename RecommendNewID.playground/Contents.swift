import Foundation

func solution(_ new_id:String) -> String {
    var test1:String = ""
    var test2:String = ""
    for i in 0..<new_id.count {
        let index = new_id.index(new_id.startIndex, offsetBy: i)
        if new_id[index].isUppercase {
            test1.append(new_id[index].lowercased())
        } else {
            test1.append(new_id[index])
        }
    }
    for i in 0..<test1.count {
        let char = test1[test1.index(test1.startIndex, offsetBy: i)]
        if char == "." || char == "_" || char == "-" || char.isNumber || char.isLowercase {
            test2.append(char)
        }
    }
    test1.removeAll()
    for i in 0..<test2.count {
        let char = test2[test2.index(test2.startIndex, offsetBy: i)]
        if i != test2.count - 1 {
            let nextChar = test2[test2.index(test2.startIndex, offsetBy: i + 1)]
            if !(char == "." && nextChar == ".") {
                test1.append(char)
            }
        } else {
            test1.append(char)
        }
    }
    test2.removeAll()
    for i in 0..<test1.count {
        let char = test1[test1.index(test1.startIndex, offsetBy: i)]
        if !(char == "." && (i == 0 || i == test1.count)) {
            test2.append(char)
        }
    }
    if test2.count == 0 {
        test2.append("aaa")
    } else if test2.count > 15 {
        for _ in 15..<test2.count {
            test2.removeLast()
        }
    }
    if test2[test2.index(test2.endIndex, offsetBy: -1)] == "." {
        test2.removeLast()
    }
    if test2.count < 3 {
        let lastChar = test2[test2.index(test2.endIndex, offsetBy: -1)]
        for _ in 0..<3 - test2.count {
            test2.append(lastChar)
        }
    }
    return test2
}
solution("...!@BaT#*..y.abcdefghijklm") //"bat.y.abcdefghi"
solution("z-+.^.")                      //"z--"
solution("=.=")                         //"aaa"
solution("123_.def")                    //"123_.def"
solution("abcdefghijklmn.p")            //"abcdefghijklmn"
