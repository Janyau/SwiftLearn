//
//  AccessPermission.swift
//  SwiftLearn
//
//  Created by JanYau on 07/01/2018.
//  Copyright © 2018 JanYau. All rights reserved.
//

import Foundation

/*
 
 swift 里访问权限是基于模块, 源文件, 类来说的
 作用域: 一行代码
 
 /// 1.internal: 在模块内可以访问, 默认属性, 子类可以继承
 /// 2.private: 在当前类中可以访问
 /// 3.fileprivate: 在当前文件中可以访问
 /// 4.public: 若修饰类, 无法继承, 只有查看权限, 无法修改
 /// 5.open: 若修饰类, 可以继承, 可以修改
 
 
 */
