//Solution goes in Sources

class GradeSchool {
    
    var roster = [Int: [String]]()
    
    func addStudent(_ name: String, grade: Int) {
        if roster[grade] == nil {
            roster[grade] = [name]
        } else {
            roster[grade]?.append(name)
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
    
    var sortedRoster: [Int: [String]] {
        var newRoster = [Int: [String]]()
        let sortedKeys = roster.sorted(by: { $0.key < $1.key})
        
        for pair in sortedKeys {
            newRoster[pair.key] = pair.value.sorted(by: <)
        }

        return newRoster
    }
}
