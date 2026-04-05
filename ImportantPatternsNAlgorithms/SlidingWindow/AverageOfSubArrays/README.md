# 2. Average of Subarrays of Size K

## 🔹 Problem

Find the **average of all contiguous subarrays of size `k`**

---

## 🔹 Intuition

* Same as max sum
* Just divide sum by `k`

---

## 🔹 Dry Run

```
nums = [1,3,2,6,-1,4,1,8,2], k = 5
```

### Step 1

```
[1,3,2,6,-1] → sum = 11 → avg = 2.2
```

### Step 2

```
Remove 1, Add 4
[3,2,6,-1,4] → sum = 14 → avg = 2.8
```

### Step 3

```
Remove 3, Add 1
[2,6,-1,4,1] → sum = 12 → avg = 2.4
```

### Step 4

```
Remove 2, Add 8
[6,-1,4,1,8] → sum = 18 → avg = 3.6
```

---

## 🔹 Swift Code

```swift
func averageSubarrays(_ nums: [Int], _ k: Int) -> [Double] {
    
    var result: [Double] = []
    var windowSum = 0
    
    // First window
    for i in 0..<k {
        windowSum += nums[i]
    }
    
    result.append(Double(windowSum) / Double(k))
    
    // Slide window
    for i in k..<nums.count {
        windowSum += nums[i]
        windowSum -= nums[i - k]
        
        result.append(Double(windowSum) / Double(k))
    }
    
    return result
}
```

---

## 🔹 Complexity

* Time: `O(n)`
* Space: `O(n)`

---

## 🔹 Notes

* Same pattern as max sum
* Store results instead of tracking max
* Common beginner problem

---