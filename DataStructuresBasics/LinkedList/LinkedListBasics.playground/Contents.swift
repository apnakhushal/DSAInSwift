import Foundation

class Node<T> {
    var value: T
    var next: Node?

    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList<T: Equatable> {
    var head: Node<T>?

    // MARK: - Addition
    func append(value: T) {
        let newNode = Node(value: value)
        
        guard let headNode = head else {
            head = newNode
            return
        }
        
        var current = headNode
        while let nextNode = current.next {
            current = nextNode
        }
        current.next = newNode
    }

    // MARK: - Traversal
    func display() {
        var current = head
        var result = ""
        
        while current != nil {
            result += "\(current!.value) -> "
            current = current?.next
        }
        print(result + "nil")
    }

    // MARK: - Deletion
    func delete(value: T) {
        // Case 1: List is empty
        if head == nil { return }

        // Case 2: Node to delete is the head
        if head?.value == value {
            head = head?.next
            return
        }

        // Case 3: Node is further down the list
        var current = head
        while current?.next != nil {
            if current?.next?.value == value {
                current?.next = current?.next?.next
                return
            }
            current = current?.next
        }
    }
}

// MARK: - Usage Example

let list = LinkedList<Int>()

list.append(value: 10)
list.append(value: 20)
list.append(value: 30)
list.append(value: 40)

print("Initial List:")
list.display() // Output: 10 -> 20 -> 30 -> 40 -> nil

print("\nAfter deleting 20:")
list.delete(value: 20)
list.display() // Output: 10 -> 30 -> 40 -> nil
