//
//  InsertSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/14.
//

import Foundation

func insertSort(list: inout [Int]) -> [Int]{
    
    guard list.count > 1 else {
        return list
    }
    for i in  0..<list.count - 1{
        
        if list[i + 1] < list[i] {
            let temp = list[i+1]
            var j = i + 1
            repeat {
                list[j ] = list[j - 1 ]
                j -= 1
                
            } while ( ( j - 1) >= 0  &&  list[j - 1] > temp)
            list[j] = temp
        }
    }
    return list
}
