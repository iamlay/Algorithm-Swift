//
//  QuickSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/15.
//

import Foundation

private func partition(_ array: inout [Int], _ p:  Int,_ r: Int) -> Int {
    
    let pivot = array[r]
    var i = p
    for j in p...r-1 {
        if array[j] < pivot {
            array.swapAt(i, j)
            i += 1
        }
    }
    array.swapAt(i, r)
    return i
}

public func quickSort (_ array: inout [Int], _ p: Int, _ r: Int) {
    if p  >= r {
        return 
    }
    let i = partition(&array, p, r)
    quickSort(&array, p, i-1)
    quickSort(&array, i+1, r)
}
