
import Foundation

struct Location {
    var coord = (0, 0) // (x, y)
    init (x: Int, y: Int) {
        coord.0 = x
        coord.1 = y
    }
}
extension Location: Hashable {
    var hashValue: Int {
        return [coord.0.hashValue, coord.1.hashValue].hashValue
    }
}
func ==(lhs: Location, rhs: Location) -> Bool {
    return lhs.coord.0 == rhs.coord.0 && lhs.coord.1 == rhs.coord.1
}

var locations = Set<Location>()
var current = Location(x: 0, y: 0)

locations.insert(current)
current.coord.1 += 1
locations.insert(current)
locations.insert(current)
current.coord.0 -= 1
locations.insert(current)
locations.insert(current)

print((locations.first?.coord)!)
locations.removeFirst()
print((locations.first?.coord)!)
locations.removeFirst()
print((locations.first?.coord)!)
