//Solution goes in Sources

extension Array {
    func accumulate<T>(_ square: (Element) -> T) -> [T] {
        return self.map {
            square($0)
        }
    }
}
