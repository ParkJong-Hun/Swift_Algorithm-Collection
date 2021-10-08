import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    var answers:[String:Int] = [:]
    var musics:[String:String] = [:]
    for musicinfo in musicinfos {
        let temp:[String] = musicinfo.components(separatedBy: ",")
        
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        let before:Date = dataFormatter.date(from: "2020/02/02 \(temp[0]):00")!
        let after:Date = dataFormatter.date(from: "2020/02/02 \(temp[1]):00")!
        let dif:Int = Int(after.timeIntervalSince(before) / 60)
        var memSync:String = ""
        var sync:String = ""
        for _ in 0..<dif {
            if sync.isEmpty {
                sync = temp[3]
            }
            memSync += String(sync.removeFirst())
            if sync.first == "#" {
                memSync += String(sync.removeFirst())
            }
        }
        
        musics[temp[2]] = memSync
    }
    for music in musics {
        if music.value.contains(m) {
            answers[music.key] = music.value.filter{$0 != "#"}.count
        }
    }
    if answers.isEmpty {
        return "(None)"
    } else {
        return answers.sorted(by: { (l, r) in
            if l.value < r.value {
                return true
            } else {
                return false
            }
        }).first!.key
    }
}
solution("ABCDEFG", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]) //"HELLO"
solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]) //"FOO"
solution("ABC", ["12:00,12:14,HELLO,C#DEFGAB", "13:00,13:05,WORLD,ABCDEF"]) //"WORLD"
solution("CCB", ["03:00,03:10,FOO,CCB#CCB", "04:00,04:08,BAR,ABC"]) //"FOO"

//20, 21, 25, 26, 27, 28, 30 틀림
