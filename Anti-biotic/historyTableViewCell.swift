//
//  historyTableViewCell.swift
//  Anti-biotic
//
//  Created by Chaicharn Vijarnsatit on 11/1/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class historyTableViewCell: UITableViewCell {

    @IBOutlet weak var des: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var imgView: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
