//
//  Product.swift
//  Project-1New
//
//  Created by jinweizhao on 2019/4/28.
//  Copyright © 2019 JWZ. All rights reserved.
//

import Foundation


class Product {
    
    var name: String?
    
    var cellImageName: String?
    
    var fullscreenImageName: String?
    
    init(name: String, cellImageName: String, fullscreenImageName: String) {
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
    
}
