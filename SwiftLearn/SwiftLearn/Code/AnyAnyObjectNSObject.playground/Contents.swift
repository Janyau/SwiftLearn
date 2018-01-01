//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 元祖
 元素与元素之间有关联, 一般用于描述一个整体
 */

// #### 基本使用
/// public typealias Any = protocol<> ,一个协议的声明
/// public protocol AnyObject {} , 一个具体的协议, 只是里面没有内容, 默认下所有的类都遵循这个协议
/// public protocol NSObjectProtocol


class Person: NSObject {
    
}

let array: [Any] = [1, 1.1, "liming", NSObject(), Person()]
let array1: [AnyObject] = [NSObject(), Person()]
let array2: [NSObject] = [NSObject(), Person()]





