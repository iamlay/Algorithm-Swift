//
//  LeetCode04_findMedianSortedArrays.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2021/7/19.
//

import Foundation

class findMedianSortedArraySolution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var num3  =  nums1 + nums2
         num3.sort(by: >)
        if num3.count % 2 == 0 {
            return (Double(num3[num3.count/2]) + Double(num3[num3.count/2 - 1]))/2.0
        }else{
            return Double(num3[num3.count/2])
        }
    
    }
}
