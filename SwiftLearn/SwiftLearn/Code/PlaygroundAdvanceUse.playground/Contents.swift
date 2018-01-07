//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
  Playground 高级使用
 */

/*
 1.Playground 中写的代码, 会被编译器实时编译, 并运行显示结果
 2.每次只要修改一个字符, 都会重新编译

*/

// #### 1.Quick Look

let img = #imageLiteral(resourceName: "img.png")

for i in 0...100 {
    sin(Double(i))
}

let url = URL(string: "www.baidu.com")

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
view.backgroundColor = UIColor.red


// #### 2.放在 Sources 目录下的源文件会被编译成模块(Model), 并自动导入 Playground

let p = Person()
p.name
p.test()


