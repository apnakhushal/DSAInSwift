Here’s your **Queue in Swift notes formatted cleanly in Markdown** for a README file 👇

---

# 🚀 Queue in Swift — Complete Notes

---

## 📌 1. What is a Queue?

A **Queue** is a **FIFO (First In First Out)** data structure.

👉 The first element inserted is the first one removed.

**Real-life analogy:**

* Line at a ticket counter
* Order processing system

---

## 📊 Basic Representation

```
Front → [ A | B | C | D ] ← Rear
```

* Insert → Rear
* Remove → Front

---

## ⚙️ 2. Basic Implementation in Swift

### 🔹 Using Array (Simple but not optimal)

```swift
struct Queue<T> {
    private var elements: [T] = []
    
    mutating func enqueue(_ value: T) {
        elements.append(value)
    }
    
    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
}
```

⚠️ Problem:

* `removeFirst()` is **O(n)** (shifts elements)

---

### 🔹 Optimized Queue (Using Two Stacks)

👉 Most important for interviews

```swift
struct Queue<T> {
    private var inbox: [T] = []
    private var outbox: [T] = []
    
    mutating func enqueue(_ element: T) {
        inbox.append(element)
    }
    
    mutating func dequeue() -> T? {
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        return outbox.popLast()
    }
    
    func peek() -> T? {
        if !outbox.isEmpty {
            return outbox.last
        }
        return inbox.first
    }
    
    var isEmpty: Bool {
        return inbox.isEmpty && outbox.isEmpty
    }
}
```

✅ This gives **amortized O(1)** operations

---

## 🔁 3. Basic Traversal

Queues don’t support random traversal directly, but:

```swift
for element in queueElements {
    print(element)
}
```

👉 Typically used when queue is backed by array

---

## 🔧 4. Core Operations

| Operation | Description         | Time Complexity |
| --------- | ------------------- | --------------- |
| Enqueue   | Add element to rear | O(1)            |
| Dequeue   | Remove from front   | O(1) / O(n)*    |
| Peek      | Get front element   | O(1)            |
| isEmpty   | Check if empty      | O(1)            |

* O(n) for array-based implementation

---

## ⏱️ 5. Time Complexity Summary

| Implementation | Enqueue | Dequeue |
| -------------- | ------- | ------- |
| Array          | O(1)    | O(n)    |
| Two Stacks     | O(1)*   | O(1)*   |
| Linked List    | O(1)    | O(1)    |

👉 `*` = Amortized

---

## 🧠 6. Types of Queues

### 🔹 Simple Queue

* Basic FIFO

### 🔹 Circular Queue

* Wrap-around structure
* Avoids wasted space

### 🔹 Priority Queue

* Elements served based on priority
* Implemented using Heap

### 🔹 Deque (Double Ended Queue)

* Insert/remove from both ends

---

## 🧩 7. Important Problems & Patterns

---

### 🔹 1. Implement Queue Using Stacks

👉 Already covered above (VERY common interview Q)

---

### 🔹 2. Sliding Window Maximum

```swift
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result: [Int] = []
    var deque: [Int] = []
    
    for i in 0..<nums.count {
        while !deque.isEmpty && deque.first! <= i - k {
            deque.removeFirst()
        }
        
        while !deque.isEmpty && nums[deque.last!] < nums[i] {
            deque.removeLast()
        }
        
        deque.append(i)
        
        if i >= k - 1 {
            result.append(nums[deque.first!])
        }
    }
    
    return result
}
```

🧠 Concept:

* Monotonic Queue
* Time: **O(n)**

---

### 🔹 3. BFS (Breadth First Search)

```swift
func bfs(_ graph: [Int: [Int]], start: Int) {
    var visited: Set<Int> = []
    var queue: [Int] = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        if visited.contains(node) { continue }
        
        print(node)
        visited.insert(node)
        
        for neighbor in graph[node] ?? [] {
            queue.append(neighbor)
        }
    }
}
```

👉 Queue is **core to BFS**

---

### 🔹 4. First Non-Repeating Character in Stream

👉 Uses queue + frequency map

---

### 🔹 5. Rotten Oranges (Grid BFS)

👉 Classic BFS + Queue problem

---

### 🔹 6. Generate Binary Numbers (1 to N)

```swift
func generateBinary(_ n: Int) -> [String] {
    var result: [String] = []
    var queue: [String] = ["1"]
    
    for _ in 0..<n {
        let current = queue.removeFirst()
        result.append(current)
        
        queue.append(current + "0")
        queue.append(current + "1")
    }
    
    return result
}
```

---

## 🎯 8. When to Use Queue?

Use Queue when:

✅ Order matters (FIFO)
✅ Processing tasks sequentially
✅ BFS / Level-order traversal
✅ Streaming / buffering data

---

## 🔥 9. Interview Insights (Senior Level)

👉 Why Array Queue is bad?

* `removeFirst()` causes shifting → O(n)

👉 Why Two Stack works?

* Lazy reversal → amortized O(1)

👉 Real-world usage:

* Task scheduling
* Networking buffers
* Dispatch queues (GCD conceptually similar)

---

## 🧾 Summary

* Queue = FIFO
* Best implementation → **Two Stacks or Linked List**
* Key usage → **BFS, Sliding Window, Streaming**
* Interview focus → **Optimization + Use cases**

---

If you want next in your DSA series:

* Deque deep dive (very important for sliding window optimization)
* Priority Queue / Heap (super important for interviews)
* Graph problems using Queue (BFS patterns)
