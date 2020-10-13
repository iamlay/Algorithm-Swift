//
//  BubbleSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/13.
//

import Foundation


public func bubbleSort(list: [Int]) -> [Int]{
    
    guard list.count > 1 else {
        return list
    }
    var list = list
    for i in 0 ..< list.count - 1 {
        
        var flag = false
        for j in 0 ..< list.count - i - 1 {
            
            if list[j] > list[j+1] {
                (list[j+1],list[j]) = (list[j],list[j+1])
                flag = true
            }
        }
        
        if !flag {
            return list
        }
        
    }
    return list
}
