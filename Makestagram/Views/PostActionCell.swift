//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Arya Gharib on 7/10/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var datePosted: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func likeButtonTapped(_ sender: UIButton) {
        print("Like button tapped")
    }
}
