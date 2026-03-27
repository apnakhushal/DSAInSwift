import Foundation

struct Stack<T> {
    private var elements: [T] = []

    // MARK: - Properties
    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
    }

    // MARK: - Operations
    
    /// Adds an item to the top of the stack.
    mutating func push(_ element: T) {
        elements.append(element)
    }

    /// Removes and returns the top item. Returns nil if empty.
    mutating func pop() -> T? {
        return elements.popLast()
    }

    /// Returns the top item without removing it.
    func peek() -> T? {
        return elements.last
    }
}

var browserHistory = Stack<String>()

// User visits pages
browserHistory.push("google.com")
browserHistory.push("github.com")
browserHistory.push("stackoverflow.com")

print("Current Page: \(browserHistory.peek() ?? "None")")
// Output: stackoverflow.com

// User hits the 'Back' button
let poppedPage = browserHistory.pop()
print("Went back from: \(poppedPage!)")

print("New Current Page: \(browserHistory.peek() ?? "None")")
// Output: github.com
