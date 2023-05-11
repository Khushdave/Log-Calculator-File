//
//  HistoryTableViewCell.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 01/04/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblBase: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
