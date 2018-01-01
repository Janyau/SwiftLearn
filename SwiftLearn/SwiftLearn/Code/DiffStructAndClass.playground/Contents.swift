//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
结构体和类的区别
 */


/// 1. 结构体有逐一构造器, 类没有
/// 2. 结构体是值传递, 类是引用类型
/// 3. 结构体不能继承, 故没有多态特性

protocol myTocol {
    
}

/// 这叫遵循协议, 枚举也可以
struct Person: myTocol {
    var name: String
    var age: Int
}

