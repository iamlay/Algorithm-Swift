//
//  LinkNode-DeleteNCode.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/12.
//

import Foundation

//删除列表的第N个节点
func deleteNCode(_ head: ListNode?,_ n: NSInteger) -> ListNode?{

    guard let _ = head else {
        return nil
    }
    var slow = head
    var fast = head
    var  i = 0
    while i < n, fast != nil {
        fast = fast?.next
        i += 1
    }
    if fast == nil, i == n {
        slow = slow?.next
        return slow
    }
    //倒数第N个正好是头节点
    var preNode: ListNode?
    while fast != nil {
        preNode = slow
        fast = fast?.next
        slow = slow?.next
    }
    preNode?.next = slow?.next
    return head
}
