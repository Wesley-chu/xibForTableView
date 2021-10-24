//
//  testTableViewCell.swift
//  xibForTableView
//
//  Created by 朱偉綸 on 2021/9/23.
//

import UIKit

class testTableViewCell: UITableViewCell {

    @IBOutlet weak var testLb1: UILabel!
    @IBOutlet weak var testLb2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
