# 📦 Container With Most Water  
### Pattern: Two Pointers

---

## 🧠 Problem Statement

Given an integer array `height` of length `n`, where each element represents the height of a vertical line drawn at index `i`, find two lines that together with the x-axis form a container that holds the **maximum amount of water**.

Return the maximum amount of water a container can store.

---

## 📝 Example

**Input:**

height = [1,8,6,2,5,4,8,3,7]


**Output:**

49


**Explanation:**  
The maximum area is formed between height `8` (index 1) and `7` (index 8).

---

## 🔍 Intuition

To maximize water:

Area = min(height[left], height[right]) * (right - left)


- Width = distance between pointers  
- Height = minimum of the two heights  

Brute force would take **O(n²)** by checking all pairs.  
We optimize using the **Two Pointers pattern** in **O(n)** time.

---

## 🚀 Two Pointers Approach

### 🔹 Strategy

1. Initialize two pointers:
   - `left = 0`
   - `right = n - 1`

2. Calculate area.
3. Update maximum area.
4. Move the pointer pointing to the **smaller height**.
5. Continue until `left < right`.

---

## ⏱️ Complexity

| Complexity | Value |
|------------|--------|
| Time       | O(n)   |
| Space      | O(1)   |

---


## 🧩 Why Move the Smaller Pointer?

If we move the larger pointer:
- Width decreases
- Height remains limited by the smaller one
- Area cannot increase

So we move the smaller height pointer hoping to find a taller line.

--- 

## Dry Run

height = [1,8,6,2,5,4,8,3,7]

left = 0 (1)
right = 8 (7)

area = min(1,7) * 8 = 8
Move left pointer (since 1 < 7)

Eventually:
left = 1 (8)
right = 8 (7)

area = min(8,7) * 7 = 49  ← Maximum

---

## 🎯 Key Takeaways

- Classic **Two Pointer pattern**
- Used when:
  - Array is involved
  - We need optimal pair selection
  - Brute force is **O(n²)**
- Important interview problem (**Medium level**)

---

## 🔥 Related Problems (Two Pointers Pattern)

- Move Zeroes  
- Trapping Rain Water  
- 3Sum  
- Valid Palindrome  
- Two Sum II (Sorted Array)

---

## 📌 Practice Goal

- Master pointer movement logic  
- Focus on reasoning **why** pointers move  
- Avoid brute-force thinking in interviews  