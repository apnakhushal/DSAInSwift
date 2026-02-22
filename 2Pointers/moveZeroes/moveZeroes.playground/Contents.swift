import UIKit

func moveZeroesAtTheEnd(_ numbers: inout [Int]) {
    var left = 0
    for index in 0..<numbers.count {
        if numbers[index] != 0 {
            let temp = numbers[left]
            numbers[left] = numbers[index]
            numbers[index] = temp
            left += 1
        }
    }
}

var numbersOne: [Int] = [0, 1, 0, 3, 12]
moveZeroesAtTheEnd(&numbersOne)
print(numbersOne)

var numbersTwo: [Int] = [2, 1, 0, 0, 12, 0, 5, 0, 0, 7]
moveZeroesAtTheEnd(&numbersTwo)
print(numbersTwo)
