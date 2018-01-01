//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 枚举
 */

// #### 基本使用

/// swift 里枚举在默认情况下只是一个抽象符号, 不表示任何类型, 若想绑定原始值, 必须指定枚举类型

// #### 定义
/// 1.默认定义
enum DirectionA {
    case east
    case south
    case west
    case north
}
DirectionA.east

enum DirectionB {
    case east, south, west, north
}
DirectionB.east


FileManager.default.urls(for: FileManager.SearchPathDirectory.cachesDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)

/// 自动匹配类型, 可省略枚举类型, 直接输入 "." 即可
FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)


/// 2.定义类型
enum DirectionC: Int {
    case east = 3
    case south
    case west
    case north
}

/// Int 类型的枚举值自动递增
DirectionC.east

/// 枚举值 --> 原始值
let value = DirectionC.south.rawValue

/// 原始值 --> 枚举值
let enumValue = DirectionC(rawValue: 5)

let isEqual = (enumValue == DirectionC.west)


enum DirectionD: String {
    case cache = "user/cache"
    case doc = "user/doc"
}
