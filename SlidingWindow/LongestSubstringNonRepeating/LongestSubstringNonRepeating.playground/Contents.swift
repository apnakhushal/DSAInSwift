import UIKit

func lengthOfLongestSubstring(_ s: String) -> Int {
    let characters = Array(s)
    var charSet = Set<Character>()
 
    var maxLength = 0
    var left = 0
    
    for right in 0..<characters.count {
        while charSet.contains(characters[right]) {
            charSet.remove(characters[left])
            left += 1
        }
        
        charSet.insert(characters[right])
        maxLength = max(maxLength, right - left + 1)
    }
    
    return maxLength
}


print(lengthOfLongestSubstring("abcccbaddebsfbsbdsdsd"))
print(lengthOfLongestSubstring("abbccaabbcbb"))
print(lengthOfLongestSubstring("bbbbb"))
