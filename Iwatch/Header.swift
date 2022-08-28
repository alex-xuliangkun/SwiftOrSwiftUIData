//
//  Header.swift
//  Iwatch
//
//  Created by 徐良坤 on 2022/8/27.
//

import Foundation


func Dprint<T>(_ message: T, filePath: String = #file, rowCount: Int = #line) {
    #if DEBUG
    let fileName = (filePath as NSString).lastPathComponent.replacingOccurrences(of: ".swift", with: "")
    
    let dformatter = DateFormatter.init()
    dformatter.dateFormat = "HH:mm:ss"
    let str = dformatter.string(from: Date.init())
    
    print("class:" + fileName + "  time:" + "\(str)" + " line:" + "\(rowCount)" + "  \(message)" + "\n")
    #endif
}
