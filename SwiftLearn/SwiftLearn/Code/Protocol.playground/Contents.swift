//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
协议
 */


// ##### 类遵循协议
/// 定义
protocol protocolA {
    func test()
}

protocol protocolB {
    func run()
}

protocol protocolC: protocolA {
    func load()
}

/// 遵循多个协议, 若遵循了某个协议, 必须实现协议里面所有的方法
class Person: protocolA, protocolB {
    func test() {

    }
    func run() {

    }
}

class PersonA: Person, protocolC {
    func load() {
        
    }
}

/// 协议可以继承
class PersonB: protocolC {
    func test() {
        
    }
    func load() {
        
    }
}


// ##### 枚举遵循协议
enum Direction: protocolA {
    case left, right
    func test() {
        print("enum -> protocolA")
    }
}
Direction.left.test()


// ##### 结构体遵循协议
struct Point: protocolA {
    var name: String
    func test() {
        print("struct -> protocolA")
    }
}
let p = Point(name: "liming")
p.test()






