//
//  FBMeUser.swift
//  Project-3New-facebookNew
//
//  Created by jinweizhao on 2019/5/14.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit

class FBMeUser {
    var name: String
    var avatarName: String
    var education: String
    
    init(name: String, avatarName: String = "bayMax", education: String) {
        self.name = name
        self.avatarName = avatarName
        self.education = education
    }
}

