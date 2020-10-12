//
//  LinkNode-MergeSortList.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/12.
//

import Foundation

//合并两个排序好的列表

func mergeSortList(_ headA: ListNode?, _ headB: ListNode? ) ->  ListNode?{
    
    guard let _ = headA else {
        return headB
    }
    guard let _ = headB else {
        return headA
    }
    var head: ListNode?
    var tail: ListNode?
    var nodeA = headA
    var nodeB = headB
    if nodeA!.val < nodeB!.val{
        head = nodeA
        nodeA = nodeA!.next
    }else{
        head = nodeB
        nodeB = nodeB!.next
    }
    tail = head
    while nodeB != nil, nodeA != nil {
        
        if nodeB!.val < nodeA!.val {
            tail!.next = nodeB
            nodeB = nodeB?.next
        }else{
            tail!.next = nodeA
            nodeA = nodeA?.next
        }
        tail = tail?.next
    }
    
    if nodeA != nil {
        tail?.next = nodeA
    } else  {
        tail?.next = nodeB
    }
    return head
}
