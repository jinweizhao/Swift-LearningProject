//
//  FBMeViewController.swift
//  Project-3New-facebookNew
//
//  Created by jinweizhao on 2019/5/14.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class FBMeViewController: BaseViewController {

    typealias RowModel = [String: String]
    
    fileprivate var user: FBMeUser {
        get {
            return FBMeUser(name: "baxma", education: "cmu")
        }
    }
    
    fileprivate var tableViewDataSource: [[String: Any]]{
        get {
            return TableKeys.populate(withUser: user)
        }
    }
    
    private let tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.register(FBMeCell.self, forCellReuseIdentifier: FBMeCell.identifier)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "facebook"
        
        navigationController?.navigationBar.barTintColor = Specs.color.tint
        
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[tableView]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["tableView":tableView]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[tableView]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["tableView":tableView]))
        
        
        
    }
    
    fileprivate func rows(at section: Int) -> [Any] {
        return tableViewDataSource[section][TableKeys.Rows] as! [Any]
    }
    
    fileprivate func title(at section: Int) -> String? {
        return tableViewDataSource[section][TableKeys.Section] as? String
    }
    
    fileprivate func rowModel(at indexPath: IndexPath) -> RowModel {
        return rows(at: indexPath.section)[indexPath.row] as! RowModel
    }

}



extension FBMeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewDataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows(at: section).count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return title(at: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FBMeCell.identifier, for: indexPath)
        
        return cell
    }
    
}


extension FBMeViewController: UITableViewDelegate {
    
    
    
}
