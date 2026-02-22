# 🚀 Move Zeroes  
### Pattern: Two Pointers

---

## 🧠 Problem Statement

Given an integer array `nums`, move all `0`s to the end of the array while maintaining the **relative order of the non-zero elements**.

⚠️ You must do this **in-place** without making a copy of the array.

---

## 📝 Example

**Input:**
nums = [0,1,0,3,12]


**Output:**
[1,3,12,0,0]


---

## 🔍 Intuition

We need to:

- Keep the order of non-zero elements intact.
- Push all zeros to the end.
- Avoid using extra space.

Brute force approach:
- Create a new array.
- Copy non-zero elements.
- Fill remaining positions with zeros.
- Time: O(n), Space: O(n)

But the problem requires **in-place** modification → we optimize using the **Two Pointers pattern**.

---

## 🚀 Two Pointers Approach

### 🔹 Strategy

1. Maintain a pointer `left` (slow pointer) to track where the next non-zero element should go.
2. Traverse the array with another pointer `index` (fast pointer).
3. Whenever a non-zero element is found:
   - Swap it with the element at `left`.
   - Increment `left`.

This ensures:
- Non-zero elements shift forward.
- Zeros automatically move to the end.

---

## ⏱️ Complexity

| Complexity | Value |
|------------|--------|
| Time       | O(n)   |
| Space      | O(1)   |

---


## 🧩 Why This Works

- 'left' always marks the position where the next non-zero should be placed.
- Every non-zero element is moved exactly once.
- Zeros naturally accumulate at the end.
- Order of non-zero elements remains preserved.

---


## 🧩 Dry Run

nums = [0,1,0,3,12]

left = 0

i = 0 → nums[i] = 0 → skip  
i = 1 → nums[i] = 1 → swap(1,0) → [1,0,0,3,12] → left = 1  
i = 2 → nums[i] = 0 → skip  
i = 3 → nums[i] = 3 → swap(3,1) → [1,3,0,0,12] → left = 2  
i = 4 → nums[i] = 12 → swap(4,2) → [1,3,12,0,0] → left = 3  

Final Output: [1,3,12,0,0]

---

## 🎯 Key Takeaways

- Classic **Two Pointer pattern**
- In-place array manipulation
- Maintains relative ordering
- Frequently asked **Easy-level** interview problem

---

## 🔥 Related Problems (Two Pointers Pattern)

- Container With Most Water  
- Remove Duplicates from Sorted Array  
- Two Sum II (Sorted Array)  
- 3Sum  
- Sort Colors  

---

## 📌 Practice Goal

- Understand difference between **slow & fast pointers**
- Practice in-place array transformations
- Avoid extra space unless explicitly allowed
- Strengthen pointer movement reasoning