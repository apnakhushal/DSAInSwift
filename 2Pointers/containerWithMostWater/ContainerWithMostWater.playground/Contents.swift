import UIKit

func containerWithMostWater(_ heights: [Int]) -> Int {
    var maxArea = 0
    var left = 0
    var right = heights.count - 1
    while left <= right {
        let h = min(heights[left], heights[right])
        let width = right - left
        let currentArea = width * h
        
        maxArea = max(maxArea, currentArea)
        
        if heights[left] < heights[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxArea
}

print(containerWithMostWater([1, 8, 6, 2, 5, 4, 8, 3, 7]))
print(containerWithMostWater([1, 4, 9, 2, 5, 4, 8, 10, 7]))
