//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
代理
 */

// #### 基本使用

/// protocol: class
/// protocol: NSObjectProtocol

/// 1.基本使用

protocol protocolA {
    func run()
}

class Person: protocolA {
    func run() {
        print("man work")
    }
    deinit {
        print("person deinit")
    }
}

class Dog {
    var delegate: protocolA?

    deinit {
        print("dog deinit")
    }
}

var person: Person? = Person()
var dog: Dog? = Dog()
dog?.delegate = person
dog?.delegate?.run()


/// 2.若使用 weak 属性, protocol 必须继承自 class, 比较轻量级

protocol protocolB: class {
    func run()
}

class PersonB: protocolB {
    func run() {
        print("manB work")
    }
    deinit {
        print("personB deinit")
    }
}

class DogB {
    weak var delegate: protocolB?
    
    deinit {
        print("dogB deinit")
    }
}

var personB: PersonB? = PersonB()
var dogB: DogB? = DogB()
dogB?.delegate = personB
dogB?.delegate?.run()


/// 3.若使用protocol继承自 NSObjectProtocol, 则对于的实例对象也要继承 NSObject

protocol protocolC: NSObjectProtocol {
    func run()
}

class PersonC:NSObject, protocolC {
    func run() {
        print("manC work")
    }
    deinit {
        print("personC deinit")
    }
}

class DogC {
    weak var delegate: protocolC?
    
    deinit {
        print("dogC deinit")
    }
}

var personC: PersonC? = PersonC()
var dogC: DogC? = DogC()
dogC?.delegate = personC
dogC?.delegate?.run()

