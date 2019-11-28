//
//  ItemListViewController.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/9/27.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var dataProvider: ItemListDataProvider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Todo"
        
        tableView.dataSource = dataProvider
        
        tableView.delegate = dataProvider
        
        dataProvider.itemManager = ToDoItemManager()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showDetails(_:)), name: NSNotification.ItemSelectedNotification, object: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    @objc func showDetails(_ sender: Notification) {
        
        
        
    }

    @IBAction func addItemClick(_ sender: Any) {
        
        let inputVC = storyboard?.instantiateViewController(identifier: "InputViewController") as! InputViewController
        
        
        present(inputVC, animated: true, completion: nil)
    }
    

}
