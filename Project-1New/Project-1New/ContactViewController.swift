//
//  ContactViewController.swift
//  Project-1New
//
//  Created by jinweizhao on 2019/4/28.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.addSubview(scrollView);
        
    }
    

    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        if #available(iOS 11.0, *) {
            
            scrollView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
            
        }else {
            
            scrollView.frame = CGRect(x: 0, y: topLayoutGuide.length, width: view.frame.width, height: view.frame.height - topLayoutGuide.length - bottomLayoutGuide.length)
            
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: 800)
        
    }
    

}
