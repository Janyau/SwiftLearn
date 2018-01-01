//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
 类
 */

// #### 基本使用

/// 1.swift 中类可以不继承父类, 那它本身就是 rootClass
/// 2.类, 默认不会生成逐一构造器, 因此不能保证所有的非可选属性有值
/// 3.创建一个实例对象时, 必须保证所有的非可选属性有值
///    3.1.自定义构造函数
///    3.2.定义属性时赋初值
///    3.3.可选属性

/// 不继承
class Person {
    var name: String
    var age: Int?
    
    init() {
        self.name = ""
    }
}

var p = Person()

/// 继承
class PersonA: NSObject {
    var name: String
    override init() {
        self.name = "liming"
    }
}

let pa = PersonA()
pa.name


// #### 析构函数
/// 属性和deinit 必须放在class里, 其它可放在extension里

class PersonB: NSObject {
    var name: String = ""
    var age: Int = 0
    var score: Int = 0
    
    //  析构函数, 相当于OC的dealloc
    deinit {
        print("PersonB release")
    }
}

var pb: PersonB? = PersonB()
pb = nil


// #### 类的属性


class PersonC {
    var name: String = ""
    
    /// 1.存储属性: 直接存储数值
    var score: Int = 0
    var score1: Int = 0
    
    /// 2.计算属性: 计算得来的值
    var average: Int {
        get {
            return (score + score1)/2
        }
    }

    var all: Int {
        return (score + score1)
    }
}

let pc = PersonC()
pc.score = 10
pc.score1 = 20
pc.all
pc.average


// #### 类的方法

class PersonD {
    static var count: Int = 0
    
    /// static 修饰的类型方法不能被重写
    static func functionA() {
        print("static function \(count)")
    }
    
    /// class 修饰的类型方法可以被重写
    class func functionB() {
        print("class function \(count)")
    }
}

PersonD.count = 10
PersonD.functionA()

PersonD.count = 20
PersonD.functionB()


/// 继承自 PersonD
class PersonE: PersonD {
    override class func functionB() {
        print("class function \(count)")
    }
}


// #### 监听属性的变化

class PersonT {
    var name: String = "" {
        willSet {
            newValue
        }
        didSet {
            oldValue
        }
    }
    
    var score: Int = 0 {
        willSet(newScore) {
            newScore
        }
        didSet(oldScore) {
            oldScore
        }
    }
}

let pt = PersonT()
pt.score = 10



// #### 自动引用计数器

/// 看是否有强引用指向实例

/// 循环引用, weak

class PersonU {
    weak var cat: Cat?

    deinit {
        print("person deinit")
    }
}

class Cat {
    var master: PersonU?
    
    deinit {
        print("cat deinit")
    }
}

var pu: PersonU? = PersonU()
var cat: Cat? = Cat()

pu?.cat = cat
cat?.master = pu
pu = nil
cat = nil


// #### 三大特性

/// 1.封装

/// 2.继承
///   2.1.重写
///   2.2.重载
///       2.2.1.参数名相同(参数个数不同, 或者参数类型不同)


class PersonV {
    func test(num: Int) {
        
    }
    
    @objc(testA:) /// 兼容 OC
    func test(num: Double) {
        
    }
}

/// 3.多态
///   3.1. 父类指针指向子类, 来调用子类的方法

class PersonM {
    func reload() {
        print("super reload")
    }
}

class PersonS: PersonM {
    override func reload() {
        print("sub reload")
    }
    
    func subFuntion() {
        print("subFuntion")
    }
}

let pm = PersonM()
let pn = PersonS()
pm.reload()
pn.reload()

let po: PersonM = PersonS()
//po.subFuntion()





















