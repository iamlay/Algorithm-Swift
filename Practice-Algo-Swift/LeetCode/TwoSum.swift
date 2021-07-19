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

//两数相加，两个非空链表相加
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

    var ll1 = l1, ll2 = l2, node = ListNode(0)
    let nodes = node
    var flag = 0
    while (ll1?.val != nil || ll2?.val != nil || flag == 1) {
        let num1: Int = ll1?.val ?? 0
        let num2: Int = ll2?.val ?? 0
        var num = num1  + num2 +  flag
        if num > 9 {
            num  = num%10
            flag  = 1
        }else{
            flag = 0
        }
        node.next = ListNode(num)
        node = node.next!
        ll1 = ll1?.next
        ll2 = ll2?.next
    }
    return nodes.next
}
