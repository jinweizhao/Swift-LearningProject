//
//  ToDoItemManager.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/9/27.
//  Copyright © 2019 JWZ. All rights reserved.
//

import Foundation



class ToDoItemManager {
    
    var toDoCount: Int {
        return toDoItems.count
    }
    
    var doneCount: Int {
        return doneItems.count
    }
    
    private var toDoItems = [ToDoItem]()
    
    private var doneItems = [ToDoItem]()
    
    
    
    
    
    func add(item: ToDoItem) {
        toDoItems.append(item)
    }
    
    
    
    
}
