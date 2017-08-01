//
//  TestBridge.swift
//  OCSwift
//
//  Created by 郑东喜 on 2017/7/31.
//  Copyright © 2017年 郑东喜. All rights reserved.
//

import Foundation
import UIKit


public class TestSwift: UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
    
    }
    
    
    @objc public func thenty(dd : String) -> String {
        
        return dd
    }
    
    public func log() {
        print("log")
    }
}

class XX: NSObject {
    
    func logStr() -> String {
        return "dddddd123"
    }
    
    class func log(str : String) {
        print(str)
    }
    
    public func isPlatForm() -> Bool {
        if Platform.isSimulator {
            return true
        } else {
            return false
        }
    }
    
}

/// 输出日志
///
/// - Parameters:
///   - message: 输出日志
///   - logError: 错误标记，默认是 false，如果是 true，发布时仍然会输出
///   - file: 文件名
///   - method: 方法名
///   - line: 代码行数
func CCog(message : Any,
          logError: Bool = false,
          file: String = #file,
          method: String = #function,
          line: Int = #line)
{
    if logError {
        let dformatter = DateFormatter()
        dformatter.dateFormat = "HH:mm:ss"
        
        print("\(dformatter.string(from: Date()))","\((file as NSString).lastPathComponent) : \(line), \(method) : \(message)")
    } else {
        #if DEBUG
            let dformatter = DateFormatter()
            dformatter.dateFormat = "HH:mm:ss"
            print("\(dformatter.string(from: Date()))","\((file as NSString).lastPathComponent) : \(line), \(method) : \(message)")
        #endif
    }
}

/// 判断是否是模拟器
public struct Platform {
    static let isSimulator: Bool = {
        var isSim = false
        #if arch(i386) || arch(x86_64)
            isSim = true
        #endif
        return isSim
    }()
}
