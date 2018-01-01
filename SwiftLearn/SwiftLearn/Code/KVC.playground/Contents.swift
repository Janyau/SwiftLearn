//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 KVC 字典转模型
 */

// #### 基本使用
class Stu {
    var name: String = ""
    var age: Int = 0
    var score: Int = 0
    
    init(dic: [String: Any]) {
        self.name = dic["name"] as? String ?? ""
        self.age = dic["age"] as? Int ?? 0
        self.score = dic["score"] as? Int ?? 0
    }
}

let dic: [String: Any] = [
    "name": "liming",
    "age": 18,
    "score": 80
]

let stuA = Stu.init(dic: dic)
stuA.name
stuA.age
stuA.score


// #### KVC
class Person: NSObject {
    var name: String = ""
    var age: Int = 0
    var score: Int = 0
    
    init(dictionary: [String: Any]) {
        super.init()
        setValuesForKeys(dictionary)
    }
}

// libc++abi.dylib: terminating with uncaught exception of type NSException
//let p = Person(dictionary: dic)






