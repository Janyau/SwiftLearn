//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 链式编程
 */

// #### 基本使用

class CalculateMaker {
    var result = 0.0
    
    func add(_ num: Double) -> CalculateMaker {
        result += num
        return self
    }
    
    func minus(_ num: Double) -> CalculateMaker {
        result -= num
        return self
    }
}

/// 普通写法, 重复代码多
let p = CalculateMaker()
p.add(1).minus(5).add(10)
p.result

let pa = CalculateMaker()
pa.add(1).minus(3).add(10)
pa.result

/// 链式编程思想
func calculateValue(closure: (CalculateMaker) -> Double) -> Double {
    let p = CalculateMaker()
    closure(p)
    return p.result
}

let re = calculateValue { (maker) -> Double in
    maker.add(1).add(3)
    return maker.result
}









