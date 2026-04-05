# Sliding Window Pattern – Easy Problems (Swift)

This document covers **3 beginner-friendly DSA problems** using the **Sliding Window pattern** with:

- Intuition
- Step-by-step dry run
- Swift implementation
- Key interview notes

---

# 1. Maximum Sum Subarray of Size K

## 🔹 Problem
Given an array, find the **maximum sum of any contiguous subarray of size `k`**.

---

## 🔹 Intuition

- Compute sum of first window
- Slide window forward:
  - Add next element
  - Remove previous element
- Track maximum sum

---

## 🔹 Dry Run

```

nums = [2,1,5,1,3,2], k = 3

```

### Step 1

```

[2,1,5] → sum = 8 → max = 8

```

### Step 2

```

Remove 2, Add 1
[1,5,1] → sum = 7 → max = 8

```

### Step 3

```

Remove 1, Add 3
[5,1,3] → sum = 9 → max = 9

```

### Step 4

```

Remove 5, Add 2
[1,3,2] → sum = 6 → max = 9

````

✅ Final Answer: `9`

---

## 🔹 Swift Code

```swift
func maxSumSubarray(_ nums: [Int], _ k: Int) -> Int {
    
    var windowSum = 0
    var maxSum = 0
    
    // First window
    for i in 0..<k {
        windowSum += nums[i]
    }
    
    maxSum = windowSum
    
    // Slide window
    for i in k..<nums.count {
        windowSum += nums[i]
        windowSum -= nums[i - k]
        maxSum = max(maxSum, windowSum)
    }
    
    return maxSum
}
````

---

## 🔹 Complexity

* Time: `O(n)`
* Space: `O(1)`

---

## 🔹 Notes

* Fixed window size
* Use running sum
* Avoid recomputation

---