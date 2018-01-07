//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 懒加载
 */

// #### 基本使用

class Person {
    lazy var dog: Dog? = {
        let dog = Dog()
        dog.name = "lina"
        print("create dog")
        return dog
    }()

    lazy var dogA: Dog? = {
        $0.name = "lina"
        print("create dogA")
        return $0
    }(Dog())
    
    lazy var dogB: Dog? = {
        $0
    }(Dog())
}

class Dog {
    var name: String?
    
}

/// 懒加载只是在第一次使用的时候调用相应函数, 获取实例, 下次即使置为 nil, 也不会调用相应的函数
var p: Person? = Person()
p?.dog
p?.dog
p = nil
p?.dog


p?.dogA
p?.dogA

p?.dogB
p?.dogB


