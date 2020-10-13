//
//  BubbleSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/13.
//

import Foundation


public func bubbleSort(array: [Int]) -> [Int]{
    
    guard array.count > 1 else {
        
          return array
    }
    var array = array
    for i in 0..<array.count - 1 {
        
        var flag: Bool = false
        for j in 0 ..< array.count - i - 1 {
            
            if array[j] > array[j+1] {
                
                (array[j+1], array[j]) = (array[j], array[j+1])
                flag = true
            }
            
        }
        
        if !flag {
            return array
        }
    }
    
    return array;
}
