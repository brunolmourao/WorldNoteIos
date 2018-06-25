//
//  ViewControllerTableViewCell.swift
//  
//
//  Created by aluno on 25/06/2018.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var nota: UILabel!
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var local: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
