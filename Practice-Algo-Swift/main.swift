//
//  main.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2020/9/24.
//

import Foundation

//冒泡排序
print(bubbleSort(list: [3,5,4,2,1]))

//插入排序
var array = [3,4,1,5,4,8]
print(insertSort(list: &array))

//选择排序
var selectArray = [3,4,1,5,4,8]
print(selectSort(list: &selectArray))

//归并排序
var mergeArray = [3,4,1,5,4,8]
print(mergeSort(mergeArray))

//快速排序,原地分区
var quickArray = [3,4,1,5,4,8]
quickSort(&quickArray, 0, 5)
print(quickArray)
