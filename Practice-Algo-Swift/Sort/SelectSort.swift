//
//  SelectSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/14.
//

import Foundation


func selectSort(list: inout [Int]) -> [Int] {
    
    guard list.count > 1 else {
        return  list
    }
    for i in 0..<list.count {
        var minIndex = i
        for j in i+1 ..< list.count {
            if list[j] < list[minIndex] {
                minIndex =  j
            }
        }
        if minIndex != i {
            list.swapAt(i, minIndex)
        }
    }
    return list
    
}
