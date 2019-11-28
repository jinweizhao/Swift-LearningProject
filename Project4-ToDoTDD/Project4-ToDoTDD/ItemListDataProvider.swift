//
//  ItemListDataProvider.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/9/27.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject {
    var itemManager: ToDoItemManager?
}


extension ItemListDataProvider: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath)
        return cell
    }
    
}

extension ItemListDataProvider: UITableViewDelegate{
    
    
    
}

