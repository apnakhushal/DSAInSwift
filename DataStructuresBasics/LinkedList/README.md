## Topic 01: Linked Lists

Welcome to the **Data Structures Fundamentals Series** under  
**🚀 iAlgo – The Swift DSA Circle**

In this series, we will pick **one data structure at a time** and understand it from the ground up:

- What it is  
- Why we use it  
- How it works internally  
- Traversal techniques  
- Basic CRUD operations  
- Common algorithms  
- Easy interview problems  

Let’s start with one of the most fundamental data structures.

---

# 🔗 Linked List

A **Linked List** is a linear data structure where elements (**nodes**) are connected using **pointers (references)**.

Unlike arrays, elements are **not stored in contiguous memory locations**.

Each node contains two parts:

[ Data | Next Pointer ]


Example:

10 -> 20 -> 30 -> 40 -> nil


Where:
- `10` → Head node  
- Each node points to the **next node**
- The last node points to **nil**

---

# 🧠 Why Linked Lists?

Arrays are powerful but they have limitations.

### Array Problems

- Insertion can be expensive
- Deletion can require shifting elements
- Memory is contiguous


Example:

[10, 20, 30, 40]

Insert 15 at index 1

Result:

[10, 15, 20, 30, 40]



All elements after index must **shift**.

---

### Linked List Advantage

Insertion is easier because we only update pointers.

Before:

10 -> 20 -> 30

Insert `25`

After:

10 -> 20 -> 25 -> 30



No shifting required.

---

# 🧩 Node Structure (Swift)

```swift
class ListNode {
    var value: Int
    var next: ListNode?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}
```

## 🔎 Traversing a Linked List

Traversal means **visiting each node sequentially**.

### Example

10 -> 20 -> 30 -> 40


### Algorithm

1. Start from the **head**
2. Move to the **next node**
3. Continue until the node becomes **nil**

### Swift Example

```swift
func traverse(_ head: ListNode?) {
    var current = head

    while current != nil {
        print(current!.value)
        current = current?.next
    }
}
```

Time Complexity
O(n)


## ✏️ Basic CRUD Operations

CRUD = Create, Read, Update, Delete

### 1️⃣ Insert at Beginning
Before
20 -> 30 -> 40

Insert 10

After
10 -> 20 -> 30 -> 40
Steps

Create a new node

Point newNode.next to head

Update head

```swift
func insertAtHead(_ head: ListNode?, value: Int) -> ListNode {
    let newNode = ListNode(value)
    newNode.next = head
    return newNode
}
```

Time Complexity
O(1)


### 2️⃣ Insert at End

Before
10 -> 20 -> 30

Insert 40

After
10 -> 20 -> 30 -> 40
Steps

Traverse to the last node

Attach the new node

```swift
func insertAtEnd(_ head: ListNode?, value: Int) {
    let newNode = ListNode(value)

    var current = head

    while current?.next != nil {
        current = current?.next
    }

    current?.next = newNode
}
```

Time Complexity
O(n)


### 3️⃣ Delete Node

Before
10 -> 20 -> 30 -> 40

Delete 30

After
10 -> 20 -> 40

Core Idea

Find the node before the target node and update the pointer.

prev.next = prev.next.next

🔄 Basic Algorithms on Linked Lists

These algorithms are very common in interviews.

### Reverse Linked List

Before
10 -> 20 -> 30 -> 40

After
40 -> 30 -> 20 -> 10

Concept

Reverse the direction of pointers.

### Find Middle Node

Use the Two Pointer Technique.

slow -> moves 1 step
fast -> moves 2 steps

When fast reaches the end, slow will be at the middle.

### Detect Cycle (Floyd’s Algorithm)

Also uses slow and fast pointers.

If they meet → cycle exists.

## 🎯 Easy Interview Problems

Try solving these problems:

1. **Reverse Linked List**  
2. **Find Middle of Linked List**  
3. **Remove Nth Node from End**  
4. **Detect Cycle in Linked List**  
5. **Merge Two Sorted Linked Lists**

These problems help build **strong Linked List fundamentals** and are very common in technical interviews.

## 🚀 Key Takeaways

- **Linked Lists store elements using nodes and pointers**
- **Efficient insertions and deletions**
- **Traversal takes O(n)**
- **Core structure → Data + Next Pointer**
- **Widely used in Stacks, Queues, Graphs, and many algorithms**