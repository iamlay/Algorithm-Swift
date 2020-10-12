//
//  LinkNode-IsListNodeCircle.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/12.
//

import Foundation

//链表中是否有环
func isListNodeCircle(_ head: ListNode?) -> Bool {
    
    guard let _ = head else{
        return false
    }
    var fast = head?.next
    var slow = head
    while fast != nil {
        if slow == fast {
            return true
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    return false
}
