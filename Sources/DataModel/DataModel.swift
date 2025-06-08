import Foundation

public struct Person {
  public let name: String
  public let age: Int

  public init(name: String, age: Int) {
    self.name = name
    self.age = age
  }

  public var description: String {
    return "\(name), age \(age)"
  }

  public func updateAge(newAge: Int) -> Person {
    return Person(name: name, age: newAge)
  }
}
