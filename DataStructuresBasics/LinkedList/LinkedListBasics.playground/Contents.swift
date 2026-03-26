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
    
    // MARK: - Insert at Head
    // Complexity: O(1) - Instant change at the front
    func insertAtHead(value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // MARK: - Insert at End
    // Complexity: O(n) - Must traverse to the last node
    func insertAtEnd(value: T) {
        let newNode = Node(value: value)
        
        // If list is empty, new node becomes the head
        guard let headNode = head else {
            head = newNode
            return
        }
        
        var current = headNode
        // Iterate until we find the node where .next is nil
        while let nextNode = current.next {
            current = nextNode
        }
        
        current.next = newNode
    }

    // MARK: - Deletion
    // Complexity: O(n) - In the worst case (the value is at the end or not there), you visit every node.
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

list.delete(value: 20)
print("\nAfter deleting 20:")
list.display() // Output: 10 -> 30 -> 40 -> nil


extension LinkedList {
    // MARK: - Reverse
    // Complexity: O(n) - You must visit every single node exactly once to flip its pointer.
    func reverse() {
        var prev: Node<T>? = nil
        var current = head
        var next: Node<T>? = nil
        
        while current != nil {
            next = current?.next     // Store the next node
            current?.next = prev     // Reverse the pointer
            prev = current           // Move prev forward
            current = next           // Move current forward
        }
        
        head = prev // Update head to the new front (the old tail)
    }
}

list.reverse()
print("\nAfter reversing:")
list.display()

extension LinkedList {
    // MARK: - Find Middle
    // Complexity: O(n) - Even with the Fast/Slow pointer trick, you still traverse the list once.
    func findMiddle() -> T? {
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow?.value
    }
}

print("\nMiddle of the List -> \(list.findMiddle())") // Output: 30
