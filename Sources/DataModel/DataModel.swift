import Foundation

// MARK: - Struct Example
public struct Point {
  // Properties
  public var x: Int
  public var y: Int

  // Computed property
  public var distanceFromOrigin: Double {
    return sqrt(Double(x * x + y * y))
  }

  // Custom initializer
  public init(x: Int, y: Int) {
    self.x = x
    self.y = y
  }

  // Mutating function (can change properties)
  public mutating func moveBy(x: Int, y: Int) {
    self.x += x
    self.y += y
  }

  // Non-mutating function (can't change properties)
  public func distance(to other: Point) -> Double {
    let dx = Double(other.x - x)
    let dy = Double(other.y - y)
    return sqrt(dx * dx + dy * dy)
  }
}

// MARK: - Class Example
public class Person {
  // Properties
  public var name: String
  public var age: Int

  // Computed property
  public var description: String {
    return "\(name), age \(age)"
  }

  // Initializer
  public init(name: String, age: Int) {
    self.name = name
    self.age = age
  }

  // Function that modifies properties (no mutating keyword needed for classes)
  public func updateAge(newAge: Int) {
    self.age = newAge
  }

  // Function that returns a new instance
  public func withNewAge(_ newAge: Int) -> Person {
    return Person(name: name, age: newAge)
  }
}
