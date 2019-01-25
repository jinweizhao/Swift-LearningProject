//
//  ViewController.swift
//  Project-2
//
//  Created by jinweizhao on 2019/1/18.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeFontBtn: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    var fontNames = ["MF JinHei (Noncommercial)",
                     "MF TongXin (Noncommercial)",
                     "Zapfino"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeFontBtn.layer.cornerRadius = 60;
        
        
    }

    @IBAction func changeFont(_ sender: Any) {
        
        let fontNameStr = fontNames[Int((arc4random() % 2))]
        
        let font = UIFont(name: fontNameStr, size: 20)
        
        textView.font = font
        
    }
    
}

