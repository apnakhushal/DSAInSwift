import UIKit

func sumOfPair(numbers: [Int], target: Int) {
    var left = 0
    var right = numbers.count - 1
    var pairFound = false
    
    while left < right {
        if numbers[left] + numbers[right] == target {
            pairFound = true
            print("There is a pair (\(numbers[left]), \(numbers[right])) with given target -> \(target).")
            break
        } else if numbers[left] + numbers[right] < target {
            left += 1
        } else {
            right -= 1
        }
    }
    
    if !pairFound {
        print("There is no pair with sum \(target)")
    }
}

sumOfPair(numbers: [10, 20, 35, 50], target: 70)
sumOfPair(numbers: [10, 20, 35, 50], target: 73)
