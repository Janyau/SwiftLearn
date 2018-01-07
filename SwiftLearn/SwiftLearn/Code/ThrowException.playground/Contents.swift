//: Playground - noun: a place where people can play

import UIKit

let str = "hello"

/*
方法抛出异常
 */

// #### 1.基本定义
/// 自定义抛异常函数时, 需定义一个遵循 Error 协议的枚举
enum FileError: Error {
    case noFile
    case noFormat
    case noContent
}

func readFile(path: String) throws -> String {
    
    // 1.路径不存在
    let isExsit = FileManager.default.fileExists(atPath: path)
    if !isExsit {
        throw FileError.noFile
    }
    
    // 2.格式不正确
    var content = ""
    do {
       content = try String(contentsOfFile: path)
    } catch {
        throw FileError.noFormat
    }
    
    // 3.么有内容
    if content.lengthOfBytes(using: .utf8) == 0 {
        throw FileError.noContent
    }
    return content
}


// #### 2.异常处理方式

let path = Bundle.main.path(forResource: "temp", ofType: "txt") ?? ""
var content = ""

/// 1.do catch
do {
    content = try readFile(path: path)
} catch {
    error
}

/// 2.try? 知道有异常, 但是不处理, 若有问题就是 nil
let contentA = try? readFile(path: path)


/// 3.try! 确信没有异常(不安全)
let contentB = try! readFile(path: path)




