//
//  LRUCache.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2022/1/4.
//

import Foundation

class Node {
    let key: Int, value: Int
    var pre: Node?, next: Node?
    init(key: Int, value: Int) {
        self.key = key
        self.value = value
    }
}

class DoubleList {
    private let head: Node, tail: Node
    private var size = 0
    init() {
        head = Node.init(key: 0, value: 0)
        tail = Node.init(key: 0, value: 0)
        head.next = tail
        tail.pre = head
    }
    func add(_ node: Node)  {

        let first = head.next

        first?.pre = node
        node.next = first

        node.pre = head
        head.next = node

        size += 1
    }

    func remove(_ node: Node) {
        node.pre?.next = node.next
        node.next?.pre = node.pre
        size -= 1
    }

    func removeLast() -> Node? {
        guard let result = tail.pre, size >= 1 else{
            return nil
        }
        remove(result)
        return result
    }

    func sizeOf() -> Int {
        return size
    }
}

class LRUCache {

    private let capacity: Int
    private var map = [Int:Node]()
    private var list = DoubleList()
    init(_ capacity: Int){
        self.capacity = capacity
    }

    func get(_ key: Int) -> Int {
        if let node = map[key] {
            list.remove(node)
            list.add(node)
            return node.value
        } else {
            return -1
        }
    }

    func put(_ key: Int, _ value: Int)  {
        if let node = map[key] {
            list.remove(node)
        }

        let newNode = Node.init(key: key, value: value)
        list.add(newNode)
        map[key] = newNode

        if list.sizeOf() > capacity, let last = list.removeLast() {
            map.removeValue(forKey: last.key)
        }


    }

}
