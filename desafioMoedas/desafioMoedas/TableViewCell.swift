//
//  TableViewCell.swift
//  desafioMoedas
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    /*
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    */
    
    
    @IBOutlet weak var nameMoeda: UILabel!
    // @IBOutlet weak var rankMoeda: UILabel!
    
    @IBOutlet weak var rankMoeda: UILabel!
}
