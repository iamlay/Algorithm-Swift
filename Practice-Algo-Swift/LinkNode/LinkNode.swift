//
//  LinkNode.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/9/24.
//

import Foundation

public class ListNode:Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        if lhs.val == rhs.val,lhs.next == rhs.next {
            return true
        }else {
            return false
        }
    }
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


