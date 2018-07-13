//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Arya Gharib on 7/10/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit

class PostHeaderCell: UITableViewCell {
    static let height: CGFloat = 54
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        print("Options button tapped")
    }
    
}
