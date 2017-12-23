//Solution goes in Sources

struct DNA {

    private let strand: String
    
    init?(strand: String) {
        if strand.contains(where: { $0 != "T" || $0 != "A" || $0 != "C" || $0 != "G" }) {
            return nil
        }
        self.strand = strand
    }
    
    func count(_ type: String) -> Int {
        return strand.filter({ type.contains($0) }).count
    }
    
    func counts() -> [String : Int] {
        var dictionary: [String : Int] = [:]
        
        dictionary["T"] = count("T")
        dictionary["A"] = count("A")
        dictionary["C"] = count("C")
        dictionary["G"] = count("G")
        
        return dictionary
    }
}
