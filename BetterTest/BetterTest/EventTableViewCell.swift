//
//  EventTableViewCell.swift
//  BetterTest
//
//  Created by Matthew Jagiela on 11/3/18.
//  Copyright © 2018 Austin Scudder. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet var eventImage: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var desc: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
