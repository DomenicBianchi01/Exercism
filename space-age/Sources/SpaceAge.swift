//Solution goes in Sources

struct SpaceAge {
    
    private let ageInSeconds: Double
    private static let earthSeconds: Double = 31557600
    private static let earthDays: Double = 365.25
    
    init(_ ageInSeconds: Int) {
        self.ageInSeconds = Double(ageInSeconds)
    }
    
    private func seconds(in years: Double) -> Double {
        return years * SpaceAge.earthSeconds
    }
    
    var seconds: Int {
        return Int(ageInSeconds)
    }
    
    var onEarth: Double {
        return (ageInSeconds / seconds(in: 1)).round()
    }
    
    var onMercury: Double {
        return (ageInSeconds / seconds(in: 0.2408467)).round()
    }
    
    var onVenus: Double {
        return (ageInSeconds / seconds(in: 0.61519726)).round()
    }
    
    var onMars: Double {
        return (ageInSeconds / seconds(in: 1.8808158)).round()
    }
    
    var onJupiter: Double {
        return (ageInSeconds / seconds(in: 11.862615)).round()
    }
    
    var onSaturn: Double {
        return (ageInSeconds / seconds(in: 29.447498)).round()
    }
    
    var onUranus: Double {
        return (ageInSeconds / seconds(in: 84.016846)).round()
    }
    
    var onNeptune: Double {
        return (ageInSeconds / seconds(in: 164.79132)).round()
    }
}

extension Double {
    func round() -> Double {
        return (self * 100).rounded() / 100
    }
}
