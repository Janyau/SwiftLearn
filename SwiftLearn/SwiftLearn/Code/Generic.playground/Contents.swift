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


