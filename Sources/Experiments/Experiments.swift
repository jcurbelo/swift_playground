import Foundation

@MainActor
public class Experiment {
  public init() {}

  public func runClosureExperiment() {
    let closure: (Int) -> String = { number in
      return "Number: \(number)"
    }
    print("Closure result: \(closure(42))")
  }

  public func runAsyncExperiment() async {
    do {
      let result = try await fetchData()
      print("Async result: \(result)")
    } catch {
      print("Async error: \(error)")
    }
  }

  private func fetchData() async throws -> String {
    try await Task.sleep(nanoseconds: 1_000_000_000)  // 1 second
    return "Data fetched!"
  }
}
