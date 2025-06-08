import DataModel
import Experiments
import Foundation
// Import custom modules
import Utilities

print("=== Learning Swift with Command Line ===")

// 1. Using Utilities
let sum = Utilities.addNumbers(10, 20)
print("Sum from Utilities: \(sum)")

let greeting = Utilities.greet(name: "Alice")
print(greeting)

// 2. Using DataModel Examples
print("\n=== Struct vs Class Examples ===")

// Struct example (Value Type)
var point1 = Point(x: 3, y: 4)
var point2 = point1  // Creates a copy
point2.x = 5
print("Struct - point1: \(point1.x), \(point1.y)")
print("Struct - point2: \(point2.x), \(point2.y)")  // point1 is unchanged

// Using struct's mutating function
point1.moveBy(x: 1, y: 1)
print("After moving point1: \(point1.x), \(point1.y)")

// Using struct's non-mutating function
print("Distance from origin: \(point1.distanceFromOrigin)")

// Class example (Reference Type)
let person1 = Person(name: "Bob", age: 30)
let person2 = person1  // Creates a reference
person2.updateAge(newAge: 31)
print("\nClass - person1 age: \(person1.age)")  // Both are 31
print("Class - person2 age: \(person2.age)")  // Both are 31

// 3. Using Experiments
let experiment = Experiment()
experiment.runClosureExperiment()

// Run async experiment
Task {
  await experiment.runAsyncExperiment()
}
