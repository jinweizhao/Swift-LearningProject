//
//  ProductViewController.swift
//  Project-1New
//
//  Created by jinweizhao on 2019/4/28.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(product?.fullscreenImageName ?? "没有名字")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
