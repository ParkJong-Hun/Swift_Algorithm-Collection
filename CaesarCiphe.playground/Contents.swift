func solution(_ s:String, _ n:Int) -> String {
    let answer = s.unicodeScalars
       .map { unicodeScala -> Int in
         let number = Int(unicodeScala.value)
         switch number  {
            case 65...90: return (number - 65 + n) % 26 + 65
            case 97...122: return (number - 97 + n) % 26 + 97
            case 32: return number
            default: return number
         }
       }
       .map {Unicode.Scalar.init($0)}
       .compactMap {$0}
       .map {Character.init($0)}
     return String(answer)
}
solution("AB", 1)
