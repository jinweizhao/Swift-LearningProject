//
//  Contants.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/11/27.
//  Copyright © 2019 JWZ. All rights reserved.
//

import Foundation

struct Constants {
    
    static let MainBundleIdentifer = "Main"
    static let ItemListViewControllerIdentifier = "ItemListViewController"
    static let DetailViewControllerIdentifier = "DetailViewController"
    static let InputViewControllerIndentifier = "InputViewController"
    
    static let ItemCellIdentifier = "ItemCell"

    static let userName = "Crystal"
    static let password = "1234"
    
}


extension NSNotification {
    static let ItemSelectedNotification = NSNotification.Name("ItemSelectedNotification")
}
