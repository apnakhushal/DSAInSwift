# Longest Substring Without Repeating Characters

## Problem Statement

Given a string `s`, find the **length of the longest substring without repeating characters**.

A **substring** is a **contiguous sequence of characters** within the string.

### Example

Input: "abcabcbb"
Output: 3

Explanation:
The longest substring without repeating characters is "abc"

Another example:

Input: "bbbbb"
Output: 1

Explanation:
The longest substring is "b"

---

# Approach

This problem can be efficiently solved using the **Sliding Window Pattern**.

The main idea is:

- Maintain a **window of characters with no duplicates**
- Expand the window using the **right pointer**
- If a duplicate appears, **shrink the window from the left**
- Keep track of the **maximum length**

---

# Key Idea

We maintain:
Left Pointer → start of window
Right Pointer → end of window
Set / Dictionary → track characters inside window

Window must always satisfy:
All characters inside the window must be unique

If a duplicate appears:
Move left pointer forward
Remove characters until duplicate is removed

---

# Visualization

Example:

String = "abcabcbb"


Window movement:

Step 1
[a]bcabcbb
^
Length = 1

Step 2
[ab]cabcbb
^
Length = 2

Step 3
[abc]abcbb
^
Length = 3

Step 4
[a b c a]bcbb
Duplicate 'a' detected
Shrink window


## Step-by-Step Dry Run

### Input


s = "abcabcbb"


### Initial State


left = 0
maxLength = 0
set = {}


---

### Step 1


right = 0
char = 'a'


Set does not contain `a`.


set = {a}
window = "a"
length = 1
maxLength = 1


---

### Step 2


right = 1
char = 'b'

set = {a, b}
window = "ab"
length = 2
maxLength = 2


---

### Step 3


right = 2
char = 'c'

set = {a, b, c}
window = "abc"
length = 3
maxLength = 3


---

### Step 4


right = 3
char = 'a'


Duplicate detected.

Shrink window from the left.

Remove `a` at left.


left = 1
set = {b, c}


Now insert new `a`.


set = {b, c, a}
window = "bca"
length = 3
maxLength = 3


---

### Step 5


right = 4
char = 'b'


Duplicate found.

Shrink window.

Remove `b`.


left = 2
set = {c, a}


Insert `b`.


set = {c, a, b}
window = "cab"
length = 3
maxLength = 3


---

Continue similarly until the end.

### Final Result


Longest substring length = 3


Examples of valid substrings:


"abc"
"bca"
"cab"


---

# Complexity Analysis

## Time Complexity


O(n)


Each character is added and removed from the set at most once.

---

## Space Complexity

O(k)


Where `k` is the size of the character set in the window.

Worst case:

O(n)


## Key Takeaways

- Use **Sliding Window** when dealing with **substrings or subarrays**.
- Maintain a **Set / HashMap** to track duplicates.
- Expand the window with the **right pointer** and shrink it with the **left pointer**.
- Always update the **maximum length** while traversing.