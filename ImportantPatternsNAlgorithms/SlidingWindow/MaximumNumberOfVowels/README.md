# 3. Maximum Number of Vowels in Substring of Size K

## 🔹 Problem

Given a string, return **maximum number of vowels in any substring of size `k`**

---

## 🔹 Intuition

* Fixed window
* Track vowel count instead of sum

---

## 🔹 Dry Run

```
s = "abciiidef", k = 3
```

### Step 1

```
[abc] → vowels = 1 → max = 1
```

### Step 2

```
Remove 'a', Add 'i'
[bci] → vowels = 1 → max = 1
```

### Step 3

```
Remove 'b', Add 'i'
[cii] → vowels = 2 → max = 2
```

### Step 4

```
Remove 'c', Add 'i'
[iii] → vowels = 3 → max = 3
```

---

## 🔹 Swift Code

```swift
func maxVowels(_ s: String, _ k: Int) -> Int {
    
    let chars = Array(s)
    var vowelCount = 0
    var maxCount = 0
    
    func isVowel(_ ch: Character) -> Bool {
        return "aeiou".contains(ch)
    }
    
    // First window
    for i in 0..<k {
        if isVowel(chars[i]) {
            vowelCount += 1
        }
    }
    
    maxCount = vowelCount
    
    // Slide window
    for i in k..<chars.count {
        
        if isVowel(chars[i]) {
            vowelCount += 1
        }
        
        if isVowel(chars[i - k]) {
            vowelCount -= 1
        }
        
        maxCount = max(maxCount, vowelCount)
    }
    
    return maxCount
}
```

---

## 🔹 Complexity

* Time: `O(n)`
* Space: `O(n)`

---

## 🔹 Notes

* Replace sum with count
* Convert string to array for indexing
* Very common string sliding window problem
