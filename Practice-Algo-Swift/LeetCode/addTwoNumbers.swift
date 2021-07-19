//
//  addTwoNumbers.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2021/7/19.
//

import Foundation


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


