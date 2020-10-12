//
//  LinkNode-HalfNode.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/12.
//

import Foundation

//求链表的 中间节点
func halfNode(_ head: ListNode?) -> ListNode?{
    guard let _ = head else {
      return nil
    }
    var fastNode = head
    var slowNode = head
    while fastNode?.next != nil, fastNode?.next?.next != nil {
       fastNode = fastNode?.next?.next
        slowNode = slowNode?.next
    }
    if fastNode?.next != nil{
         slowNode = slowNode?.next
    }
    return slowNode
}
