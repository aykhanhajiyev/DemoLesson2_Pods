//
//  MyTableViewCell.swift
//  PodDemoLesson2
//
//  Created by Aykhan Hajiyev on 05.03.23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(_ title: String) {
        titleLabel.text = title
    }

}
