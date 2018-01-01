//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 结构体
 */

/// 结构体是由一系列具有相同类型或者不同类型的数据结构构成的集合
/// 结构体也是一种数据结构
/// 结构体在方法中是值传递

// #### 基本定义

/// 1.类型方法  static func
/// 2.实例方法  func
/// 3.结构体或者枚举都可以写方法

/// enum
enum Direction {
    case east
    func instanceFunc() {
        print("enum instance func")
    }
    static func typeFunc() {
        print("enum type func")
    }
}

Direction.east.instanceFunc()
Direction.typeFunc()

/// struct
struct Point {
    // 实例属性
    var x : Double
    var y : Double
    
    // 实例方法
    func instanceFunc() {
        print("struct instance func", x, Point.z)
    }
    
    // 类型属性
    static var z : Double = 0
    
    // 类型方法
    static func typeFunc() {
        print("struct type func", z)
    }
}

let p = Point(x: 1, y: 3)
p.x
p.instanceFunc()

Point.z
Point.typeFunc()


// #### 应用场景

/// 计算两点间的距离
func distance(p1: Point, p2: Point) -> Double {
    let value = pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2)
    return sqrt(value)
}

let p1 = Point(x: 0, y: 0)
let p2 = Point(x: 0, y: 2)

distance(p1: p1, p2: p2)


// #### 结构体扩充构造函数

// ##### 1.逐一构造器
struct PointA {
    var x : Double
    var y : Double
    var z : Double
}
/// 系统默认的构造函数(逐一构造器): 逐个给所有的非可选属性赋值, 目的就是保证当一个实例创建后, 里面所有的非可选属性都有值
let point = PointA(x: 1, y: 2, z: 3)


// ##### 2.自定义构造函数

/// 自定义构造函数(构造实例的函数)规则:
/// 1.不使用 func
/// 2.必须使用 init 作为名称
/// 3.在构造函数内部, 必须保证所有的非可选属性有值
/// 4.扩充构造函数会覆盖系统的逐一构造器, 若想使用系统构造函数, 必须重新定义一个新的函数

/// z 为非可选, 需初始化
struct PointB {
    var x : Double
    var y : Double
    var z : Double

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        z = 0
    }
}
let pointB = PointB(x: 2, y: 4)

/// z 为可选, 故不必初始化
struct PointC {
    var x : Double
    var y : Double
    var z : Double?
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
let pointC = PointC(x: 2, y: 4)



// ##### 3.结构体扩充函数

struct PointD {
    var x: Double
    var y: Double
    
    // 默认情况下, 自定义的实例函数是无法修改实例属性的, 除非使用关键字 mutating 修饰 func
    mutating func moveX(distance: Double) {
        self.x += distance
        print("在 X 轴上移动了\(self.x)")
    }
    
    static var z: Double = 0
    static func moveZ(distance: Double) {
        z += distance
        print("在 Z 轴上移动了\(z)")
        
    }
}

var pd = PointD(x: 3, y: 2)
pd.moveX(distance: 5)

PointD.moveZ(distance: 10)


// ##### 4.类型扩展

extension CGPoint {
    mutating func move(distance: CGFloat) {
        self.x += distance
        print("移动了\(self.x)")
    }
}

var pe = CGPoint(x: 3, y: 5)
pe.move(distance: 8)

