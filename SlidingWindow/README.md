# Sliding Window Pattern

The **Sliding Window Pattern** is a widely used technique to solve problems involving **contiguous sequences** (subarrays, substrings) in arrays or strings. It is particularly useful for problems related to **sums, averages, counts, or maximum/minimum values** within a window of fixed or variable size.

---

## 🔹 When to Use Sliding Window

You should consider using the sliding window pattern when you are asked to:

1. Find **subarrays or substrings** that meet certain criteria.
2. Optimize for **time complexity**, reducing brute-force O(n²) solutions to O(n).
3. Work with **continuous segments** rather than individual elements.

---

## 🔹 Key Concepts

1. **Window** – A contiguous segment of the array/string.
2. **Left & Right Pointers** – Two pointers that define the current window.
3. **Expanding Window** – Move the right pointer to include new elements.
4. **Shrinking Window** – Move the left pointer to remove elements and maintain constraints.

---

## 🔹 Steps to Approach

1. Initialize `left` and `right` pointers (start of window).
2. Expand the window by moving `right`.
3. Update the window metrics (sum, count, frequency map, etc.).
4. While the window violates constraints, shrink it by moving `left`.
5. Keep track of the **result** (max, min, count, substring, etc.).
6. Repeat until `right` reaches the end.

---

## 🔹 Types of Sliding Window

1. **Fixed Window Size** – Window size is constant.  
   Example: Find the **maximum sum of size k subarray**.
   
2. **Dynamic Window Size** – Window size varies.  
   Example: Find **smallest subarray with sum ≥ S** or **longest substring with unique characters**.

---

## 🔹 Notes & Tips

- Sliding window works only for contiguous sequences.  
- For dynamic windows, always use a `while` loop inside the `for` loop to maintain constraints.  
- Often combined with hash maps for problems like "longest substring with K unique characters."  
- Reduces brute-force solutions from O(n²) to O(n) or O(n log n).  
- Good for both arrays and strings problems.  

---

## 🔹 Common Problems to Practice

- Maximum sum subarray of size k  
- Minimum size subarray with sum ≥ S  
- Longest substring without repeating characters  
- Permutation in string  
- Fruits into baskets (at most 2 types)  
- Maximum average subarray of size k