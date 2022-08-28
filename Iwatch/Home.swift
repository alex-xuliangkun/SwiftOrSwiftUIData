//
//  Home.swift
//  Iwatch
//
//  Created by 徐良坤 on 2022/8/27.
//

import UIKit
import SwiftUI

protocol HomeDelegate: NSObjectProtocol{
    func changeValue(value:String)
}


class Home: UIView {
    
//    let integration = UserData()
    var delegate: HomeDelegate?
    
    var content: String = ""{
        didSet{
            Dprint(content)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapAction))
        self.addGestureRecognizer(tap)
    }
    
    @objc func tapAction(){
        content = "点击"
        if let a = self.delegate{
            a.changeValue(value: content)
        }
        else{
        Dprint("----------乄")
        }
//        integration.name = "dsdsd23"
//        ContentView().userData.name = "dsdsd23"
//        Dprint("----点击:\(ContentView().userData.name)")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


