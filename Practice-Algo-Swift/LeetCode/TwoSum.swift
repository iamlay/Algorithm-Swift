//
//  File.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2021/7/14.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var sum:[Int] = []
    for i in 0..<nums.count {
      let a = nums[i]
      let b = target - a
        for j in i+1..<nums.count{
            let c = nums[j]
            if c == b {
                sum.append(i)
                sum.append(j)
                return sum
            }
        }
    }
    return sum
}
