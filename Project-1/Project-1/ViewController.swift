//
//  ViewController.swift
//  Project-1
//
//  Created by jinweizhao on 2019/1/17.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel: UILabel!
    
    // 给予timer一个默认值，这样timer就不会为Optional,
    // 后续可以不用再解包
    // var timer = Timer()
    
    // 这样定义可以在不用timer时回收内存
    var timer: Timer? = Timer()
    
    // 浮点数默认是Double类型，若要使用Float，需要显示声明
    // var counter: Float = 0.0
    var count: Float = 0.0 {
        // 属性观察器
        didSet {
            countLabel.text = String(format: "%.1f", count);
        }
        
    }
    
    var isPlaying = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }


    
    
    
    @IBAction func resetClick(_ sender: Any) {
        
        if let tim = timer {
            tim.invalidate()
        }
        timer = nil;
        
        isPlaying = false;
        
        count = 0.0
        
        countLabel.text = "0.0";
        
        
    }
    
    @IBAction func beginClick(_ sender: Any) {
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer: Timer) in
            
            self.count = self.count + 0.1;
            
        });
        isPlaying = true
        
    }
    
    @IBAction func suspendClick(_ sender: Any) {
        
        if let tim = timer {
            tim.invalidate()
        }
        timer = nil
        isPlaying = false
        
    }
}

