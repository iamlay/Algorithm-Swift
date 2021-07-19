//
//  lengthOfLongestSubstring.swift
//  Practice-Algo-Swift
//
//  Created by 雷传营 on 2021/7/19.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        var str: String = String()
        var finishStr: String = String()
        s.enumerated().makeIterator().forEach { (offset, element) in
            if str.contains(element){

                if element == str.first{
                    str.removeFirst()
                    str.append(element)
                }else if element == str.last{
                    str = "\(element)"
                }else{
                    let tempArray =  str.components(separatedBy: "\(element)")
                    let tempStr: String = tempArray[1]
                    str = tempStr.appending("\(element)")
                }
            }else{
                str.append(element)
            }
            if str.count > finishStr.count{
                finishStr = str
            }
        }
        return finishStr.count
    }
}
