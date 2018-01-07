//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 闭包
 闭包 == 特殊的函数
 */

// ##### 1.基本使用

let closureAdd: (Int, Int) -> Int = {
    (a, b)->(Int) in
    return a + b
}


let closureMinus: (Int, Int) -> Int = {
    (a, b)->(Int) in
    return a - b
}

/// 若没有参数, 可省略 in 前后的语句
let closureOther: () -> Int = {
//    (a, b)->(Int) in
    return 1
}

func calculateValue(num1: Int, num2: Int, funciton: (Int, Int) -> Int) -> Int {
    return funciton(num1, num2)
}

let a = calculateValue(num1: 10, num2: 20, funciton: closureAdd)
let b = calculateValue(num1: 3, num2: 5, funciton: closureMinus)

closureOther()


// ##### 2.闭包类型

/// 闭包参数放在前面, 函数调用时可读性差
func generateA(closure: (Int, Int) -> (Int), a: Int, b: Int) -> Int {
    return closure(a, b)
}
generateA(closure: { (a, b) -> (Int) in
    return a + b
}, a: 1, b: 3)


/// 尾随闭包(推荐使用)
func generateB(a: Int, b: Int, closure: (Int, Int) -> Int) -> Int {
    return closure(a, b)
}
generateB(a: 11, b: 10) { (a, b) -> Int in
    return a * b
}


/// 逃逸闭包
/// 若一个函数的参数是闭包, 那么默认情况下该闭包是"非逃逸"闭包(闭包的生命周期是函数)
/// @escaping 修饰的闭包是 "逃逸"闭包, 以后有可能被其它闭包延长生命周期(强应用)
func escapeClosure(para: @escaping (_ a: Int, _ b: Int) -> (Int)) -> () {
    
    let queue = DispatchQueue(label: "load")
    let time = DispatchTime.now() + DispatchTimeInterval.seconds(2)
    queue.asyncAfter(deadline: time) {
        _ = para(1, 3)
    }
}


/// 循环引用

class PersonC {
    var closure: (() -> ())?
    var age: Int = 0
    
    func test() {
        /// weak var weakSelf = self
        /// unowned let weakSelf = self, 不安全, 类似 OC 里的 unsafe_unretained
        weak var weakSelf = self
        closure = {
            print("test")
            weakSelf
        }
        closure?()
    }
    
    func testB() {
        /// 方法2: [weak self] in, [unowned self] in
        closure = {
            [weak self] in
            /// [unowned self] in
            print("testB")
            self
        }
        closure?()
    }
    
    deinit {
        print("deinit")
    }
}

var pa: PersonC? = PersonC()
pa?.test()
pa = nil

var pb: PersonC? = PersonC()
pb?.testB()
pb = nil

