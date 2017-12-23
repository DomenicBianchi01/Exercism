//Solution goes in Sources

import Foundation

struct Isogram {
    
    static func isIsogram(_ phrase: String) -> Bool {
        var foundCharacters = Set<UnicodeScalar>()
        for character in phrase.lowercased().unicodeScalars {
            if !CharacterSet.letters.contains(character) {
                continue
            }
            
            if foundCharacters.contains(character) {
                return false
            }
            
            foundCharacters.insert(character)
        }
        return true
    }
}
