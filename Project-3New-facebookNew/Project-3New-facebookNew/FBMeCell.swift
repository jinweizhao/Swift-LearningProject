//
//  FBMeCell.swift
//  Project-3New-facebookNew
//
//  Created by jinweizhao on 2019/5/14.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class FBMeCell: UITableViewCell {

    static let identifier = "fbmecell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = Specs.color.white
        
        textLabel?.textColor = Specs.color.black
        
        textLabel?.font = Specs.font.large
        
        detailTextLabel?.font = Specs.font.small
        detailTextLabel?.textColor = Specs.color.gray
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
