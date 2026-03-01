# 🔎 Sum of Pair Equal to Target (Two Pointers Approach)

## 📌 Problem Statement

Given a **sorted array** `arr` (sorted in ascending order) and a `target` value, determine whether there exists any pair of elements `(arr[i], arr[j])` such that:

arr[i] + arr[j] = target

Return **true** if such a pair exists, otherwise return **false**.

---

## 🧠 Key Observations

- The array is already **sorted in ascending order**.
- This allows us to use the **Two Pointers Technique** efficiently.
- Instead of checking all possible pairs (O(n²)), we can solve it in **O(n)** time.

---

## 💡 Approach — Two Pointers

1. Initialize two pointers:
   - `left = 0` (start of array)
   - `right = arr.count - 1` (end of array)

2. While `left < right`:
   - Calculate `sum = arr[left] + arr[right]`
   - If `sum == target` → return `true`
   - If `sum < target` → move `left` forward
   - If `sum > target` → move `right` backward

3. If no pair is found → return `false`

---

## 🧪 Example Test Cases

### ✅ Example 1

**Input:**
arr = [10, 20, 35, 50]
target = 70


**Output:**

**Explanation:**  
20 + 50 = 70

---

### ❌ Example 2

**Input:**
arr = [10, 20, 30]
target = 70

**Output:**

**Explanation:**  
No pair sums to 70.

---

### ✅ Example 3

**Input:**
arr = [-8, 1, 4, 6, 10, 45]
target = 16


**Output:**

**Explanation:**  
6 + 10 = 16

---

## ⏱ Time & Space Complexity

| Complexity | Value |
|------------|--------|
| Time       | O(n)   |
| Space      | O(1)   |

- We traverse the array at most once.
- No extra data structures are used.

---

## 🎯 Why This Problem Matters

- Classic **Two Pointers** pattern.
- Frequently asked in product-based company interviews.
- Builds strong intuition for:
  - Sorted array optimization
  - Pointer manipulation
  - Greedy movement logic

---

## 🚀 Practice Variations

- Return the actual pair instead of `true/false`
- Count all possible pairs
- Solve the same problem for an unsorted array (Hint: Use `HashSet`)
- Modify to return indices instead of values

