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

// 2. Using DataModel
let person = Person(name: "Bob", age: 30)
print("Person: \(person.description)")

let updatedPerson = person.updateAge(newAge: 31)
print("Updated Person: \(updatedPerson.description)")

// 3. Using Experiments
let experiment = Experiment()
experiment.runClosureExperiment()

// Run async experiment
Task {
    await experiment.runAsyncExperiment()
}

// 4. Basic Swift Experiments
let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
print("Doubled numbers: \(doubled)")

let optionalName: String? = "Charlie"
if let name = optionalName {
    print("Unwrapped optional: \(name)")
} else {
    print("Optional was nil")
}
