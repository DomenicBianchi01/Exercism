//Solution goes in Sources

struct ETL {

    static func transform(_ oldData: [Int: [String]]) -> [String : Int] {
        let groupedPoints = oldData.flatMap { (key, value) -> [(String, Int)] in
            var newFormat = [(String, Int)]()
            for letter in value {
                newFormat.append((letter.lowercased(), key))
            }
            return newFormat
        }
        
        return Dictionary(uniqueKeysWithValues: groupedPoints)
    }
}

//Alternatly, could use this extension on line 10
//extension Array where Element == String {
//    var lowercase: [String] {
//        return self.map {
//            return $0.lowercased()
//        }
//    }
//}
