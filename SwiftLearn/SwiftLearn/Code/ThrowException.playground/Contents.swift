//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 元祖
 元素与元素之间有关联, 一般用于描述一个整体
 */

// #### 基本使用

/// 1. 按索引取值
let tuple = ("liming", 28, 88)
tuple.0
tuple.1
tuple.2


/// 2. 按属性取值
let tupleA = (name:"liming", age:28, score:88)
tupleA.name
tupleA.age
tupleA.score


/// _ 表示忽略, 跳过不关心的值
let tupleB = (name:"liming", _:28, score:88)
tupleB.name
tupleB.1
tupleB.score


/// 3.
let (name, age, score) = (name:"liming", age:28, score:88)
name
age
score



