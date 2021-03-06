//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let str = "hello"

/*
 元祖
 元素与元素之间有关联, 一般用于描述一个整体
 */

// #### 基本使用

// ##### 1. 按索引取值
let tuple = ("liming", 28, 88)
tuple.0
tuple.1
tuple.2


// ##### 2. 按属性取值
let tupleA = (name:"liming", age:28, score:88)
tupleA.name
tupleA.age
tupleA.score


/// _ 表示忽略
let tupleB = (name:"liming", _:28, score:88)
tupleB.name
tupleB.1
tupleB.score


// ##### 3.
let (name, age, score) = (name:"liming", age:28, score:88)
name
age
score


// #### 应用场景

// ##### 1. 方法传递多个参数
func selecter(para : (String, Int)) {
    
}


// ##### 2. 方法返回多个参数
func getSelecter() -> (name:String, age:Int, score:Double) {
    return ("liming", 2, 3.0)
}

let p = getSelecter()
p.name
p.age
p.score


/*
   注意: 用var定义的元组就是可变元组, let定义的就是不可变元组. 不管是可变还是不可变元组, 元组在创建后就不能对其长度进行增加和删除之类的修改, 只有可变元组能在创建之后修改元组中的数据, 但是, 可变元组虽然可以修改数据, 但却不能改变其数据的数据类型
*/
