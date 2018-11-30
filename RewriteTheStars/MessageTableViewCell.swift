//
//  MessageTableViewCell.swift
//  LoveChat
//
//  Created by SHIH-YING PAN on 2018/11/29.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
