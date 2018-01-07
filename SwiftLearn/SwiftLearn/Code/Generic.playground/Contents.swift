//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
泛型
 */

/// 泛型: 可理解为"泛式"的类型, 不是指某一特定的类型

/// 使用场景

func exchangeValue(num: inout Int, num2: inout Int) {
    let temp = num
    num = num2
    num2 = temp
}

func exchangeValue(num: inout Double, num2: inout Double) {
    let temp = num
    num = num2
    num2 = temp
}

var a = 10
var b = 20
exchangeValue(num: &a, num2: &b)
a
b

/// 使用泛型
func exchangeValue<T>(num: inout T, num2: inout T) {
    let temp = num
    num = num2
    num2 = temp
}

var c = 5
var d = 30
exchangeValue(num: &c, num2: &d)
c
d


// ##### 1.与结构体结合

struct Point<T> {
    var x: T
    var y: T
}
let p = Point(x: 1, y: 3)
let m = Point(x: 1.1, y: 3.3)


// ##### 2.与类结合

class Stack<T> {
    var array: [Any] = []
    
    func pop() -> T? {
        return array.removeLast() as? T
    }
    
    func push(_ num: T) {
        array.append(num)
    }
}

var st = Stack<Any>()
st.push(1)
st.push(4.5)
st.push("test")

st.pop()
st.pop()
st.pop()


// ##### 3.与协议结合

protocol ProtocolWork {
    associatedtype T
    func run() -> T
    func eat() -> T
}

class Person: ProtocolWork {
    func run() -> Person {
        print("people run")
        return self
    }
    func eat() -> Person {
        print("people eat")
        return self
    }
}
let people = Person()
people.run().run().eat().eat()


class Dog: ProtocolWork {
    func run() -> Dog {
        print("Dog run")
        return self
    }
    func eat() -> Dog {
        print("Dog eat")
        return self
    }
}

let dog = Dog()
dog.run().run().eat().eat()


// ##### 3.与 where 结合

func test<T>(num: T) {
    
}
test(num: people)
test(num: dog)


/// T 必须继承自 Perosn
func testB<T>(num: T) where T: Person {
    
}
testB(num: people)
//testB(num: dog)





