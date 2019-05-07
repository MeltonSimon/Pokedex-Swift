//
//  PokemonTableViewCell.swift
//  Pok3mon
//
//  Created by Melton Distor on 23/04/2019.
//  Copyright © 2019 Melton Distor. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(text: String) {
        infoLabel.text = text
    }
    
}
