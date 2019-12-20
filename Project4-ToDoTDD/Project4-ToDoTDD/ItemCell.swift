//
//  ItemCell.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/10/10.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    lazy var dateFormate: DateFormatter = {
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "MM/dd/yyyy"
        return dateFormate
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configCell(with item: ToDoItem, isChecked: Bool = false) {
        
        if isChecked {
            let attributedString = NSAttributedString(string: item.title, attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
            
            titleLabel.attributedText = attributedString
            timeLabel.text = nil
            locationLabel.text = nil
        } else {
            titleLabel.text = item.title
            
            if let timestamp = item.timestamp {
                let date = Date(timeIntervalSince1970: timestamp)
                timeLabel.text = dateFormate.string(from: date)
            }
            
            if let location = item.location {
                locationLabel.text = location.name
            }
        }
        
    }

}
