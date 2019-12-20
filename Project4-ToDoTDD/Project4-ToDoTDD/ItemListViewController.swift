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
        
        tableView.rowHeight = 105
        
        dataProvider.itemManager = ToDoItemManager()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showDetails(_:)), name: NSNotification.ItemSelectedNotification, object: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    @objc func showDetails(_ sender: Notification) {
        
        guard let index = sender.userInfo?["index"] as? Int else { fatalError()  }
        
        if let nextVC = storyboard?.instantiateViewController(withIdentifier: Constants.DetailViewControllerIdentifier) as? DetailViewController, let itemManager = dataProvider.itemManager {
            
            guard index < itemManager.toDoCount else {
              return
            }
            
            nextVC.item = itemManager.item(at: index)
              
            navigationController?.pushViewController(nextVC, animated: true)
            
            
            
        }
        
        
    }

    @IBAction func addItemClick(_ sender: Any) {
        
        let inputVC = storyboard?.instantiateViewController(identifier: "InputViewController") as! InputViewController
        inputVC.modalPresentationStyle = .fullScreen
        inputVC.itemManager = dataProvider.itemManager
        
        present(inputVC, animated: true, completion: nil)
    }
    

}
