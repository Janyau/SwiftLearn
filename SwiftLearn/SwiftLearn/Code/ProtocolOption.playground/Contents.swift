//: Playground - noun: a place where people can play

import UIKit


/*
协议的可选
 */

/// 协议的可选, 仅仅是 OC 的特性, swift 不支持
/// 解决: 让 swift 的协议具备 OC 的特性

@objc
protocol protocolA {
    @objc optional func run()
}

class Person: protocolA {
    
}




