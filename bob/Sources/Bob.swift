//Solution goes in Sources

import Foundation

struct Bob {
    
    private static func isYelling(_ statment: String) -> Bool {
        let stringCopy = statment
        
        if statment.rangeOfCharacter(from: .letters) == nil {
            return false
        }
        
        return stringCopy.uppercased() == statment
    }
    
    static func hey(_ statement: String) -> String {
        if Bob.isYelling(statement) {
            return "Whoa, chill out!"
        } else if statement.last == "?" {
            return "Sure."
        } else if statement.trimmingCharacters(in: .whitespaces).isEmpty {
            return "Fine. Be that way!"
        }
        return "Whatever."
    }
}
