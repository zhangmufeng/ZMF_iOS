//
//  ZFSwiftGrammarViewController.swift
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/10.
//  Copyright © 2017年 张木锋. All rights reserved.
//

import UIKit

class ZFSwiftGrammarViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        setting();
        initUI();
        TestDemo01();
    }
    func setting() {
        self.view.backgroundColor = UIColor.yellow;
    }
    func initUI() {
    }
    
    func TestDemo01() {
        // 常量可选项要设置初始值才可以使用，因为他没有初始值
        let _:Int? = 1
        let b:Int? = 10
        // 变量可选项初始值默认为nil，可以不设置初始值就可以使用
        var c:Int?
        var d:Int? = 20
  
        d = 30
        
        print(b,c,d) //Optional(10) nil Optional(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
}
