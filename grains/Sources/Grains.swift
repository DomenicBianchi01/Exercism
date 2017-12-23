//Solution goes in Sources

struct Grains {
    
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
    
    private static func calculate(for spots: Int) -> Float {
        var result: Float = 1
        for _ in 1..<spots {
            result *= 2
        }
        return result
    }
    
    static func square(_ spots: Int) throws -> Float {
        if spots > 64 {
            throw GrainsError.inputTooHigh("Input[\(spots)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if spots < 1 {
            throw GrainsError.inputTooLow("Input[\(spots)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        return Grains.calculate(for: spots)
    }
    
    static var total: Float {
        return Grains.calculate(for: 64) * 2
    }
}
