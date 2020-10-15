//
//  MergeSort.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/10/15.
//

import Foundation

// MARK - 归并排序

func mergeSort(_ list: [Int]) -> [Int] {
    
    guard list.count > 1 else {
        return list
    }
    //找出数组的中间值
    let middleIndex = list.count/2
    //使用中间值，不断的茶粉左边的数组
    let leftList = mergeSort(Array(list[0..<middleIndex]))
    let rightList = mergeSort(Array(list[middleIndex..<list.count]))
    return merge(letfList: leftList, rightList: rightList)
}


 private func merge(letfList: [Int], rightList: [Int]) -> [Int] {
    //在合并过程中，创建2个索引，追踪合并的两个数组
    var letfIndex = 0
    var rightIndex = 0
    //这里的空数组为合并数组，在接下来的步骤里，这个空数组会不断的从其他数组放入新的元素
    var orderPile = [Int]()
    //对左右两个分区的数组进行比较，并按照大小放在orderPile
    while letfIndex < letfList.count,rightIndex < rightList.count {
        
        if letfList[letfIndex] < rightList[rightIndex] {
            
            orderPile.append(letfList[letfIndex])
            letfIndex += 1
            
        }else if letfList[letfIndex] > rightList[rightIndex]{
            orderPile.append(rightList[rightIndex])
            rightIndex += 1
        }else{
            orderPile.append(letfList[letfIndex])
            letfIndex += 1
            orderPile.append(rightList[rightIndex])
            rightIndex += 1
        }
    }
  
    while letfIndex < letfList.count {
        orderPile.append(letfList[letfIndex])
        letfIndex += 1
    }

    while rightIndex < rightList.count {
        orderPile.append(rightList[rightIndex])
        rightIndex += 1
    }
    
    return orderPile
}
