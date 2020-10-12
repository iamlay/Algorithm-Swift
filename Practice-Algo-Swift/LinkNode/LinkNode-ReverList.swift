//
//  LinkNode-ReverList.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/12.
//

import Foundation

//单链表反转
func reverList(node: ListNode) -> ListNode? {
    var pre: ListNode?
    var current: ListNode? = node
    while current != nil {
       let next = current?.next
        current?.next = pre
        pre = current
        current = next
    }
    return pre
}
