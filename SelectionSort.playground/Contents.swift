//: Playground - noun: a place where people can play

import UIKit

func insertionSort(input: [Int]) -> [Int] {
    guard input.count > 1 else { return input }
    var output = input
    for i in 0..<output.count {
        var data = input[i]
        var targetIndex = i
        for j in (0...i).reversed() {
            if j == 0 {
                break
            }
            if output[j] < output[j - 1] {
                output.swapAt(j-1, j)
            } else {
                break
            }
        }
//        output[targetIndex] = data
    }
    return output
}

func makeRandomInput() -> [Int] {
    var input: [Int] = []
    for _ in 0...20 {
        input.append(Int(arc4random_uniform(100)))
    }
    return input
}

for _ in 0..<100 {
    let randomInput = makeRandomInput()
    if insertionSort(input: randomInput) != randomInput.sorted(by: <) {
        assertionFailure()
    }
}

