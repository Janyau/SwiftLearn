//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 函数
 */


// #### 基本格式

func add(num1: Int, num2: Int) -> (Int) {
    return num1 + num2
}

add(num1: 1, num2: 2)


// #### 基本类型

// ##### 1.无参数无返回值
func functionA() -> Void {
    
}

/// () 为空的元祖, 故 Void 等于 ()
func functionA1() -> () {
    
}

func functionA2() {
    
}


// ##### 2.无参数有返回值
func functionB() -> Int {
    return 1
}


// ##### 3.有参数无返回值
func functionC(num1:Int, num2: Int) {

}


// ##### 4.有参数有返回值(多个)
func functionD(num1: Int, num2: Int) -> (Int, Int, String) {
    return (2, 3, "liming")
}


// #### 参数

// ##### 1.外部参数
func addNum(num1: Int, num2: Int) -> Int {
    /// 内部参数: 在函数内部可以用到的参数
    return num1 + num2
}


/// 外部参数: 在函数外部可以用到的参数
addNum(num1: 1, num2: 3)


/// 忽略参数名, 修改参数名, 主要用来更好地描述函数的调用
func addPath(_ path1: Int, to path2: Int) -> Int {
    return path1 + path2
}

addPath(1, to: 3)


// ##### 2.默认参数

/// 应用场景: 接口升级不用改函数
func addDefault(path1: Int, to path2: Int = 0) -> Int {
    return path1 + path2
}

addDefault(path1: 1)

addDefault(path1: 1, to: 2)


// ##### 3.可变参数: 类型...

/// 函数内部把nums当作数组处理
func addMutable(nums: Int...) -> Int {
    var result = 0
    for num in nums {
        result += num
    }
    return result
}

addMutable(nums: 1, 2, 3)


// ##### 4.函数参数的地址传递
func changeValue(num: inout Int) {
    num = 3
}

var change = 0
changeValue(num: &change)
change


// ##### 5.函数的嵌套使用

/// 应用场景: 一个函数拆解成几个步骤
func loop () {
    func loopSub() {
        print("sub func")
    }
    
    loopSub()
    print("super func")
}

loop()


// #### 函数的类型

/// 参数 + 返回值 : (Int, Int) -> Int, 可用于另一个函数的参数或者返回值
func add(num: Int, num2 :Int) -> Int {
    
    return num + num2
}

func minus(num: Int, num2 :Int) -> Int {
    
    return num - num2
}

/// 函数类型--> 参数
func calculate(num: Int, num2: Int, function: (Int, Int) -> Int) -> Int {
 return function(num, num2)
}

calculate(num: 3, num2: 5, function: add(num1:num2:))

/// 函数类型--> 返回值
func getFunc(name: String) -> ((Int, Int) -> Int) {
    if name == "add" {
        return add(num1:num2:)
    }
    return minus(num:num2:)
}

let myFunc = getFunc(name: "add")
myFunc(2, 3)


// #### 编译器区分不同函数
/// 函数类型: 参数类型 + 返回值类型(Int, Int) -> Int

// ##### 1.函数名

func testA(num: Int, num2: Int) -> Int {
    return 0
}

func testA1(num: Int, num2: Int) -> Int {
    return 0
}

// ##### 2.外部参数名称

func testB(num: Int, num2: Int) -> Int {
    return 0
}

func testB(numA: Int, num2: Int) -> Int {
    return 0
}

// ##### 3.参数类型 + 返回值类型 = 函数类型

func testC(num: Int, num2: Int) -> Int {
    // (Int, Int) -> Int
    return 0
}

func testC(num: Int, num2: Int) -> Double {
    // (Int, Int) -> Double
    return 0
}




