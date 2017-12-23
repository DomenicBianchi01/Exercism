//Solution goes in Sources

struct Raindrops {
    
    private let drops: Int
    
    init(_ drops: Int) {
        self.drops = drops
    }
    
    var sounds: String {
        var sounds = ""
        if drops % 3 == 0 {
            sounds += "Pling"
        }
        if drops % 5 == 0 {
            sounds += "Plang"
        }
        if drops % 7 == 0 {
            sounds += "Plong"
        }
        
        if sounds.isEmpty {
            return String(drops)
        }
        
        return sounds
    }
}
